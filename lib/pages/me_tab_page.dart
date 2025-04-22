import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';
import '../terms_of_service_page.dart';
import '../privacy_policy_page.dart';
import '../about_us_page.dart';

class MeTabPage extends StatefulWidget {
  const MeTabPage({super.key});

  @override
  State<MeTabPage> createState() => _MeTabPageState();
}

class _MeTabPageState extends State<MeTabPage> {
  String _username = "Mzzz";
  String? _avatarPath;
  final ImagePicker _picker = ImagePicker();
  
  // 存储键名
  static const String _usernameKey = 'username';
  static const String _avatarPathKey = 'avatar_path';

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
  }
  
  Future<void> _loadUserInfo() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 从SharedPreferences加载用户名和头像路径
      final savedUsername = prefs.getString(_usernameKey);
      final savedAvatarPath = prefs.getString(_avatarPathKey);
      
      print('加载用户信息 - 用户名: $savedUsername, 头像路径: $savedAvatarPath');
      
      setState(() {
        if (savedUsername != null && savedUsername.isNotEmpty) {
          _username = savedUsername;
        }
        
        if (savedAvatarPath != null && savedAvatarPath.isNotEmpty) {
          _avatarPath = savedAvatarPath;
        }
      });
    } catch (e) {
      print('加载用户信息出错: $e');
    }
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        final savedPath = await _saveImageToLocal(image.path);
        setState(() {
          _avatarPath = savedPath;
        });
        // 保存用户信息
        await _saveUserInfo();
      }
    } catch (e) {
      print('选择图片出错: $e');
    }
  }

  Future<String> _saveImageToLocal(String imagePath) async {
    try {
      final Directory documentsDir = await getApplicationDocumentsDirectory();
      final String fileName = 'user_avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final String destinationPath = path.join(documentsDir.path, fileName);
      
      // 复制文件
      final File originalFile = File(imagePath);
      await originalFile.copy(destinationPath);
      
      // 只保存文件名作为相对路径，避免绝对路径在应用重启后失效
      return fileName;
    } catch (e) {
      print('保存图片出错: $e');
      rethrow;
    }
  }

  Future<void> _saveUserInfo() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // 将用户名和头像路径保存到SharedPreferences
      await prefs.setString(_usernameKey, _username);
      if (_avatarPath != null) {
        await prefs.setString(_avatarPathKey, _avatarPath!);
      }
      
      print('已保存用户信息 - 用户名: $_username, 头像路径: $_avatarPath');
    } catch (e) {
      print('保存用户信息出错: $e');
    }
  }

  void _editUsername() {
    showDialog(
      context: context,
      builder: (context) {
        String newName = _username;
        return AlertDialog(
          backgroundColor: const Color(0xFF1E1E1E),
          title: const Text('修改用户名', style: TextStyle(color: Colors.white)),
          content: TextField(
            autofocus: true,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: '请输入新用户名',
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFE91E63)),
              ),
            ),
            onChanged: (value) {
              newName = value;
            },
            controller: TextEditingController(text: _username),
          ),
          actions: [
            TextButton(
              child: const Text('取消', style: TextStyle(color: Colors.grey)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('保存', style: TextStyle(color: Color(0xFFE91E63))),
              onPressed: () async {
                setState(() {
                  _username = newName;
                });
                await _saveUserInfo();
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  // 根据路径构建图片组件 - 修改为缓存方式以避免频繁重建
  Widget _buildAvatarImage(String? imagePath) {
    if (imagePath == null || imagePath.isEmpty) {
      return Image.asset(
        'assets/images/userInfo/1/user_1.jpg',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.person, size: 40, color: Colors.white54);
        },
      );
    }
    
    // 检查是否是相对路径（不以/开头）
    if (!imagePath.startsWith('/')) {
      // 使用缓存方式构建
      return FutureBuilder<Directory>(
        future: getApplicationDocumentsDirectory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            final fullPath = '${snapshot.data!.path}/$imagePath';
            // 只在首次加载或路径变化时打印日志
            print('构建头像 - 完整路径: $fullPath');
            
            return Image.file(
              File(fullPath),
              fit: BoxFit.cover,
              // 添加缓存配置，避免频繁重建
              cacheHeight: 160, // 缓存高度2倍于显示大小
              cacheWidth: 160, 
              gaplessPlayback: true, // 图片更新时无缝过渡
              errorBuilder: (context, error, stackTrace) {
                print('加载头像出错: $error');
                return const Icon(Icons.person, size: 40, color: Colors.white54);
              },
            );
          } else {
            // 路径处理中，显示默认头像
            return const Icon(Icons.person, size: 40, color: Colors.white54);
          }
        },
      );
    } else {
      // 绝对路径
      return Image.file(
        File(imagePath),
        fit: BoxFit.cover,
        // 添加缓存配置
        cacheHeight: 160,
        cacheWidth: 160,
        gaplessPlayback: true,
        errorBuilder: (context, error, stackTrace) {
          print('加载头像出错(绝对路径): $error');
          return const Icon(Icons.person, size: 40, color: Colors.white54);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 头像和用户名部分
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // 头像 - 使用RepaintBoundary防止重绘
                    RepaintBoundary(
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white.withOpacity(0.2), width: 2),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: _buildAvatarImage(_avatarPath),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // 用户名
                    Expanded(
                      child: Text(
                        _username,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // 编辑按钮
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.white),
                      onPressed: _editUsername,
                    ),
                  ],
                ),
              ),

              // 菜单项列表
              const SizedBox(height: 20),

              _buildMenuItem(
                icon: Icons.person_outline,
                title: 'About us',
                onTap: () {
                  // 跳转到About Us页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUsPage(),
                    ),
                  );
                },
              ),
              _buildMenuItem(
                icon: Icons.description_outlined,
                title: 'User Agreement',
                onTap: () {
                  // 跳转到用户协议页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsOfServicePage(),
                    ),
                  );
                },
              ),
              _buildMenuItem(
                icon: Icons.security_outlined,
                title: 'Privacy Policy',
                onTap: () {
                  // 跳转到隐私政策页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFF5E7BB).withOpacity(0.2),
          ),
          child: Icon(
            icon,
            color: const Color(0xFFF5E7BB),
            size: 22,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 16,
        ),
        onTap: onTap,
      ),
    );
  }
} 