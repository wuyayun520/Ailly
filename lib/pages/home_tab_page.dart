import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'character_detail_page.dart';
import '../models/chat_history_model.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CharacterModel {
  final String userId;
  final String name;
  final String avatar;
  final String creator;
  final String intro;
  final String opening;
  final List<Map<String, String>> photochat;

  CharacterModel({
    required this.userId,
    required this.name,
    required this.avatar,
    required this.creator,
    required this.intro,
    required this.opening,
    required this.photochat,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> photochatJson = json['photochat'] as List;
    final List<Map<String, String>> photochatList = photochatJson
        .map((item) => {
              'ask1': item['ask1'] as String,
              'ask2': item['ask2'] as String,
            })
        .toList();

    return CharacterModel(
      userId: json['userId'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      creator: json['creator'] as String,
      intro: json['intro'] as String,
      opening: json['opening'] as String,
      photochat: photochatList,
    );
  }
}

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> with AutomaticKeepAliveClientMixin {
  List<CharacterModel> characters = [];
  bool isLoading = true;

  @override
  bool get wantKeepAlive => true; // 确保页面保持状态

  @override
  void initState() {
    super.initState();
    loadCharacters();
  }

  Future<void> loadCharacters() async {
    try {
      // 1. 加载预设角色
      final String jsonString = await rootBundle.loadString('assets/json/modern.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> charactersJson = jsonData['alldata'] as List;
      
      // 2. 加载用户创建的角色
      List<Map<String, dynamic>> userCharacters = await ChatHistoryModel.loadUserCharacters();
      print('Loaded ${userCharacters.length} user-created characters');
      
      // 3. 合并两个列表
      final List<CharacterModel> allCharacters = [
        ...charactersJson.map((json) => CharacterModel.fromJson(json)),
        ...userCharacters.map((json) => CharacterModel.fromJson(json)),
      ];
      
      setState(() {
        characters = allCharacters;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint('Error loading characters: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用
    
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Color(0xFFE91E63),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          itemCount: characters.length,
          itemBuilder: (context, index) {
            final character = characters[index];
            return CharacterCard(character: character);
          },
        ),
      ),
    );
  }
}

class CharacterCard extends StatelessWidget {
  final CharacterModel character;

  const CharacterCard({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailPage(character: character),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // 卡片主体
            Container(
              height: 164, // 设置卡片固定高度为164
              margin: const EdgeInsets.only(left: 24), // 将左边距调整为24
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.5),
                  ],
                ),
                border: const GradientBoxBorder(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF8F6A19),
                      Color(0xFF471616),
                    ],
                  ),
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 12.0, right: 12.0, bottom: 12.0), // 调整左侧内边距
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      character.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      character.intro,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    
                    // Creator/Nickname
                    Row(
                      children: [
                        // 使用圆形头像
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white24,
                              width: 1,
                            ),
                          ),
                          child: ClipOval(
                            child: _buildAvatarImage(character.avatar, size: 28),
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          character.creator,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            // 叠放在边框上的头像
            Positioned(
              left: 0, // 将头像左边距设置为24
              top: 12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: _buildAvatarImage(character.avatar, width: 105, height: 140),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildAvatarImage(String avatarPath, {double? width, double? height, double? size}) {
    final double imageWidth = size ?? width ?? 105;
    final double imageHeight = size ?? height ?? 140;
    
    try {
      // 检查是否是绝对路径
      if (avatarPath.startsWith('/')) {
        // 绝对路径 - 本地文件
        return Image.file(
          File(avatarPath),
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading avatar file: $error');
            return _buildDefaultAvatar(imageWidth, imageHeight);
          },
        );
      } else if (avatarPath.startsWith('assets/')) {
        // 资源文件路径
        return Image.asset(
          avatarPath,
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildDefaultAvatar(imageWidth, imageHeight);
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
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  print('Error loading relative avatar file: $error');
                  return _buildDefaultAvatar(imageWidth, imageHeight);
                },
              );
            } else {
              return _buildDefaultAvatar(imageWidth, imageHeight);
            }
          },
        );
      }
    } catch (e) {
      print('Error building avatar image: $e');
      return _buildDefaultAvatar(imageWidth, imageHeight);
    }
  }
  
  Widget _buildDefaultAvatar(double width, double height) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade800,
      child: Icon(
        Icons.person,
        color: Colors.white54,
        size: width * 0.4,
      ),
    );
  }
} 