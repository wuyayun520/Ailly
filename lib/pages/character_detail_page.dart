import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'home_tab_page.dart';
import 'report_page.dart';
import 'chat_page.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:math' as math;

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
                    // Character image with enhanced decoration
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // Main image - now with a unique hero tag
                            _buildMainAvatarImage(),
                            
                            // Decorative overlay gradient
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.5),
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                  stops: const [0.0, 0.15, 0.7, 1.0],
                                ),
                              ),
                            ),
                            
                            // Decorative elements
                            Positioned(
                              top: 0,
                              right: 0,
                              child: _buildDecorationElement(),
                            ),
                            
                            // Subtle pattern overlay for texture
                            Opacity(
                              opacity: 0.1,
                              child: Container(
                                decoration: BoxDecoration(
                                  backgroundBlendMode: BlendMode.overlay,
                                  gradient: RadialGradient(
                                    center: Alignment.center,
                                    radius: 1.0,
                                    colors: [
                                      Colors.transparent,
                                      Colors.white.withOpacity(0.1),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    // Top overlay with creator avatar and name
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Row(
                        children: [
                          // Enhanced creator avatar (using a different widget to avoid Hero conflicts)
                          Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: GradientBoxBorder(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple.shade300,
                                    Colors.pink.shade300,
                                    Colors.orange.shade300
                                  ],
                                ),
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                  width: 1,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: _buildSmallAvatarImage(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Creator",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 8.0,
                                      color: Colors.black.withOpacity(0.7),
                                      offset: const Offset(1.0, 1.0),
                                    ),
                                  ],
                                ),
                              ),
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
                        ],
                      ),
                    ),
                    
                    // Bottom overlay with name and badge
                    Positioned(
                      left: 16,
                      bottom: 16,
                      right: 16,
                      child: Row(
                        children: [
                          // Character name with glow effect
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
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
                                      Shadow(
                                        blurRadius: 16.0,
                                        color: Color(0xFFE91E63),
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE91E63).withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.verified,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Verified",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.3),
                                          width: 0.5,
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 14,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Popular",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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
  
  // Main avatar image with Hero tag for transitions
  Widget _buildMainAvatarImage() {
    // Create a unique hero tag by combining the image path with a suffix
    final String heroTag = "${character.avatar}_main";
    
    return Hero(
      tag: heroTag,
      child: _buildAvatarImage(character.avatar),
    );
  }
  
  // Small avatar image without Hero animation to avoid conflicts
  Widget _buildSmallAvatarImage() {
    // No Hero widget here to avoid conflicts
    return _buildAvatarImage(character.avatar);
  }
  
  // Decorative element for character image
  Widget _buildDecorationElement() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple.withOpacity(0.5),
            Colors.transparent,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(150),
        ),
      ),
      child: Stack(
        children: [
          // Decorative patterns
          ...List.generate(5, (index) {
            return Positioned(
              right: 15 + (index * 7),
              top: 10 + (index * 6),
              child: Transform.rotate(
                angle: -math.pi / 6,
                child: Container(
                  width: 30 - (index * 2),
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6 - (index * 0.1)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            );
          }),
          
          // Small decorative circle
          Positioned(
            right: 25,
            top: 40,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFE91E63).withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFE91E63).withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
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