import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarToolPage extends StatefulWidget {
  const CalendarToolPage({super.key});

  @override
  State<CalendarToolPage> createState() => _CalendarToolPageState();
}

class _CalendarToolPageState extends State<CalendarToolPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Task>> _tasks = {};
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    
    // Add sample tasks
    _addSampleTasks();
  }
  
  @override
  void dispose() {
    _taskController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
  
  void _addSampleTasks() {
    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);
    
    final tomorrow = today.add(const Duration(days: 1));
    final tomorrowDate = DateTime(tomorrow.year, tomorrow.month, tomorrow.day);
    
    final nextWeek = today.add(const Duration(days: 7));
    final nextWeekDate = DateTime(nextWeek.year, nextWeek.month, nextWeek.day);
    
    _tasks = {
      todayDate: [
        Task(
          id: '1',
          title: 'Team Meeting',
          description: 'Discuss project progress and next steps',
          time: '10:00',
          isCompleted: false,
          priority: TaskPriority.high,
        ),
        Task(
          id: '2',
          title: 'Workout',
          description: '30 min cardio + strength training',
          time: '18:30',
          isCompleted: true,
          priority: TaskPriority.medium,
        ),
      ],
      tomorrowDate: [
        Task(
          id: '3',
          title: 'Client Call',
          description: 'Discuss new requirements and feedback',
          time: '14:00',
          isCompleted: false,
          priority: TaskPriority.high,
        ),
      ],
      nextWeekDate: [
        Task(
          id: '4',
          title: 'Quarterly Report',
          description: 'Prepare Q3 performance data and analysis',
          time: 'All day',
          isCompleted: false,
          priority: TaskPriority.medium,
        ),
        Task(
          id: '5',
          title: 'Team Building',
          description: 'Outdoor adventure training',
          time: '13:00',
          isCompleted: false,
          priority: TaskPriority.low,
        ),
      ],
    };
  }

  List<Task> _getTasksForDay(DateTime day) {
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return _tasks[normalizedDay] ?? [];
  }
  
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }
  
  void _addTask() {
    if (_taskController.text.isEmpty || _selectedDay == null) return;
    
    final task = Task(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: _taskController.text,
      description: _descriptionController.text,
      time: TimeOfDay.now().format(context),
      isCompleted: false,
      priority: TaskPriority.medium,
    );
    
    setState(() {
      final normalizedDay = DateTime(_selectedDay!.year, _selectedDay!.month, _selectedDay!.day);
      if (_tasks[normalizedDay] != null) {
        _tasks[normalizedDay]!.add(task);
      } else {
        _tasks[normalizedDay] = [task];
      }
      
      _taskController.clear();
      _descriptionController.clear();
      Navigator.pop(context);
    });
  }
  
  void _toggleTaskCompletion(Task task) {
    setState(() {
      final normalizedDay = DateTime(_selectedDay!.year, _selectedDay!.month, _selectedDay!.day);
      final taskIndex = _tasks[normalizedDay]!.indexWhere((t) => t.id == task.id);
      if (taskIndex != -1) {
        final updatedTask = _tasks[normalizedDay]![taskIndex].copyWith(
          isCompleted: !_tasks[normalizedDay]![taskIndex].isCompleted,
        );
        _tasks[normalizedDay]![taskIndex] = updatedTask;
      }
    });
  }
  
  void _deleteTask(Task task) {
    setState(() {
      final normalizedDay = DateTime(_selectedDay!.year, _selectedDay!.month, _selectedDay!.day);
      _tasks[normalizedDay]!.removeWhere((t) => t.id == task.id);
      if (_tasks[normalizedDay]!.isEmpty) {
        _tasks.remove(normalizedDay);
      }
    });
  }
  
  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Task'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _taskController,
                decoration: const InputDecoration(
                  labelText: 'Task Name',
                  hintText: 'Enter task name',
                ),
                autofocus: true,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter task description (optional)',
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: _addTask,
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.today),
            onPressed: () {
              setState(() {
                _focusedDay = DateTime.now();
                _selectedDay = _focusedDay;
              });
            },
            tooltip: 'Today',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTaskDialog,
        child: const Icon(Icons.add),
        tooltip: 'Add Task',
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            eventLoader: _getTasksForDay,
            onDaySelected: _onDaySelected,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            calendarStyle: const CalendarStyle(
              markersMaxCount: 3,
              markerDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: const HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
            ),
          ),
          const Divider(),
          Expanded(
            child: _buildTaskList(),
          ),
        ],
      ),
    );
  }
  
  Widget _buildTaskList() {
    final tasksForSelectedDay = _getTasksForDay(_selectedDay!);
    
    if (tasksForSelectedDay.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.event_available,
              size: 80,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              'No tasks for ${DateFormat('MMM d, yyyy').format(_selectedDay!)}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _showAddTaskDialog,
              icon: const Icon(Icons.add),
              label: const Text('Add New Task'),
            ),
          ],
        ),
      );
    }
    
    // Sort tasks by priority and completion status
    final sortedTasks = List<Task>.from(tasksForSelectedDay);
    sortedTasks.sort((a, b) {
      if (a.isCompleted && !b.isCompleted) return 1;
      if (!a.isCompleted && b.isCompleted) return -1;
      return b.priority.index.compareTo(a.priority.index);
    });
    
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: sortedTasks.length,
      itemBuilder: (context, index) {
        final task = sortedTasks[index];
        return _buildTaskCard(task);
      },
    );
  }
  
  Widget _buildTaskCard(Task task) {
    final priorityColor = task.priority == TaskPriority.high
        ? Colors.red
        : task.priority == TaskPriority.medium
            ? Colors.orange
            : Colors.green;
            
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: priorityColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onLongPress: () => _deleteTask(task),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Task completion checkbox
              Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  value: task.isCompleted,
                  onChanged: (_) => _toggleTaskCompletion(task),
                  shape: const CircleBorder(),
                  activeColor: Colors.green,
                ),
              ),
              const SizedBox(width: 8),
              // Task content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: priorityColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            task.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: task.isCompleted
                                  ? TextDecoration.lineThrough
                                  : null,
                              color: task.isCompleted
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (task.description.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(
                        task.description,
                        style: TextStyle(
                          color: Colors.grey[600],
                          decoration: task.isCompleted
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                    ],
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          task.time,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Delete button
              IconButton(
                icon: const Icon(Icons.delete_outline, color: Colors.grey),
                onPressed: () => _deleteTask(task),
                tooltip: 'Delete Task',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum TaskPriority {
  low,
  medium,
  high,
}

class Task {
  final String id;
  final String title;
  final String description;
  final String time;
  final bool isCompleted;
  final TaskPriority priority;
  
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.time,
    required this.isCompleted,
    required this.priority,
  });
  
  Task copyWith({
    String? id,
    String? title,
    String? description,
    String? time,
    bool? isCompleted,
    TaskPriority? priority,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      time: time ?? this.time,
      isCompleted: isCompleted ?? this.isCompleted,
      priority: priority ?? this.priority,
    );
  }
} 