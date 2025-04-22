import 'dart:async';
import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isTyping = false;
  final List<ChatMessage> _messages = [];
  
  // Predefined AI responses and suggested questions
  final List<String> _suggestedQuestions = [
    'How is the weather today?',
    'Recommend some fun activities',
    'How can I improve my sleep quality?',
    'Recommend a good book',
    'Help me write a self-introduction',
  ];
  
  final Map<String, String> _predefinedResponses = {
    'Hello': 'Hello! I\'m happy to assist you. I can answer questions, provide suggestions, or chat with you. How can I help you today?',
    'Who are you': 'I am an AI assistant designed to provide help and information. I can answer questions, offer suggestions, engage in conversation, or help you complete various tasks.',
    'How is the weather today?': 'I cannot access real-time weather information, but I suggest checking a weather app or website for the latest forecast in your area.',
    'Recommend some fun activities': 'Of course! Here are some fun activity suggestions:\n1. Try a hiking trip\n2. Join a local cooking class\n3. Visit a nearby museum or art exhibition\n4. Organize a friends gathering or board game night\n5. Learn a new musical instrument or painting technique',
    'How can I improve my sleep quality?': 'Ways to improve sleep quality:\n• Maintain a regular sleep schedule\n• Avoid electronic devices before bedtime\n• Create a comfortable sleep environment (temperature, light, noise control)\n• Limit caffeine in the afternoon and evening\n• Establish a relaxing bedtime routine (meditation, deep breathing, reading)\n• Maintain moderate exercise, but avoid intense workouts before bed',
    'Recommend a good book': 'Here are some highly rated book recommendations:\n• "Sapiens" - Yuval Noah Harari\n• "Atomic Habits" - James Clear\n• "The Little Prince" - Antoine de Saint-Exupéry\n• "One Hundred Years of Solitude" - Gabriel García Márquez\n• "Thinking, Fast and Slow" - Daniel Kahneman\n\nDo you have any preferred genres? I can provide more targeted recommendations.',
    'Help me write a self-introduction': 'Here\'s a brief self-introduction template:\n\n"Hello, my name is [Your Name], and I am a [Your Profession/Specialization]. I have [Relevant Skills/Experience] and am passionate about [Your Interests/Expertise]. Over the past few years, I have [Mention Some Achievements or Experiences]. I excel at [Your Strengths] and have been working to improve my [Areas for Growth]. I look forward to [Your Goals/Expectations]."\n\nYou can adjust this template based on the specific occasion and needs.',
  };

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _handleSubmitted(String text) {
    _messageController.clear();
    
    if (text.trim().isEmpty) return;
    
    setState(() {
      _messages.add(ChatMessage(
        text: text,
        isUserMessage: true,
      ));
      _isTyping = true;
    });
    
    _scrollToBottom();
    
    // Simulate AI thinking time
    Timer(const Duration(milliseconds: 800), () {
      setState(() {
        _isTyping = false;
        
        // Check for predefined answers
        if (_predefinedResponses.containsKey(text)) {
          _messages.add(ChatMessage(
            text: _predefinedResponses[text]!,
            isUserMessage: false,
          ));
        } else {
          // Generic response
          _messages.add(ChatMessage(
            text: 'Thanks for your question! This is a demo AI assistant, and I can only provide limited preset responses. In a real application, this would connect to a backend AI service for more intelligent answers.',
            isUserMessage: false,
          ));
        }
      });
      
      _scrollToBottom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Assistant'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _messages.clear();
              });
            },
            tooltip: 'Clear conversation',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _messages.isEmpty
                ? _buildWelcomeView()
                : _buildMessageList(),
          ),
          if (_isTyping)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              alignment: Alignment.centerLeft,
              child: const SizedBox(
                width: 100,
                child: Row(
                  children: [
                    Text('AI typing', style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ],
                ),
              ),
            ),
          const Divider(height: 1),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildWelcomeView() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.assistant,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Hello, I\'m your AI Assistant',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'I can answer questions, provide suggestions, or chat with you. What would you like help with?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'You can ask me:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: _suggestedQuestions
                  .map((question) => ActionChip(
                        label: Text(question),
                        onPressed: () {
                          _handleSubmitted(question);
                        },
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageList() {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        final message = _messages[index];
        return _buildChatBubble(message);
      },
    );
  }

  Widget _buildChatBubble(ChatMessage message) {
    const double bubbleRadius = 16;
    final isUser = message.isUserMessage;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) _buildAvatar(isUser),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: isUser ? Colors.blue : Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isUser ? bubbleRadius : 0),
                  topRight: Radius.circular(isUser ? 0 : bubbleRadius),
                  bottomLeft: const Radius.circular(bubbleRadius),
                  bottomRight: const Radius.circular(bubbleRadius),
                ),
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: isUser ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          if (isUser) _buildAvatar(isUser),
        ],
      ),
    );
  }

  Widget _buildAvatar(bool isUser) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: isUser ? Colors.blue[200] : Colors.blue,
      child: Icon(
        isUser ? Icons.person : Icons.assistant,
        size: 18,
        color: Colors.white,
      ),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              textInputAction: TextInputAction.send,
              onSubmitted: _handleSubmitted,
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            radius: 24,
            backgroundColor: Theme.of(context).primaryColor,
            child: IconButton(
              icon: const Icon(Icons.send, color: Colors.white),
              onPressed: () => _handleSubmitted(_messageController.text),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUserMessage;
  
  ChatMessage({
    required this.text,
    required this.isUserMessage,
  });
} 