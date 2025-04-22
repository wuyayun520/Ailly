import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../home_tab_page.dart'; // 导入CharacterModel
import '../chat_page.dart'; // 导入ChatPage

class InterestMatcherPage extends StatefulWidget {
  const InterestMatcherPage({super.key});

  @override
  State<InterestMatcherPage> createState() => _InterestMatcherPageState();
}

class _InterestMatcherPageState extends State<InterestMatcherPage> {
  final List<String> _selectedInterests = [];
  final List<String> _availableInterests = [
    'Movies', 'Music', 'Food', 'Travel', 'Sports', 'Reading', 'Photography',
    'Gaming', 'Art', 'Writing', 'Dancing', 'Cooking', 'Programming', 'Crafts',
    'Yoga', 'Fitness', 'Hiking', 'Diving', 'Skiing', 'Surfing', 'Cycling',
  ];
  
  List<Map<String, dynamic>> _matchedPeople = [];
  List<Map<String, dynamic>> _allUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Load json data
      final jsonString = await rootBundle.loadString('assets/json/modern.json');
      final jsonData = json.decode(jsonString);
      
      // Extract user data
      final List<dynamic> usersData = jsonData['alldata'];
      
      // Convert user data to our format with interests
      _allUsers = usersData.map((user) {
        // Generate random interests for each user
        final randomInterests = _generateRandomInterests();
        
        return {
          'id': user['userId'],
          'name': user['name'],
          'avatar': user['avatar'],
          'interests': randomInterests,
          'matchRate': 0,
        };
      }).toList();
      
      // Initialize matched people with first 3 users
      _updateMatchedPeople();
    } catch (e) {
      print('Error loading user data: $e');
      // Fallback to default data
      _allUsers = [
        {
          'id': '1',
          'name': 'Luna',
          'avatar': 'assets/images/userInfo/1/user_1.jpg',
          'interests': ['Movies', 'Music', 'Food'],
          'matchRate': 85,
        },
        {
          'id': '2',
          'name': 'Zara',
          'avatar': 'assets/images/userInfo/2/user_2.jpg',
          'interests': ['Travel', 'Photography', 'Food'],
          'matchRate': 70,
        },
        {
          'id': '3',
          'name': 'Iris',
          'avatar': 'assets/images/userInfo/3/user_3.jpg',
          'interests': ['Sports', 'Fitness', 'Travel'],
          'matchRate': 65,
        },
      ];
      _updateMatchedPeople();
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
  
  List<String> _generateRandomInterests() {
    final random = Random();
    // Get 3-5 random interests
    final interestsCount = random.nextInt(3) + 3; // 3 to 5 interests
    final interestsList = List<String>.from(_availableInterests);
    interestsList.shuffle();
    return interestsList.take(interestsCount).toList();
  }
  
  void _updateMatchedPeople() {
    if (_selectedInterests.isEmpty) {
      // If no interests selected, just show first few users
      _matchedPeople = _allUsers.take(3).toList();
      return;
    }
    
    // Calculate match rate for each user based on common interests
    final List<Map<String, dynamic>> matches = [];
    
    for (final user in _allUsers) {
      final userInterests = List<String>.from(user['interests']);
      int commonCount = 0;
      
      for (final interest in _selectedInterests) {
        if (userInterests.contains(interest)) {
          commonCount++;
        }
      }
      
      if (commonCount > 0) {
        // Calculate match rate based on commonalities
        final matchRate = (commonCount / _selectedInterests.length * 100).round();
        
        matches.add({
          'id': user['id'],
          'name': user['name'],
          'avatar': user['avatar'],
          'interests': user['interests'],
          'matchRate': matchRate,
        });
      }
    }
    
    // Sort by match rate
    matches.sort((a, b) => b['matchRate'].compareTo(a['matchRate']));
    
    // Take top 10 matches
    _matchedPeople = matches.take(10).toList();
    
    // If no matches found, show random users
    if (_matchedPeople.isEmpty) {
      _matchedPeople = _allUsers.take(3).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interest Matcher'),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Instruction text
                  const Text(
                    'Select your interests and we will help you find like-minded friends',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Selected interests
                  if (_selectedInterests.isNotEmpty) ...[
                    const Text(
                      'Selected Interests',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: _selectedInterests.map((interest) {
                        return Chip(
                          label: Text(interest),
                          backgroundColor: Colors.blue.shade100,
                          deleteIcon: const Icon(Icons.close, size: 18),
                          onDeleted: () {
                            setState(() {
                              _selectedInterests.remove(interest);
                              _updateMatchedPeople();
                            });
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 24),
                  ],
                  
                  // Available interests
                  const Text(
                    'Select Interests',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _availableInterests.map((interest) {
                      final bool isSelected = _selectedInterests.contains(interest);
                      return FilterChip(
                        label: Text(interest),
                        selected: isSelected,
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              _selectedInterests.add(interest);
                            } else {
                              _selectedInterests.remove(interest);
                            }
                            _updateMatchedPeople();
                          });
                        },
                      );
                    }).toList(),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Match results
                  if (_selectedInterests.isNotEmpty) ...[
                    const Text(
                      'Match Results',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ..._matchedPeople.map((person) => _buildPersonCard(person)),
                  ],
                ],
              ),
            ),
    );
  }
  
  Widget _buildPersonCard(Map<String, dynamic> person) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(person['avatar']),
              onBackgroundImageError: (exception, stackTrace) => 
                  const Icon(Icons.person),
            ),
            const SizedBox(width: 16),
            
            // Information
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        person['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10, 
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${person['matchRate']}%',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Common Interests',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 8,
                    children: (person['interests'] as List<String>)
                        .map((interest) => Chip(
                              label: Text(
                                interest,
                                style: const TextStyle(fontSize: 12),
                              ),
                              padding: const EdgeInsets.all(4),
                              backgroundColor: _selectedInterests.contains(interest)
                                ? Colors.blue.shade100
                                : Colors.grey.shade200,
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // 创建CharacterModel对象
                      final character = CharacterModel(
                        userId: person['id'],
                        name: person['name'],
                        avatar: person['avatar'],
                        creator: 'Interest Matcher', // 设置来源
                        intro: 'A person with interests: ${(person['interests'] as List<String>).join(", ")}',
                        opening: 'Hello! I see we share some common interests. Would you like to chat about ${_getRandomCommonInterest(person['interests'])}?',
                        photochat: [], // 空列表，不需要图片聊天功能
                      );
                      
                      // 跳转到聊天页面
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(character: character),
                        ),
                      );
                    },
                    child: const Text('Start Chat'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 随机获取一个共同兴趣
  String _getRandomCommonInterest(List<dynamic> personInterests) {
    final commonInterests = <String>[];
    
    for (final interest in _selectedInterests) {
      if (personInterests.contains(interest)) {
        commonInterests.add(interest);
      }
    }
    
    if (commonInterests.isEmpty) {
      // 如果没有共同兴趣，返回此人的第一个兴趣
      return personInterests.first as String;
    }
    
    // 随机返回一个共同兴趣
    return commonInterests[Random().nextInt(commonInterests.length)];
  }
} 