import 'package:flutter/material.dart';

class PersonalityTestPage extends StatefulWidget {
  const PersonalityTestPage({super.key});

  @override
  State<PersonalityTestPage> createState() => _PersonalityTestPageState();
}

class _PersonalityTestPageState extends State<PersonalityTestPage> {
  int _currentQuestionIndex = 0;
  final Map<int, int> _answers = {};
  bool _showResults = false;
  String _personalityType = '';
  String _personalityDescription = '';
  List<String> _personalityTraits = [];
  
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'How do you typically behave in social gatherings?',
      'options': [
        'I become energized and talkative',
        'I prefer to observe and listen',
        'I enjoy meaningful one-on-one conversations',
        'I get tired quickly and prefer to leave early'
      ]
    },
    {
      'question': 'How do you approach decision making?',
      'options': [
        'I trust my gut feelings and intuition',
        'I analyze all available facts logically', 
        'I consider how it will affect others',
        'I prefer to follow established procedures'
      ]
    },
    {
      'question': 'How do you react to unexpected changes?',
      'options': [
        'I see them as exciting opportunities',
        'I feel stressed and prefer stability',
        'I adapt if given time to adjust',
        'I analyze how they impact my plans'
      ]
    },
    {
      'question': 'What describes your ideal weekend?',
      'options': [
        'Social activities with lots of friends',
        'Quiet time alone with a book or hobby',
        'A mix of social time and alone time',
        'Structured activities with a clear purpose'
      ]
    },
    {
      'question': 'How do you communicate your ideas?',
      'options': [
        'Enthusiastically with broad concepts',
        'Precisely with detailed explanations',
        'With analogies and metaphors',
        'Concisely focusing on practical implications'
      ]
    },
    {
      'question': 'How do you react when someone disagrees with you?',
      'options': [
        'Enjoy the debate and challenge',
        'Listen to understand their perspective',
        'Feel personally affected or hurt',
        'Evaluate if their view has logical merit'
      ]
    },
    {
      'question': 'What is most important in your friendships?',
      'options': [
        'Having fun and new experiences',
        'Deep meaningful conversations',
        'Loyalty and emotional support',
        'Reliability and shared values'
      ]
    },
    {
      'question': 'How do you approach your work or studies?',
      'options': [
        'I focus on innovation and possibilities',
        'I prioritize efficiency and organization',
        'I value harmony and collaboration',
        'I aim for mastery and thoroughness'
      ]
    },
  ];
  
  final List<Map<String, dynamic>> _personalityTypes = [
    {
      'type': 'Social Butterfly',
      'description': 'You are outgoing, enthusiastic, and energized by social interactions. You connect easily with others and enjoy building a wide network of friends and acquaintances.',
      'traits': ['Expressive', 'Energetic', 'People-oriented', 'Spontaneous', 'Engaging'],
    },
    {
      'type': 'Thoughtful Analyzer',
      'description': 'You are analytical, logical, and prefer to think deeply before acting. You value knowledge, seek to understand systems, and excel at solving complex problems.',
      'traits': ['Logical', 'Analytical', 'Detail-oriented', 'Objective', 'Systematic'],
    },
    {
      'type': 'Empathetic Connector',
      'description': 'You are warm, empathetic, and attuned to others\' feelings. You prioritize harmony in relationships and have a natural ability to understand people\'s needs and motivations.',
      'traits': ['Empathetic', 'Supportive', 'Relationship-focused', 'Diplomatic', 'Intuitive'],
    },
    {
      'type': 'Practical Stabilizer',
      'description': 'You are reliable, practical, and value stability. You excel at creating order from chaos, follow through on commitments, and prefer concrete solutions to abstract theories.',
      'traits': ['Reliable', 'Organized', 'Practical', 'Structured', 'Consistent'],
    },
  ];
  
  void _selectAnswer(int optionIndex) {
    setState(() {
      _answers[_currentQuestionIndex] = optionIndex;
      
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        _calculateResults();
        _showResults = true;
      }
    });
  }
  
  void _calculateResults() {
    // Simplified counting-based personality calculation
    List<int> typeCounts = [0, 0, 0, 0]; // Counts for each personality type
    
    _answers.forEach((questionIndex, answerIndex) {
      typeCounts[answerIndex]++;
    });
    
    // Find the dominant personality type
    int maxValue = typeCounts.reduce((curr, next) => curr > next ? curr : next);
    int dominantTypeIndex = typeCounts.indexOf(maxValue);
    
    // Set personality results
    final result = _personalityTypes[dominantTypeIndex];
    _personalityType = result['type'];
    _personalityDescription = result['description'];
    _personalityTraits = List<String>.from(result['traits']);
  }
  
  void _restartTest() {
    setState(() {
      _currentQuestionIndex = 0;
      _answers.clear();
      _showResults = false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personality Test'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _showResults 
            ? _buildResultsScreen() 
            : _buildQuestionScreen(),
      ),
    );
  }
  
  Widget _buildQuestionScreen() {
    final question = _questions[_currentQuestionIndex];
    
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(
            value: (_currentQuestionIndex + 1) / _questions.length,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
          ),
          const SizedBox(height: 8),
          Text(
            'Question ${_currentQuestionIndex + 1} of ${_questions.length}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            question['question'],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: (question['options'] as List).length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ElevatedButton(
                    onPressed: () => _selectAnswer(index),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                      backgroundColor: _answers[_currentQuestionIndex] == index
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      foregroundColor: _answers[_currentQuestionIndex] == index
                          ? Colors.white
                          : Colors.black87,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        question['options'][index],
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildResultsScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.psychology,
            size: 80,
            color: Colors.red,
          ),
          const SizedBox(height: 24),
          const Text(
            'Your Personality Type:',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _personalityType,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            _personalityDescription,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          const Text(
            'Your Key Traits:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: _personalityTraits.map((trait) => Chip(
              label: Text(trait),
              backgroundColor: Colors.red.withOpacity(0.1),
            )).toList(),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: _restartTest,
            icon: const Icon(Icons.refresh),
            label: const Text('Retake Test'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Note: This is a simplified personality assessment for demonstration purposes.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} 