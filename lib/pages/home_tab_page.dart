import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'character_detail_page.dart';
import '../models/chat_history_model.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'create_tab_page.dart';

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
  List<CharacterModel> filteredCharacters = []; // 过滤后的角色列表
  bool isLoading = true;
  String searchQuery = ''; // 搜索查询
  String selectedCategory = 'All'; // 当前选中的分类

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
        filteredCharacters = allCharacters;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint('Error loading characters: $e');
    }
  }
  
  // 过滤角色列表
  void _filterCharacters() {
    setState(() {
      // 首先根据搜索查询过滤
      var result = characters.where((character) {
        if (searchQuery.isEmpty) return true;
        return character.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
               character.intro.toLowerCase().contains(searchQuery.toLowerCase()) ||
               character.creator.toLowerCase().contains(searchQuery.toLowerCase());
      }).toList();
      
      // 然后根据类别过滤
      if (selectedCategory != 'All') {
        if (selectedCategory == 'Popular') {
          // 按照某种标准对角色进行排序，这里我们假设前10个是最受欢迎的
          result = result.take(10).toList();
        } else if (selectedCategory == 'Latest') {
          // 假设按照userId排序，userId包含时间戳
          result.sort((a, b) => b.userId.compareTo(a.userId));
        } else if (selectedCategory == 'My Creations') {
          // 只显示当前用户创建的角色
          result = result.where((character) => character.creator == 'You').toList();
        } else if (selectedCategory == 'Favorites') {
          // 这里可以添加喜欢/收藏功能，现在先简单处理
          // 假设前5个是收藏的
          result = result.take(5).toList();
        }
      }
      
      filteredCharacters = result;
    });
  }
  
  // 处理分类标签点击
  void _handleCategoryTap(String category) {
    if (selectedCategory != category) {
      setState(() {
        selectedCategory = category;
      });
      _filterCharacters();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用
    
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Color(0xFF00ACC1),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121214),
        elevation: 0,
        title: const Text(
          'Super Characters',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // 主要内容（带搜索栏和分类标签）
            Column(
              children: [
                // 搜索栏
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.grey.shade800,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search AI characters',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                        _filterCharacters();
                      },
                    ),
                  ),
                ),
                
                // 分类标签
                SizedBox(
                  height: 48,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      _buildCategoryTag('All', isSelected: selectedCategory == 'All'),
                      _buildCategoryTag('Popular', isSelected: selectedCategory == 'Popular'),
                      _buildCategoryTag('Latest', isSelected: selectedCategory == 'Latest'),
                      _buildCategoryTag('My Creations', isSelected: selectedCategory == 'My Creations'),
                      _buildCategoryTag('Favorites', isSelected: selectedCategory == 'Favorites'),
                    ],
                  ),
                ),
                
                // 推荐角色（带渐变背景）
                if (filteredCharacters.isNotEmpty)
                  Container(
                    height: 200,
                    margin: const EdgeInsets.only(top: 8, bottom: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: filteredCharacters.length > 5 ? 5 : filteredCharacters.length,
                      itemBuilder: (context, index) {
                        final character = filteredCharacters[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CharacterDetailPage(character: character),
                              ),
                            );
                          },
                          child: Container(
                            width: 140,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.7),
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                // 角色图片
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: buildAvatarImage(character.avatar, 
                                    width: 140, 
                                    height: 200,
                                  ),
                                ),
                                
                                // 角色信息（底部）
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.8),
                                          Colors.transparent,
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          character.name,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          character.intro,
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.7),
                                            fontSize: 12,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                                // 热门标签
                                if (index < 3)
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF00ACC1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'HOT',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                
                // 角色卡片列表（使用Expanded确保列表可滚动）
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8, bottom: 80),
                    itemCount: filteredCharacters.length,
                    itemBuilder: (context, index) {
                      final character = filteredCharacters[index];
                      return CharacterCard(character: character);
                    },
                  ),
                ),
              ],
            ),
            
            // 创建AI角色按钮
            Positioned(
              bottom: 24,
              right: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateTabPage(),
                    ),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00ACC1),
                        Color(0xFF4DD0E1),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF00ACC1).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 分类标签组件
  Widget _buildCategoryTag(String text, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () => _handleCategoryTap(text),
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        child: Chip(
          label: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey.shade400,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          backgroundColor: isSelected 
              ? const Color(0xFF00ACC1) 
              : Colors.grey.shade800,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
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
                            child: buildAvatarImage(character.avatar, size: 28),
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
                child: buildAvatarImage(character.avatar, width: 105, height: 140),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 构建角色头像 - 全局函数
Widget buildAvatarImage(String avatarPath, {double? width, double? height, double? size}) {
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
          return buildDefaultAvatar(imageWidth, imageHeight);
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
          return buildDefaultAvatar(imageWidth, imageHeight);
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
                return buildDefaultAvatar(imageWidth, imageHeight);
              },
            );
          } else {
            return buildDefaultAvatar(imageWidth, imageHeight);
          }
        },
      );
    }
  } catch (e) {
    print('Error building avatar image: $e');
    return buildDefaultAvatar(imageWidth, imageHeight);
  }
}

// 默认头像 - 全局函数
Widget buildDefaultAvatar(double width, double height) {
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