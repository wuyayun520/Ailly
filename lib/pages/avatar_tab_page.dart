import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:convert';
import 'chat_page.dart';
import 'home_tab_page.dart';
import '../models/chat_history_model.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class AvatarTabPage extends StatefulWidget {
  const AvatarTabPage({super.key});

  @override
  State<AvatarTabPage> createState() => _AvatarTabPageState();
}

class _AvatarTabPageState extends State<AvatarTabPage> with AutomaticKeepAliveClientMixin {
  final PageController _pageController = PageController();
  List<CharacterModel> _characters = [];
  int _currentIndex = 0;
  bool _isLoading = true;
  // 状态栏高度
  final double _statusBarHeight = 44;

  @override
  bool get wantKeepAlive => true; // 确保页面保持状态

  @override
  void initState() {
    super.initState();
    _loadCharacters();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _loadCharacters() async {
    try {
      // 1. 加载预设角色
      final String jsonString = await rootBundle.loadString('assets/json/modern.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> charactersJson = jsonData['alldata'] as List;
      
      // 2. 加载用户创建的角色
      List<Map<String, dynamic>> userCharacters = await ChatHistoryModel.loadUserCharacters();
      print('AvatarTabPage: Loaded ${userCharacters.length} user-created characters');
      
      // 3. 合并两个列表
      final List<CharacterModel> allCharacters = [
        ...charactersJson.map((json) => CharacterModel.fromJson(json)),
        ...userCharacters.map((json) => CharacterModel.fromJson(json)),
      ];
      
      setState(() {
        _characters = allCharacters;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error loading characters: $e');
    }
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _navigateToChat() {
    if (_characters.isEmpty) return;
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(character: _characters[_currentIndex]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用
    
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Color(0xFFE91E63),
        ),
      );
    }
    
    if (_characters.isEmpty) {
      return const Center(
        child: Text(
          'No profiles available',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
    }

    final currentCharacter = _characters[_currentIndex];
    
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // 背景图片
            PageView.builder(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: _characters.length,
              itemBuilder: (context, index) {
                final character = _characters[index];
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    // 用户全屏照片
                    _buildCharacterImage(character.avatar),
                    // 渐变遮罩 - 顶部
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      height: 150 + _statusBarHeight,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    // 渐变遮罩 - 底部
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.9),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            
            // 顶部信息栏 - 向下移动44像素
            Positioned(
              top: 40 + _statusBarHeight,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    // 用户小头像
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: _buildCharacterImage(currentCharacter.avatar, size: 40),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      currentCharacter.creator,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // 右侧操作按钮
            Positioned(
              right: 16,
              bottom: 24, // 调整为距离底部24像素
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 喜欢按钮
                  _buildCircleButton(
                    'assets/images/btn_friends_love_nor.png',
                    () {
                      // 喜欢当前用户
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You liked ${currentCharacter.name}!'),
                          backgroundColor: Colors.pink,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  // 聊天按钮
                  _buildCircleButton(
                    'assets/images/btn_friends_chat_nor.png',
                    () {
                      // 导航到聊天页面
                      _navigateToChat();
                    },
                  ),
                  const SizedBox(height: 12),
                  // 关闭按钮
                  _buildCircleButton(
                    'assets/images/btn_friends_close_nor.png',
                    () {
                      // 左滑到下一个用户
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
            
            // 底部信息栏
            Positioned(
              bottom: 24, // 调整为距离底部24像素
              left: 16,
              right: 80, // 留出右侧按钮的空间
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentCharacter.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    currentCharacter.intro,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildCircleButton(String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          imagePath,
          width: 60,
          height: 60,
        ),
      ),
    );
  }

  Widget _buildCharacterImage(String imagePath, {double? size}) {
    try {
      // 检查是否是绝对路径
      if (imagePath.startsWith('/')) {
        // 绝对路径 - 本地文件
        return Image.file(
          File(imagePath),
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading image file: $error');
            return _buildDefaultAvatar(size);
          },
        );
      } else if (imagePath.startsWith('assets/')) {
        // 资源文件路径
        return Image.asset(
          imagePath,
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildDefaultAvatar(size);
          },
        );
      } else {
        // 相对路径 - 需要获取完整路径
        return FutureBuilder<Directory>(
          future: getApplicationDocumentsDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              final fullPath = '${snapshot.data!.path}/$imagePath';
              return Image.file(
                File(fullPath),
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  print('Error loading relative image file: $error');
                  return _buildDefaultAvatar(size);
                },
              );
            } else {
              return _buildDefaultAvatar(size);
            }
          },
        );
      }
    } catch (e) {
      print('Error building character image: $e');
      return _buildDefaultAvatar(size);
    }
  }
  
  Widget _buildDefaultAvatar(double? size) {
    return Container(
      width: size,
      height: size,
      color: Colors.grey.shade800,
      child: Icon(
        Icons.person,
        color: Colors.white54,
        size: (size ?? 40) * 0.5,
      ),
    );
  }
} 