import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:convert';
import 'chat_page.dart';
import 'home_tab_page.dart';
import '../models/chat_history_model.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'character_detail_page.dart';
import 'vip_subscription_page.dart';

class AvatarTabPage extends StatefulWidget {
  const AvatarTabPage({super.key});

  @override
  State<AvatarTabPage> createState() => _AvatarTabPageState();
}

class _AvatarTabPageState extends State<AvatarTabPage> with AutomaticKeepAliveClientMixin, TickerProviderStateMixin, WidgetsBindingObserver {
  final PageController _pageController = PageController();
  List<CharacterModel> _characters = [];
  int _currentIndex = 0;
  bool _isLoading = true;
  bool _isMusicPlaying = false;
  bool _isVip = false;
  
  // 状态栏高度
  final double _statusBarHeight = 44;
  
  // 为角色生成随机但固定的等级
  final Map<String, int> _characterLevels = {};
  
  // 存储角色的关注状态
  final Map<String, bool> _followingStatus = {};
  
  // 动画控制器
  late AnimationController _pulseController;
  late AnimationController _rotationController;
  late Animation<double> _pulseAnimation;

  // 音乐播放器相关
  final AudioPlayer _audioPlayer = AudioPlayer();
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  int _currentMusicIndex = 0;
  bool _isExpandedMusic = false;
  late AnimationController _musicExpandController;
  late Animation<double> _expandAnimation;
  
  // 音乐列表
  final List<Map<String, String>> _musicList = [
    {'title': 'Midnight Dreams', 'asset': 'assets/music/music_1.mp3'},
    {'title': 'Summer Vibes', 'asset': 'assets/music/music_2.mp3'},
    {'title': 'Chill Horizon', 'asset': 'assets/music/music_3.mp3'},
    {'title': 'Ocean Waves', 'asset': 'assets/music/music_4.mp3'},
    {'title': 'Urban Rhythm', 'asset': 'assets/music/music_5.mp3'},
  ];
  
  // 存储键名
  static const String _lastPlayedMusicIndexKey = 'last_played_music_index';
  static const String _followingStatusKey = 'following_status_key';
  static const String _vipStatusKey = 'isSubscribed';

  bool _isAnimating = false;

  @override
  bool get wantKeepAlive => true; // 确保页面保持状态

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeState();
  }

  void _initializeState() {
    // 先初始化动画控制器
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut)
    );
    
    // 初始化音乐展开动画控制器
    _musicExpandController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    
    _expandAnimation = CurvedAnimation(
      parent: _musicExpandController,
      curve: Curves.easeInOut,
    );
    
    // 初始化音频播放器
    _initAudioPlayer();
    
    // 加载关注状态
    _loadFollowingStatus();
    
    // 加载 VIP 状态
    _loadVipStatus();
    
    // 然后加载角色数据
    _loadCharacters();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // 先停止所有动画和播放
    _pulseController.stop();
    _rotationController.stop();
    _musicExpandController.stop();
    _audioPlayer.stop();
    
    // 释放控制器
    _pulseController.dispose();
    _rotationController.dispose();
    _musicExpandController.dispose();
    _audioPlayer.dispose();
    _pageController.dispose();
    
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _loadVipStatus(); // 当应用恢复时重新加载 VIP 状态
    }
  }
  
  // 加载 VIP 状态
  Future<void> _loadVipStatus() async {
    if (!mounted) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final isVip = prefs.getBool(_vipStatusKey) ?? false;
      
      if (mounted) {
        setState(() {
          _isVip = isVip;
        });
      }
    } catch (e) {
      print('加载 VIP 状态出错: $e');
    }
  }
  
  // 初始化音频播放器
  Future<void> _initAudioPlayer() async {
    if (!mounted) return;
    try {
      // 加载上次播放的音乐索引
      final prefs = await SharedPreferences.getInstance();
      final lastIndex = prefs.getInt(_lastPlayedMusicIndexKey) ?? 0;
      _currentMusicIndex = lastIndex < _musicList.length ? lastIndex : 0;
      
      // 设置播放器监听器
      _audioPlayer.playerStateStream.listen((state) {
        if (!mounted) return;
        
        setState(() {
          if (state.playing) {
            _isMusicPlaying = true;
            _rotationController.repeat();
          } else {
            _isMusicPlaying = false;
            _rotationController.stop();
          }
        });
        
        if (state.processingState == ProcessingState.completed) {
          _playNext();
        }
      });
      
      // 监听音频持续时间变化
      _audioPlayer.durationStream.listen((d) {
        if (!mounted) return;
        setState(() => _duration = d ?? Duration.zero);
      });
      
      // 监听播放进度
      _audioPlayer.positionStream.listen((p) {
        if (!mounted) return;
        setState(() => _position = p);
      });
      
      // 设置初始曲目但不自动播放
      await _setAudioSource(_currentMusicIndex);
    } catch (e) {
      print('音频播放器初始化错误: $e');
    }
  }
  
  // 设置音频源
  Future<void> _setAudioSource(int index) async {
    try {
      final assetPath = _musicList[index]['asset'] ?? '';
      await _audioPlayer.setAsset(assetPath);
      
      // 保存当前播放的索引
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_lastPlayedMusicIndexKey, index);
    } catch (e) {
      print('设置音频源错误: $e');
    }
  }
  
  // 播放/暂停
  void _playPause() {
    if (_isMusicPlaying) {
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
    _currentIndex = previousIndex;
    await _setAudioSource(previousIndex);
    _audioPlayer.play();
  }
  
  // 切换音乐播放器展开/折叠状态
  void _toggleMusicExpanded() {
    setState(() {
      _isExpandedMusic = !_isExpandedMusic;
      if (_isExpandedMusic) {
        _musicExpandController.forward();
      } else {
        _musicExpandController.reverse();
      }
    });
  }
  
  // 时间格式化
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  Future<void> _loadCharacters() async {
    if (!mounted) return;
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
      
      // 4. 为每个角色生成随机但固定的等级 (如果尚未有等级)
      for (var character in allCharacters) {
        if (!_characterLevels.containsKey(character.name)) {
          // 确保每个角色都有一个随机但固定的等级，范围在1-50之间
          _characterLevels[character.name] = Random().nextInt(50) + 1;
        }
      }
      
      if (mounted) {
        setState(() {
          _characters = allCharacters;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      print('Error loading characters: $e');
    }
  }

  void _onPageChanged(int index) async {
    if (_isAnimating) return;  // 如果正在动画中，不处理页面变化
    
    if (!_isVip) {
      _isAnimating = true;
      // 如果不是 VIP 用户，回到原来的位置
      await _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
      _isAnimating = false;
      
      // 显示 VIP 提示
      await _showVipPromptDialog();
      return;
    }
    
    setState(() {
      _currentIndex = index;
    });
  }

  Future<bool> _showVipPromptDialog() async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E1E),
        title: Row(
          children: [
            Icon(Icons.star, color: Color(0xFFFFC107)),
            SizedBox(width: 10),
            Text(
              'Upgrade to VIP',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You\'ve reached the free swipe limit. Upgrade to VIP for unlimited card sliding.',
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.check_circle, color: Color(0xFFE535FA), size: 18),
                SizedBox(width: 10),
                Text('Unlimited avatar changes', style: TextStyle(color: Colors.white70)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.check_circle, color: Color(0xFFE535FA), size: 18),
                SizedBox(width: 10),
                Text('No ads', style: TextStyle(color: Colors.white70)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.check_circle, color: Color(0xFFE535FA), size: 18),
                SizedBox(width: 10),
                Text('Unlimited card sliding', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              'Not Now',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE535FA),
            ),
            onPressed: () async {
              Navigator.of(context).pop(false);
              // 导航到 VIP 订阅页面并等待结果
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VipSubscriptionPage(),
                ),
              );
              // 如果返回后，重新加载 VIP 状态
              if (mounted) {
                await _loadVipStatus();
              }
            },
            child: Text(
              'Upgrade',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ) ?? false;
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
  
  void _toggleMusic() {
    setState(() {
      _isMusicPlaying = !_isMusicPlaying;
      if (_isMusicPlaying) {
        _rotationController.repeat();
      } else {
        _rotationController.stop();
      }
    });
  }

  // 添加新方法处理下一页
  Future<void> _handleNextPage() async {
    if (!_isVip) {
      await _showVipPromptDialog();
      return;
    }
    
    await _pageController.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
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
            // 背景图片 - 使用上下滑动的PageView
            PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.vertical, // 修改为垂直滚动
              onPageChanged: _onPageChanged,
              itemCount: _characters.length,
              // 添加滑动控制，非 VIP 用户只能滑动有限次数
              physics: const AlwaysScrollableScrollPhysics(),
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
                    // 添加粒子效果背景
                    if (index == _currentIndex)
                      Positioned.fill(
                        child: CustomPaint(
                          painter: ParticleEffectPainter(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 左侧用户信息
                    GestureDetector(
                      onTap: () {
                        // 点击头像跳转到角色详情页面
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CharacterDetailPage(character: currentCharacter),
                          ),
                        );
                      },
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                currentCharacter.creator,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '@${currentCharacter.creator.toLowerCase().replaceAll(' ', '_')}',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                    // 右侧关注按钮
                    _followingStatus[currentCharacter.name] == true
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Following',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          // 更新关注状态
                          setState(() {
                            _followingStatus[currentCharacter.name] = true;
                          });
                          
                          // 保存关注状态
                          _saveFollowingStatus();
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Following ${currentCharacter.name}!'),
                              backgroundColor: Colors.pink,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE91E63),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Follow'),
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
                  // 音乐播放按钮
                  _buildMusicButton(),
                  const SizedBox(height: 12),
                  // 喜欢按钮
                  AnimatedBuilder(
                    animation: _pulseAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _pulseAnimation.value,
                        child: _buildCircleButton(
                          'assets/images/conslove_nor.png',
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
                      );
                    }
                  ),
                  const SizedBox(height: 12),
                  // 聊天按钮
                  _buildCircleButton(
                    'assets/images/conschat_nor.png',
                    () {
                      // 导航到聊天页面
                      _navigateToChat();
                    },
                  ),
                  const SizedBox(height: 12),
                  // 关闭按钮 - 使用新的处理方法
                  GestureDetector(
                    onTap: _handleNextPage,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/consclose_nor.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
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
                  // 人物标签
                  Row(
                    children: [
                      _buildTag('AI Character'),
                      const SizedBox(width: 8),
                      Builder(
                        builder: (context) {
                          // Ensure level is computed once and stored
                          final level = _characterLevels[currentCharacter.name] ?? _getRandomLevel(currentCharacter.name);
                          return _buildTag('Level $level');
                        },
                      ),
                      // 为 VIP 用户添加 VIP 标签
                      if (_isVip)
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: _buildTag('VIP', isVip: true),
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),
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
            
            // 添加上下滑动指示器
            Positioned(
              bottom: 100,
              right: 16,
              child: Column(
                children: [
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white.withOpacity(0.7),
                    size: 28,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white.withOpacity(0.7),
                    size: 28,
                  ),
                ],
              ),
            ),
            
            // 为非 VIP 用户添加剩余滑动次数指示器
            if (!_isVip)
              Positioned(
                top: 16 + _statusBarHeight,
                right: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color(0xFFE535FA).withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    'VIP Only',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildMusicButton() {
    return GestureDetector(
      onTap: () {
        // 显示音乐播放器面板而不是简单的播放/暂停
        _showMusicPlayerPanel(context);
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: _isMusicPlaying 
                ? const Color(0xFFE91E63)
                : Colors.white.withOpacity(0.3),
            width: 3,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // 迷你唱片图像
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Center(
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // 旋转环
              if (_isMusicPlaying)
                RotationTransition(
                  turns: _rotationController,
                  child: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              // 播放状态图标
              Icon(
                _isMusicPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
                size: 24,
              ),
              // 显示当前曲目名称（当鼠标悬停或长按时）
              if (_isMusicPlaying)
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 54,
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    color: Colors.black.withOpacity(0.7),
                    child: Text(
                      _musicList[_currentMusicIndex]['title'] ?? '',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
  
  // 显示音乐播放器面板
  void _showMusicPlayerPanel(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                color: Color(0xFF1A1A1A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF2A2A2A), Color(0xFF121212)],
                ),
              ),
              child: Column(
                children: [
                  // 顶部拖动条
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  
                  // 标题栏
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Now Playing',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white60),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                  
                  // 当前播放曲目 - 使用Expanded包裹可滚动内容
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            // 唱片效果
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFFE91E63).withOpacity(0.3),
                                    blurRadius: 20,
                                    spreadRadius: 5,
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors.white10,
                                  width: 10,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    // 唱片内部
                                    Container(
                                      width: 190,
                                      height: 190,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                        backgroundBlendMode: BlendMode.overlay,
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/vinyl_texture.png'),
                                          fit: BoxFit.cover,
                                          onError: (_, __) => print('无法加载唱片纹理图片'),
                                        ),
                                      ),
                                    ),
                                    // 中心小孔
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white10,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.music_note,
                                          color: Color(0xFFE91E63),
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                            const SizedBox(height: 30),
                            
                            // 曲目信息
                            Text(
                              _musicList[_currentMusicIndex]['title'] ?? 'Unknown Track',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'AI Generated Music',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                            
                            const SizedBox(height: 20),
                            
                            // 进度条
                            Column(
                              children: [
                                SliderTheme(
                                  data: SliderThemeData(
                                    trackHeight: 4,
                                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                                    overlayShape: const RoundSliderOverlayShape(overlayRadius: 14),
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
                                      // 更新当前进度显示
                                      setState(() {
                                        _position = Duration(seconds: value.toInt());
                                      });
                                    },
                                    onChangeEnd: (value) {
                                      // 拖动结束后才实际改变播放位置
                                      _audioPlayer.seek(Duration(seconds: value.toInt()));
                                    },
                                  ),
                                ),
                                
                                // 时间显示
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _formatDuration(_position),
                                        style: const TextStyle(
                                          color: Colors.white60,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        _formatDuration(_duration),
                                        style: const TextStyle(
                                          color: Colors.white60,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            
                            // 播放控制按钮
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // 上一首
                                  IconButton(
                                    icon: const Icon(
                                      Icons.skip_previous_rounded,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    onPressed: () {
                                      _playPrevious();
                                      setState(() {}); // 更新UI
                                    },
                                  ),
                                  const SizedBox(width: 20),
                                  
                                  // 播放/暂停
                                  GestureDetector(
                                    onTap: () {
                                      _playPause();
                                      setState(() {}); // 更新UI
                                    },
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color(0xFFE91E63),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xFFE91E63).withOpacity(0.5),
                                            blurRadius: 15,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        _isMusicPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  
                                  // 下一首
                                  IconButton(
                                    icon: const Icon(
                                      Icons.skip_next_rounded,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    onPressed: () {
                                      _playNext();
                                      setState(() {}); // 更新UI
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  // 底部播放列表按钮 - 固定在底部
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 5),
                    child: GestureDetector(
                      onTap: () {
                        _toggleMusicExpanded();
                        Navigator.pop(context); // 关闭当前面板
                        _showPlaylistPanel(context); // 显示播放列表面板
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.queue_music,
                              color: Colors.white70,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'View Playlist',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
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
    );
  }
  
  // 显示播放列表面板
  void _showPlaylistPanel(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return SafeArea(
            bottom: false, // 底部不需要安全区域，因为已经设置了固定高度
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFF1A1A1A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  // 顶部拖动条和标题
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Music Playlist',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white60),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                  
                  // 音乐列表
                  Expanded(
                    child: ListView.builder(
                      itemCount: _musicList.length,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemBuilder: (context, index) {
                        final isPlaying = index == _currentMusicIndex && _isMusicPlaying;
                        final isSelected = index == _currentMusicIndex;
                        
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.black.withOpacity(0.3) : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                            border: isSelected
                                ? Border.all(color: const Color(0xFFE91E63).withOpacity(0.5))
                                : null,
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? const Color(0xFFE91E63).withOpacity(0.2)
                                    : Colors.white10,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                isPlaying ? Icons.equalizer : Icons.music_note,
                                color: isSelected ? const Color(0xFFE91E63) : Colors.white60,
                                size: 20,
                              ),
                            ),
                            title: Text(
                              _musicList[index]['title'] ?? 'Unknown',
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.white70,
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                isPlaying ? Icons.pause_circle_outline : Icons.play_circle_outline,
                                color: isSelected ? const Color(0xFFE91E63) : Colors.white60,
                              ),
                              onPressed: () {
                                if (index == _currentMusicIndex) {
                                  _playPause();
                                } else {
                                  _currentMusicIndex = index;
                                  _setAudioSource(index).then((_) {
                                    _audioPlayer.play();
                                  });
                                }
                                setState(() {}); // 更新UI
                              },
                            ),
                            onTap: () {
                              if (index != _currentMusicIndex) {
                                _currentMusicIndex = index;
                                _setAudioSource(index).then((_) {
                                  _audioPlayer.play();
                                });
                              } else {
                                _playPause();
                              }
                              setState(() {}); // 更新UI
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  
                  // 底部免责声明
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24, top: 8, left: 16, right: 16),
                    child: Text(
                      'All music tracks are AI-generated and used for demo purposes only.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  
  Widget _buildTag(String text, {bool isVip = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: isVip 
            ? Color(0xFFE535FA).withOpacity(0.3) 
            : Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isVip 
              ? Color(0xFFE535FA) 
              : Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isVip ? Color(0xFFE535FA) : Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  Widget _buildCircleButton(String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: () async {
        onPressed();
      },
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

  // 获取随机等级并保存
  int _getRandomLevel(String characterName) {
    // 检查字符是否已有等级
    if (_characterLevels.containsKey(characterName)) {
      return _characterLevels[characterName]!;
    }
    
    // 只有在没有现有等级时才生成新的随机等级
    final level = Random().nextInt(50) + 1;
    _characterLevels[characterName] = level;
    return level;
  }
  
  // 加载关注状态
  Future<void> _loadFollowingStatus() async {
    if (!mounted) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final followingJsonString = prefs.getString(_followingStatusKey);
      
      if (followingJsonString != null && mounted) {
        final Map<String, dynamic> jsonData = json.decode(followingJsonString);
        
        setState(() {
          jsonData.forEach((key, value) {
            _followingStatus[key] = value as bool;
          });
        });
      }
    } catch (e) {
      print('Error loading following status: $e');
    }
  }
  
  // 保存关注状态
  Future<void> _saveFollowingStatus() async {
    if (!mounted) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = json.encode(_followingStatus);
      await prefs.setString(_followingStatusKey, jsonString);
    } catch (e) {
      print('Error saving following status: $e');
    }
  }
}

// 粒子效果绘制器
class ParticleEffectPainter extends CustomPainter {
  final List<Particle> particles = List.generate(30, (_) => Particle());
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.6)
      ..style = PaintingStyle.fill;
    
    for (var particle in particles) {
      final position = particle.position(size);
      canvas.drawCircle(position, particle.size, paint);
    }
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class Particle {
  final double dx = Random().nextDouble();
  final double dy = Random().nextDouble();
  final double size = Random().nextDouble() * 3;
  
  Offset position(Size containerSize) {
    return Offset(dx * containerSize.width, dy * containerSize.height);
  }
} 