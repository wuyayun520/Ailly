import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:just_audio/just_audio.dart';
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
  static const String _lastPlayedMusicIndexKey = 'last_played_music_index';

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

              // 添加音乐播放器组件 - 使用单独的有状态组件
              const MusicPlayerWidget(),

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

// 将音乐播放器拆分为独立的有状态组件，避免主页面重建
class MusicPlayerWidget extends StatefulWidget {
  const MusicPlayerWidget({super.key});

  @override
  State<MusicPlayerWidget> createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> with SingleTickerProviderStateMixin {
  // 音乐播放器相关变量
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  String _currentMusicTitle = '';
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  int _currentMusicIndex = 0;
  bool _isExpanded = false;

  // 动画控制器
  late AnimationController _animationController;
  Animation<double>? _expandAnimation;
  
  // 音乐列表
  final List<Map<String, String>> _musicList = [
    {'title': 'Midnight Dreams', 'asset': 'assets/music/music_1.mp3'},
    {'title': 'Summer Vibes', 'asset': 'assets/music/music_2.mp3'},
    {'title': 'Chill Horizon', 'asset': 'assets/music/music_3.mp3'},
    {'title': 'Ocean Waves', 'asset': 'assets/music/music_4.mp3'},
    {'title': 'Urban Rhythm', 'asset': 'assets/music/music_5.mp3'},
    {'title': 'Sunset Melody', 'asset': 'assets/music/music_6.mp3'},
  ];
  
  // 存储键名
  static const String _lastPlayedMusicIndexKey = 'last_played_music_index';
  
  @override
  void initState() {
    super.initState();
    _initAudioPlayer();
    
    // 正确初始化动画控制器
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }
  
  @override
  void dispose() {
    _audioPlayer.dispose();
    _animationController.dispose();
    super.dispose();
  }
  
  // 切换展开/折叠状态
  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }
  
  // 初始化音频播放器
  Future<void> _initAudioPlayer() async {
    try {
      // 加载上次播放的音乐索引
      final prefs = await SharedPreferences.getInstance();
      final lastIndex = prefs.getInt(_lastPlayedMusicIndexKey) ?? 0;
      _currentMusicIndex = lastIndex < _musicList.length ? lastIndex : 0;
      
      // 设置播放器监听器
      _audioPlayer.playerStateStream.listen((state) {
        if (state.playing) {
          setState(() => _isPlaying = true);
        } else {
          setState(() => _isPlaying = false);
        }
        
        if (state.processingState == ProcessingState.completed) {
          _playNext();
        }
      });
      
      // 监听音频持续时间变化
      _audioPlayer.durationStream.listen((d) {
        setState(() => _duration = d ?? Duration.zero);
      });
      
      // 监听播放进度
      _audioPlayer.positionStream.listen((p) {
        setState(() => _position = p);
      });
      
      // 设置初始曲目但不自动播放
      await _setAudioSource(_currentMusicIndex);
      setState(() {
        _currentMusicTitle = _musicList[_currentMusicIndex]['title'] ?? '';
      });
    } catch (e) {
      print('音频播放器初始化错误: $e');
    }
  }
  
  // 设置音频源
  Future<void> _setAudioSource(int index) async {
    try {
      final assetPath = _musicList[index]['asset'] ?? '';
      await _audioPlayer.setAsset(assetPath);
      setState(() => _currentMusicTitle = _musicList[index]['title'] ?? '');
      
      // 保存当前播放的索引
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_lastPlayedMusicIndexKey, index);
    } catch (e) {
      print('设置音频源错误: $e');
    }
  }
  
  // 播放/暂停
  void _playPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }
  
  // 播放下一首
  void _playNext() async {
    if (_musicList.isEmpty) return;
    
    final nextIndex = (_currentMusicIndex + 1) % _musicList.length;
    _currentMusicIndex = nextIndex;
    await _setAudioSource(nextIndex);
    _audioPlayer.play();
  }
  
  // 播放上一首
  void _playPrevious() async {
    if (_musicList.isEmpty) return;
    
    final previousIndex = (_currentMusicIndex - 1 + _musicList.length) % _musicList.length;
    _currentMusicIndex = previousIndex;
    await _setAudioSource(previousIndex);
    _audioPlayer.play();
  }
  
  // 时间格式化
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
  
  @override
  Widget build(BuildContext context) {
    // 使用默认动画值，防止空指针
    final Animation<double> animation = _expandAnimation ?? const AlwaysStoppedAnimation<double>(0);
    
    // 使用RepaintBoundary包裹整个播放器，防止重绘影响上层组件
    return RepaintBoundary(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF2A2A2A), Color(0xFF1A1A1A)],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: _toggleExpanded,
            borderRadius: BorderRadius.circular(16),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 紧凑型头部 - 始终显示
                  Row(
                    children: [
                      // 音乐图标
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE91E63).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.music_note_rounded,
                          color: Color(0xFFE91E63),
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: 12),
                      
                      // 音乐信息
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Now Playing',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              _currentMusicTitle,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      // 紧凑型控制按钮
                      Row(
                        children: [
                          // 上一首
                          IconButton(
                            iconSize: 22,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: _playPrevious,
                            icon: const Icon(Icons.skip_previous_rounded, color: Colors.white70),
                          ),
                          const SizedBox(width: 12),
                          
                          // 播放/暂停
                          GestureDetector(
                            onTap: _playPause,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE91E63),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFFE91E63).withOpacity(0.3),
                                    blurRadius: 8,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          
                          // 下一首
                          IconButton(
                            iconSize: 22,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: _playNext,
                            icon: const Icon(Icons.skip_next_rounded, color: Colors.white70),
                          ),
                          
                          // 展开/收起按钮
                          const SizedBox(width: 8),
                          IconButton(
                            iconSize: 18,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: _toggleExpanded,
                            icon: AnimatedRotation(
                              turns: _isExpanded ? 0.5 : 0,
                              duration: const Duration(milliseconds: 300),
                              child: const Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  // 进度条 - 紧凑模式也显示
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 2,
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 4),
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 10),
                        activeTrackColor: const Color(0xFFE91E63),
                        inactiveTrackColor: Colors.grey.withOpacity(0.3),
                        thumbColor: Colors.white,
                        overlayColor: const Color(0xFFE91E63).withOpacity(0.2),
                      ),
                      child: Slider(
                        value: _position.inSeconds.toDouble(),
                        min: 0,
                        max: _duration.inSeconds.toDouble() > 0 ? _duration.inSeconds.toDouble() : 1,
                        onChanged: (value) {
                          final position = Duration(seconds: value.toInt());
                          _audioPlayer.seek(position);
                        },
                      ),
                    ),
                  ),
                  
                  // 时间显示
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _formatDuration(_position),
                          style: const TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          _formatDuration(_duration),
                          style: const TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // 非展开状态下显示简洁免责声明
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Center(
                      child: Text(
                        'AI-generated music',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 9,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  
                  // 可展开部分 - 音乐列表
                  SizeTransition(
                    sizeFactor: animation,
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListView.builder(
                            itemCount: _musicList.length,
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            itemBuilder: (context, index) {
                              final isSelected = index == _currentMusicIndex;
                              return ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                                horizontalTitleGap: 8,
                                title: Text(
                                  _musicList[index]['title'] ?? '',
                                  style: TextStyle(
                                    color: isSelected ? const Color(0xFFE91E63) : Colors.white70,
                                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                leading: Icon(
                                  isSelected ? Icons.music_note_rounded : Icons.music_note_outlined,
                                  color: isSelected ? const Color(0xFFE91E63) : Colors.white70,
                                  size: 20,
                                ),
                                trailing: isSelected && _isPlaying 
                                  ? const Icon(Icons.equalizer, color: Color(0xFFE91E63), size: 16)
                                  : null,
                                onTap: () async {
                                  if (index != _currentMusicIndex) {
                                    _currentMusicIndex = index;
                                    await _setAudioSource(index);
                                    _audioPlayer.play();
                                  } else {
                                    _playPause();
                                  }
                                },
                              );
                            },
                          ),
                        ),
                        // 添加免责声明
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 4),
                          child: Text(
                            'Disclaimer: All music tracks are AI-generated and used for demonstrative purposes only. No copyright infringement intended.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} 