import 'package:flutter/material.dart';
import 'tools/interest_matcher_page.dart';
import 'tools/topic_generator_page.dart';
import 'tools/calendar_tool_page.dart';
import 'tools/personality_test_page.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: _buildToolsGrid(context),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        letterSpacing: 0.5,
      ),
    );
  }

  Widget _buildToolsGrid(BuildContext context) {
    final List<Map<String, dynamic>> tools = [
      {
        'title': 'Interest Matcher',
        'description': 'Find like-minded people based on common interests',
        'icon': Icons.people_alt_rounded,
        'color': Colors.blue,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const InterestMatcherPage()),
          );
        },
      },
      {
        'title': 'Topic Generator',
        'description': 'Never worry about awkward chats, endless conversation topics',
        'icon': Icons.chat_rounded,
        'color': Colors.orange,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TopicGeneratorPage()),
          );
        },
      },
      {
        'title': 'Calendar Tool',
        'description': 'Manage your daily tasks and schedules',
        'icon': Icons.calendar_today_rounded,
        'color': Colors.purple,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CalendarToolPage()),
          );
        },
      },
      {
        'title': 'Personality Test',
        'description': 'Discover your personality type and social strengths',
        'icon': Icons.psychology_rounded,
        'color': Colors.red,
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PersonalityTestPage()),
          );
        },
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.95,
        crossAxisSpacing: 16,
        mainAxisSpacing: 18,
      ),
      itemCount: tools.length,
      itemBuilder: (context, index) {
        final tool = tools[index];
        final Color toolColor = tool['color'] as Color;
        
        return Material(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          shadowColor: toolColor.withOpacity(0.3),
          child: InkWell(
            onTap: tool['onTap'] as Function(),
            splashColor: toolColor.withOpacity(0.2),
            highlightColor: toolColor.withOpacity(0.1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.5),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: toolColor.withOpacity(0.06),
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          toolColor.withOpacity(0.15),
                          toolColor.withOpacity(0.25),
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      tool['icon'] as IconData,
                      color: toolColor,
                      size: 36,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tool['title'] as String,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    tool['description'] as String,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
} 