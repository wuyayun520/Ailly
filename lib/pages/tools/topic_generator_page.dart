import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class TopicGeneratorPage extends StatefulWidget {
  const TopicGeneratorPage({super.key});

  @override
  State<TopicGeneratorPage> createState() => _TopicGeneratorPageState();
}

class _TopicGeneratorPageState extends State<TopicGeneratorPage> {
  final List<String> _topics = [];
  final List<String> _categories = ['Daily Topics', 'Deep Topics', 'Humorous Topics', 'Dating Topics', 'Ice Breakers'];
  String _selectedCategory = 'Daily Topics';
  bool _isGenerating = false;

  final Map<String, List<String>> _topicBank = {
    'Daily Topics': [
      'What good movies or TV shows have you watched recently?',
      'If you could travel anywhere, where would you choose to go?',
      'Do you have any special hobbies or interests?',
      'What\'s your favorite dish or meal?',
      'What do you usually do on weekends?',
      'Do you have any pets? Any funny stories to share?',
      'What type of music do you listen to?',
      'What book have you read recently?',
      'How do you usually relax and unwind?',
      'What\'s your favorite season, and why?',
    ],
    'Deep Topics': [
      'What do you think is most important in life?',
      'Do you have any special dreams or goals?',
      'How do you define success?',
      'What\'s the most meaningful experience you\'ve had?',
      'Has anything ever changed your perspective on life?',
      'If you could change one thing, what would it be?',
      'Who do you admire most and why?',
      'What values would you like to pass on to the next generation?',
      'What do you think true happiness is?',
      'How do you usually deal with setbacks?',
    ],
    'Humorous Topics': [
      'What\'s the most embarrassing thing that\'s happened to you?',
      'Do you have any strange or unusual skills?',
      'If you were an animal, what do you think you would be?',
      'Have you experienced any funny misunderstandings?',
      'What\'s the craziest thing you\'ve ever done?',
      'If your life was a movie, what would its title be?',
      'What\'s the funniest joke you\'ve heard?',
      'Do you have any weird but useful life hacks?',
      'If you had a superpower, what would you want it to be?',
      'What\'s the most ridiculous dream you\'ve had recently?',
    ],
    'Dating Topics': [
      'What\'s your idea of a perfect date?',
      'What do you think is most important in a good relationship?',
      'What\'s your favorite romantic movie?',
      'Do you have any special dating memories?',
      'What do you think is most important when two people are together?',
      'Do you think people should have their own space in a relationship?',
      'Do you believe in love at first sight?',
      'What small gestures touch your heart?',
      'What kind of gifts do you like to receive?',
      'What common interests do you think couples should share?',
    ],
    'Ice Breakers': [
      'If you won the lottery, what would be the first thing you\'d do?',
      'What was your childhood dream?',
      'What\'s your favorite holiday?',
      'What\'s made you happy recently?',
      'Do you have any interesting collections?',
      'What\'s your favorite place you\'ve visited?',
      'Have you learned any new skills recently?',
      'Do you have any special family traditions?',
      'If you could be any celebrity for a day, who would you choose?',
      'What small joys do you appreciate in daily life?',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topic Generator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category selection
            const Text(
              'Select Topic Type',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final category = _categories[index];
                  final isSelected = category == _selectedCategory;
                  
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(category),
                      selected: isSelected,
                      onSelected: (selected) {
                        if (selected) {
                          setState(() {
                            _selectedCategory = category;
                          });
                        }
                      },
                    ),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Generate button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isGenerating ? null : _generateTopic,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Colors.orange,
                ),
                child: _isGenerating
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        'Generate Random Topic',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Topics list
            Expanded(
              child: _topics.isEmpty
                  ? const Center(
                      child: Text(
                        'Click the button to generate a topic',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: _topics.length,
                      itemBuilder: (context, index) {
                        return _buildTopicCard(_topics[index], index);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildTopicCard(String topic, int index) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.orange,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Topic ${index + 1}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        topic,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: topic));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Copied to clipboard')),
                    );
                  },
                  icon: const Icon(Icons.copy, size: 18),
                  label: const Text('Copy'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Future<void> _generateTopic() async {
    setState(() {
      _isGenerating = true;
    });
    
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));
    
    final topics = _topicBank[_selectedCategory] ?? [];
    
    if (topics.isNotEmpty) {
      final random = Random();
      final randomIndex = random.nextInt(topics.length);
      
      setState(() {
        _topics.insert(0, topics[randomIndex]);
        _isGenerating = false;
      });
    } else {
      setState(() {
        _isGenerating = false;
      });
    }
  }
} 