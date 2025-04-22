import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'home_tab_page.dart';
import 'report_page.dart';
import 'chat_page.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CharacterDetailPage extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailPage({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    // Set status bar to transparent
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF121214),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReportPage(),
                ),
              );
            },
            child: const Text(
              "Report",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Character Image
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Character image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: _buildAvatarImage(character.avatar),
                    ),
                    
                    // Top overlay with creator avatar and name
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                                width: 2,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: _buildAvatarImage(character.avatar),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            character.creator,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 8.0,
                                  color: Colors.black.withOpacity(0.7),
                                  offset: const Offset(1.0, 1.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Bottom overlay with name
                    Positioned(
                      left: 16,
                      bottom: 16,
                      child: Text(
                        character.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Info section
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Info.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      character.intro,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Chat button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(character: character),
                      ),
                    );
                  },
                  icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
                  label: const Text(
                    "Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE91E63),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildAvatarImage(String avatarPath) {
    try {
      // 检查是否是绝对路径
      if (avatarPath.startsWith('/')) {
        // 绝对路径 - 本地文件
        return Image.file(
          File(avatarPath),
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading avatar file: $error');
            return _buildDefaultAvatar();
          },
        );
      } else if (avatarPath.startsWith('assets/')) {
        // 资源文件路径
        return Image.asset(
          avatarPath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildDefaultAvatar();
          },
        );
      } else {
        // 相对路径 - 需要获取完整路径
        return FutureBuilder<Directory>(
          future: getApplicationDocumentsDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              final fullPath = '${snapshot.data!.path}/$avatarPath';
              return Image.file(
                File(fullPath),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  print('Error loading relative avatar file: $error');
                  return _buildDefaultAvatar();
                },
              );
            } else {
              return _buildDefaultAvatar();
            }
          },
        );
      }
    } catch (e) {
      print('Error building avatar image: $e');
      return _buildDefaultAvatar();
    }
  }
  
  Widget _buildDefaultAvatar() {
    return Container(
      color: Colors.grey.shade800,
      child: const Icon(
        Icons.person,
        color: Colors.white54,
        size: 50,
      ),
    );
  }
} 