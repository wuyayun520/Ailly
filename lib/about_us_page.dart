import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: const Color(0xFF121214),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo和应用名称
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/bg_logo_logo.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Ailly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Version 1.0.0',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // 应用介绍
            const Text(
              'About Ailly',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Ailly is an innovative AI companion app that brings a new dimension to digital interactions. Our app provides a space where you can engage with intelligent AI characters, each with their own unique personality and conversational style.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 40),
            
            // 主要功能介绍
            const Text(
              'Key Features',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            
            _buildFeatureItem(
              icon: Icons.chat_bubble_outline,
              title: 'AI Chat',
              description: 'Engage in realistic conversations with AI characters tailored to your interests and preferences.',
            ),
            
            _buildFeatureItem(
              icon: Icons.people_outline,
              title: 'Character Gallery',
              description: 'Browse a diverse collection of AI personalities with unique backgrounds and conversation styles.',
            ),
            
            _buildFeatureItem(
              icon: Icons.add_circle_outline,
              title: 'Custom Characters',
              description: 'Create your own AI companion with customized appearance, personality traits, and conversational style.',
            ),
            
            _buildFeatureItem(
              icon: Icons.photo_outlined,
              title: 'Image Sharing',
              description: 'Share images with AI characters and receive contextually relevant responses.',
            ),
            
            const SizedBox(height: 40),
            
            // 联系信息
            const Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Email: support@Ailly.app',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 40),
            
            // 版权信息
            const Text(
              '© 2025 Ailly. All rights reserved.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              icon,
              color: Colors.purpleAccent,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 