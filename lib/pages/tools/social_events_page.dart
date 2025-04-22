import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class SocialEventsPage extends StatefulWidget {
  const SocialEventsPage({super.key});

  @override
  State<SocialEventsPage> createState() => _SocialEventsPageState();
}

class _SocialEventsPageState extends State<SocialEventsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = ['推荐', '附近', '周末', '热门'];
  bool _isLoading = false;
  List<Map<String, dynamic>> _events = [];
  final List<String> _selectedTags = [];
  
  final List<String> _allTags = [
    '美食', '音乐', '户外', '运动', '展览',
    '交友', '公益', '文化', '派对', '电影',
  ];

  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  
  DateTime _selectedDate = DateTime.now().add(const Duration(days: 1));
  TimeOfDay _selectedTime = TimeOfDay.now();
  
  // 示例数据
  final List<Map<String, dynamic>> _upcomingEvents = [
    {
      'title': '线下读书会',
      'date': DateTime.now().add(const Duration(days: 2)),
      'time': const TimeOfDay(hour: 19, minute: 0),
      'location': '城市图书馆',
      'attendees': 12,
      'creator': '文学爱好者俱乐部',
      'description': '我们将讨论本月推荐书籍《人类简史》，欢迎所有对历史和人类发展感兴趣的朋友参加，不限年龄和背景。',
      'imageUrl': 'https://picsum.photos/id/24/200',
    },
    {
      'title': '城市徒步探索',
      'date': DateTime.now().add(const Duration(days: 3)),
      'time': const TimeOfDay(hour: 9, minute: 30),
      'location': '中央公园入口',
      'attendees': 8,
      'creator': '城市探索者',
      'description': '一起探索城市隐藏的美景和历史景点，全程约5公里，途中将有摄影和历史分享环节。',
      'imageUrl': 'https://picsum.photos/id/30/200',
    },
    {
      'title': '咖啡品鉴会',
      'date': DateTime.now().add(const Duration(days: 5)),
      'time': const TimeOfDay(hour: 14, minute: 0),
      'location': 'Brew咖啡馆',
      'attendees': 15,
      'creator': '咖啡爱好者',
      'description': '品尝来自世界各地的精选咖啡豆，学习冲泡技巧，还有专业咖啡师分享咖啡知识。',
      'imageUrl': 'https://picsum.photos/id/42/200',
    },
    {
      'title': '桌游之夜',
      'date': DateTime.now().add(const Duration(days: 7)),
      'time': const TimeOfDay(hour: 18, minute: 30),
      'location': '开心桌游屋',
      'attendees': 20,
      'creator': '桌游俱乐部',
      'description': '提供多种新奇有趣的桌游，适合新手和老手，包括策略类、合作类和派对类游戏。',
      'imageUrl': 'https://picsum.photos/id/157/200',
    },
  ];
  
  final List<Map<String, dynamic>> _myEvents = [
    {
      'title': '摄影分享会',
      'date': DateTime.now().add(const Duration(days: 10)),
      'time': const TimeOfDay(hour: 16, minute: 0),
      'location': '创意空间',
      'attendees': 8,
      'creator': '你',
      'description': '分享摄影技巧和作品，交流拍摄心得，适合各个水平的摄影爱好者。',
      'imageUrl': 'https://picsum.photos/id/250/200',
    },
    {
      'title': '编程学习小组',
      'date': DateTime.now().add(const Duration(days: 14)),
      'time': const TimeOfDay(hour: 20, minute: 0),
      'location': '线上Zoom会议',
      'attendees': 6,
      'creator': '你',
      'description': '每周编程学习和项目讨论，互相帮助解决问题，分享学习资源。',
      'imageUrl': 'https://picsum.photos/id/180/200',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _loadEvents();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _eventNameController.dispose();
    _locationController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _loadEvents() async {
    setState(() {
      _isLoading = true;
    });
    
    // 模拟网络请求延迟
    await Future.delayed(const Duration(seconds: 1));
    
    // 模拟活动数据
    final random = Random();
    final List<Map<String, dynamic>> events = [];
    
    final List<String> eventNames = [
      '城市徒步探索之旅',
      '周末音乐分享会',
      '美食品鉴派对',
      '户外瑜伽与冥想',
      '城市摄影俱乐部聚会',
      '创意手工艺工作坊',
      '电影交流夜',
      '读书会：经典与现代',
      '棋牌游戏之夜',
      '科技创新沙龙',
      '城市骑行探险',
      '烹饪课：世界美食',
    ];
    
    final List<String> venues = [
      '文化广场', '中央公园', '创意园区', '社区中心',
      '咖啡馆', '艺术空间', '图书馆', '户外草坪',
      '共享空间', '城市天台', '社交俱乐部'
    ];
    
    final List<String> organizers = [
      '城市探索者', '音乐爱好者联盟', '美食俱乐部',
      '健康生活协会', '摄影师社区', '创意工作室',
      '读书会', '游戏玩家联盟', '科技创新圈'
    ];
    
    // 生成15-20个随机活动
    final eventCount = 15 + random.nextInt(6);
    for (int i = 0; i < eventCount; i++) {
      // 随机生成日期（未来30天内）
      final eventDate = DateTime.now().add(Duration(days: random.nextInt(30)));
      
      // 随机选择1-3个标签
      final tagCount = 1 + random.nextInt(3);
      final List<String> eventTags = [];
      for (int j = 0; j < tagCount; j++) {
        final tag = _allTags[random.nextInt(_allTags.length)];
        if (!eventTags.contains(tag)) {
          eventTags.add(tag);
        }
      }
      
      // 生成随机参与人数
      final participantCount = 5 + random.nextInt(50);
      
      // 随机选择活动地点
      final venue = venues[random.nextInt(venues.length)];
      
      // 随机选择组织者
      final organizer = organizers[random.nextInt(organizers.length)];
      
      // 创建活动对象
      events.add({
        'id': 'event_${i + 1}',
        'name': eventNames[random.nextInt(eventNames.length)],
        'date': eventDate,
        'formattedDate': DateFormat('MM月dd日 HH:mm').format(eventDate),
        'weekday': _getWeekdayString(eventDate.weekday),
        'venue': venue,
        'distance': (0.5 + random.nextDouble() * 9.5).toStringAsFixed(1),
        'tags': eventTags,
        'participants': participantCount,
        'maxParticipants': participantCount + 10 + random.nextInt(40),
        'organizer': organizer,
        'isPopular': random.nextDouble() > 0.7,
      });
    }
    
    // 按日期排序
    events.sort((a, b) => (a['date'] as DateTime).compareTo(b['date'] as DateTime));
    
    setState(() {
      _events = events;
      _isLoading = false;
    });
  }

  String _getWeekdayString(int weekday) {
    switch (weekday) {
      case 1: return '周一';
      case 2: return '周二';
      case 3: return '周三';
      case 4: return '周四';
      case 5: return '周五';
      case 6: return '周六';
      case 7: return '周日';
      default: return '';
    }
  }

  List<Map<String, dynamic>> _getFilteredEvents() {
    if (_selectedTags.isEmpty) {
      return _events;
    }
    
    return _events.where((event) {
      final eventTags = event['tags'] as List<String>;
      for (final tag in _selectedTags) {
        if (eventTags.contains(tag)) {
          return true;
        }
      }
      return false;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('社交活动日历'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Theme.of(context).primaryColor,
          indicatorWeight: 3,
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '活动类型',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildTagSelector(),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildUpcomingEventsTab(),
                      _buildMyEventsTab(),
                    ],
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreateEventDialog,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTagSelector() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _allTags.map((tag) {
        final isSelected = _selectedTags.contains(tag);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                _selectedTags.remove(tag);
              } else {
                _selectedTags.add(tag);
              }
            });
          },
          child: Chip(
            label: Text(tag),
            backgroundColor: isSelected
                ? Theme.of(context).primaryColor.withOpacity(0.2)
                : Colors.grey[200],
            side: isSelected
                ? BorderSide(color: Theme.of(context).primaryColor)
                : BorderSide.none,
            labelStyle: TextStyle(
              color: isSelected ? Theme.of(context).primaryColor : Colors.black87,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildUpcomingEventsTab() {
    return _upcomingEvents.isEmpty
        ? _buildEmptyState('还没有即将到来的活动', '查看更多活动或创建自己的活动')
        : _buildEventsList(_upcomingEvents);
  }
  
  Widget _buildMyEventsTab() {
    return _myEvents.isEmpty
        ? _buildEmptyState('您还没有创建活动', '点击右下角的加号按钮创建新活动')
        : _buildEventsList(_myEvents);
  }
  
  Widget _buildEmptyState(String title, String subtitle) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_busy, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildEventsList(List<Map<String, dynamic>> events) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return _buildEventCard(event);
      },
    );
  }
  
  Widget _buildEventCard(Map<String, dynamic> event) {
    final date = event['date'] as DateTime;
    final time = event['time'] as TimeOfDay;
    
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 活动图片
          if (event['imageUrl'] != null)
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(event['imageUrl']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 标题和时间
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event['title'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                size: 16,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${date.month}月${date.day}日 ${time.hour}:${time.minute.toString().padLeft(2, '0')}',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 16,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                event['location'],
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        '${event['attendees']}人参加',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                // 描述
                Text(
                  event['description'],
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.4,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                
                const SizedBox(height: 16),
                
                // 底部操作栏
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.person,
                        size: 16,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '由 ${event['creator']} 创建',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('已加入活动')),
                        );
                      },
                      icon: const Icon(Icons.group_add, size: 18),
                      label: const Text('加入'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Future<void> _showCreateEventDialog() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('创建新活动'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _eventNameController,
                  decoration: const InputDecoration(
                    labelText: '活动名称',
                    prefixIcon: Icon(Icons.event),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                    labelText: '地点',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _descriptionController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: '活动描述',
                    alignLabelWithHint: true,
                    prefixIcon: Icon(Icons.description),
                  ),
                ),
                const SizedBox(height: 16),
                ListTile(
                  leading: const Icon(Icons.calendar_today),
                  title: const Text('日期'),
                  subtitle: Text(
                    '${_selectedDate.year}年${_selectedDate.month}月${_selectedDate.day}日',
                  ),
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _selectedDate = pickedDate;
                      });
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.access_time),
                  title: const Text('时间'),
                  subtitle: Text(
                    '${_selectedTime.hour}:${_selectedTime.minute.toString().padLeft(2, '0')}',
                  ),
                  onTap: () async {
                    final pickedTime = await showTimePicker(
                      context: context,
                      initialTime: _selectedTime,
                    );
                    if (pickedTime != null) {
                      setState(() {
                        _selectedTime = pickedTime;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () {
                // 创建新活动
                if (_eventNameController.text.isNotEmpty && 
                    _locationController.text.isNotEmpty) {
                  setState(() {
                    _myEvents.insert(0, {
                      'title': _eventNameController.text,
                      'date': _selectedDate,
                      'time': _selectedTime,
                      'location': _locationController.text,
                      'attendees': 1,
                      'creator': '你',
                      'description': _descriptionController.text,
                      'imageUrl': 'https://picsum.photos/id/${100 + _myEvents.length}/200',
                    });
                  });
                  
                  // 清空输入
                  _eventNameController.clear();
                  _locationController.clear();
                  _descriptionController.clear();
                  
                  Navigator.pop(context);
                  
                  // 切换到我的活动标签
                  _tabController.animateTo(1);
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('活动创建成功')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('请填写活动名称和地点')),
                  );
                }
              },
              child: const Text('创建'),
            ),
          ],
        );
      },
    );
  }
} 