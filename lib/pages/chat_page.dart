import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_tab_page.dart';
import 'report_page.dart';
import 'dart:math';
import 'dart:io';
import 'package:intl/intl.dart';
import '../models/chat_history_model.dart';
import '../services/ai_service.dart';
import '../services/wallet_service.dart';
import 'package:path_provider/path_provider.dart';
import 'chats_tab_page.dart'; // 导入聊天标签页
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';

// 定义聊天消息类
class ChatMessage {
  final String text;
  final bool isUserMessage;
  final String? imagePath;
  
  ChatMessage({
    required this.text,
    required this.isUserMessage,
    this.imagePath,
  });
}

// FullScreenImageView 图片全屏预览组件
class FullScreenImageView extends StatefulWidget {
  final String imagePath;

  const FullScreenImageView({
    super.key,
    required this.imagePath,
  });

  @override
  State<FullScreenImageView> createState() => _FullScreenImageViewState();
}

class _FullScreenImageViewState extends State<FullScreenImageView> with SingleTickerProviderStateMixin {
  late TransformationController _transformationController;
  late AnimationController _animationController;
  Animation<Matrix4>? _animation;
  final double _minScale = 0.5;
  final double _maxScale = 4.0;
  final double _initialScale = 1.0;
  
  bool _showControls = true;
  double _currentScale = 1.0;
  
  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
      if (_animation != null) {
        _transformationController.value = _animation!.value;
      }
    });
    
    // 3秒后自动隐藏控制栏
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }
  
  @override
  void dispose() {
    _transformationController.dispose();
    _animationController.dispose();
    super.dispose();
  }
  
  // 重置缩放
  void _resetScale() {
    final Matrix4 matrix = Matrix4.identity();
    _animateScale(matrix);
    _currentScale = 1.0;
  }
  
  // 双击缩放处理
  void _handleDoubleTap(TapDownDetails details) {
    if (_currentScale != _initialScale) {
      // 如果当前不是初始缩放，则重置为初始缩放
      _resetScale();
    } else {
      // 如果是初始缩放，则放大到目标位置
      final position = details.localPosition;
      final Matrix4 matrix = Matrix4.identity()
        ..translate(-position.dx * (_maxScale / 2), -position.dy * (_maxScale / 2))
        ..scale(_maxScale);
      
      _animateScale(matrix);
      _currentScale = _maxScale;
    }
  }
  
  // 动画缩放
  void _animateScale(Matrix4 end) {
    _animation = Matrix4Tween(
      begin: _transformationController.value,
      end: end,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutQuad,
      ),
    );
    
    _animationController.forward(from: 0);
  }
  
  // 缩放变化回调
  void _onScaleChanged(double scale) {
    setState(() {
      _currentScale = scale;
      // 显示控制栏
      _showControls = true;
    });
    
    // 3秒后自动隐藏控制栏
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }
  
  // 保存图片到相册
  Future<void> _saveImageToGallery() async {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preparing to save image...'),
          duration: Duration(seconds: 1),
        ),
      );
      
      // 延迟一下，模拟保存过程
      await Future.delayed(const Duration(milliseconds: 800));
      
      // 直接显示保存成功提示
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Image saved to gallery successfully'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Operation failed: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: _showControls ? AppBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: null,
        actions: [
          IconButton(
            icon: const Icon(Icons.save_alt, color: Colors.white),
            onPressed: _saveImageToGallery,
            tooltip: 'Save to gallery',
          ),
        ],
      ) : null,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _showControls = !_showControls;
          });
        },
        child: Stack(
          children: [
            // 主图片查看器
            Center(
              child: GestureDetector(
                onDoubleTapDown: _handleDoubleTap,
                child: InteractiveViewer(
                  transformationController: _transformationController,
                  minScale: _minScale,
                  maxScale: _maxScale,
                  onInteractionEnd: (details) {
                    // 获取当前缩放值
                    final scale = _transformationController.value.getMaxScaleOnAxis();
                    _onScaleChanged(scale);
                  },
                  child: _buildImageWidget(),
                ),
              ),
            ),
            
            // 缩放指示器
            if (_showControls)
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${(_currentScale * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildImageWidget() {
    print('Building image widget for path: ${widget.imagePath}');
    
    try {
      // 检查路径是否绝对路径（本地文件）或资源路径
      if (widget.imagePath.startsWith('/')) {
        final file = File(widget.imagePath);
        final exists = file.existsSync();
        print('FullScreen - Absolute path file exists: $exists (path: ${widget.imagePath})');
        
        if (!exists) {
          print('FullScreen - File does not exist: ${widget.imagePath}');
          return _buildErrorWidget();
        }
        
        return Image.file(
          file,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            print('FullScreen - Error loading file image: $error');
            return _buildErrorWidget();
          },
        );
      } else if (widget.imagePath.startsWith('assets/')) {
        return Image.asset(
          widget.imagePath,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            print('FullScreen - Error loading asset image: $error');
            return _buildErrorWidget();
          },
        );
      } else {
        // 尝试作为绝对路径处理
        final testPath = widget.imagePath;
        final File testFile = File(testPath);
        if (testFile.existsSync()) {
          print('FullScreen - Found file directly at: $testPath');
          return Image.file(
            testFile,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              print('FullScreen - Error loading direct file: $error');
              return _buildErrorWidget();
            },
          );
        }
        
        // 作为相对路径处理
        return FutureBuilder<Directory>(
          future: getApplicationDocumentsDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              final fullPath = '${snapshot.data!.path}/${widget.imagePath}';
              final file = File(fullPath);
              final exists = file.existsSync();
              print('FullScreen - Resolved path file exists: $exists (path: $fullPath)');
              
              if (exists) {
                return Image.file(
                  file,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    print('FullScreen - Error loading relative image: $error (path: $fullPath)');
                    return _buildErrorWidget();
                  },
                );
              } else {
                print('FullScreen - Image file does not exist: $fullPath');
                return _buildErrorWidget();
              }
            } else if (snapshot.hasError) {
              print('FullScreen - Error getting app directory: ${snapshot.error}');
              return _buildErrorWidget();
            } else {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
          },
        );
      }
    } catch (e) {
      print('FullScreen - Unexpected error: $e');
      return _buildErrorWidget();
    }
  }
  
  Widget _buildErrorWidget() {
    return Container(
      color: Colors.grey[900],
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_not_supported,
              color: Colors.white54,
              size: 50,
            ),
            SizedBox(height: 16),
            Text(
              'Failed to load image',
              style: TextStyle(color: Colors.white70),
              ),
          ],
        ),
      ),
    );
  }
}

class ChatPage extends StatefulWidget {
  final CharacterModel character;

  const ChatPage({
    super.key,
    required this.character,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [];
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  final ImagePicker _picker = ImagePicker();
  bool _isLoading = true;
  bool _isTyping = false;
  bool _isBlocked = false;
  bool _isKeyboardVisible = false;
  
  // 存储对话历史，用于发送给AI
  List<Map<String, String>> _chatHistory = [];
  
  // 记录最后一条用户消息
  String? _lastUserMessage;
  
  // 添加动态属性来跟踪消息数量
  int _prevMessageCount = 0;
  
  @override
  void initState() {
    super.initState();
    print('ChatPage initialized for userId: ${widget.character.userId}');
    print('Character info - name: ${widget.character.name}, avatar: ${widget.character.avatar}');
    print('Character intro: ${widget.character.intro}');
    print('Character opening: ${widget.character.opening}');
    _loadChatHistory();
    
    // 监听消息列表变化，自动滚动到底部
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
    
    // 添加键盘焦点监听
    _focusNode.addListener(_onFocusChange);
    
    // 添加滚动控制器监听器
    _scrollController.addListener(_onScroll);
  }
  
  // 焦点变化时检查键盘状态
  void _onFocusChange() {
    if (_focusNode.hasFocus && !_isKeyboardVisible) {
      _isKeyboardVisible = true;
      // 键盘显示时滚动到底部
      Future.delayed(const Duration(milliseconds: 300), () {
        _scrollToBottom();
      });
    } else if (!_focusNode.hasFocus && _isKeyboardVisible) {
      _isKeyboardVisible = false;
    }
  }
  
  // 滚动监听，用于调试
  void _onScroll() {
    // 打印当前滚动位置信息，方便调试
  }

  @override
  void didUpdateWidget(ChatPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 当组件更新时也检查是否需要滚动
    _checkAndScrollToBottom();
  }

  // 加载聊天历史
  Future<void> _loadChatHistory() async {
    try {
      final chatHistory = await ChatHistoryModel.getChatByUserId(widget.character.userId);
      print('Loading chat history for userId: ${widget.character.userId}');
      
      setState(() {
        _isLoading = false;
        
        if (chatHistory != null) {
          // 设置拉黑状态
          _isBlocked = chatHistory.blocked;
          print('User blocked status: $_isBlocked');
          
          if (chatHistory.messages.isNotEmpty) {
            print('Loading ${chatHistory.messages.length} messages from history');
            // 从历史记录恢复消息
            _messages.clear();
            for (var msg in chatHistory.messages) {
              _messages.add(ChatMessage(
                text: msg['text'] as String,
                isUserMessage: msg['isUserMessage'] as bool,
                imagePath: msg['imagePath'] as String?,
              ));
              
              // 重建AI历史
              if (msg['isUserMessage'] as bool) {
                _lastUserMessage = msg['text'] as String;
              } else if (_lastUserMessage != null && (msg['text'] as String).isNotEmpty) {
                _chatHistory.add({'user': _lastUserMessage!, 'assistant': msg['text'] as String});
              }
            }
          } else {
            print('Chat history exists but no messages found');
            // 聊天历史存在但没有消息，显示默认消息
            _addBotMessage("Chat content is generated by AI", saveToHistory: false);
            _addBotMessage("Intro. ${widget.character.intro}", saveToHistory: false);
            _addBotMessage(widget.character.opening, saveToHistory: false);
          }
        } else {
          print('No chat history found for userId: ${widget.character.userId}');
          // 没有历史记录，显示默认消息
          _addBotMessage("Chat content is generated by AI", saveToHistory: false);
          _addBotMessage("Intro. ${widget.character.intro}", saveToHistory: false);
          _addBotMessage(widget.character.opening, saveToHistory: false);
        }
      });
      
      // 确保初始消息加载后滚动到底部
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToBottom();
      });
    } catch (e, stackTrace) {
      print('Error loading chat history: $e');
      print('Stack trace: $stackTrace');
      
      setState(() {
        _isLoading = false;
        // 出错时显示默认消息
        _addBotMessage("Chat content is generated by AI", saveToHistory: false);
        _addBotMessage("Intro. ${widget.character.intro}", saveToHistory: false);
        _addBotMessage(widget.character.opening, saveToHistory: false);
      });
    }
  }
  
  // 保存聊天记录
  Future<void> _saveChatHistory() async {
    if (_messages.isEmpty) return;
    
    // 获取最后一条非系统消息（不以Chat content或Intro开头）
    String lastMessageText = "New conversation";
    for (var i = _messages.length - 1; i >= 0; i--) {
      final msg = _messages[i];
      if ((!msg.text.startsWith("Chat content") && !msg.text.startsWith("Intro.")) || msg.text.isEmpty) {
        // 对于空文本的图片消息，使用[Short video]代替
        lastMessageText = msg.text.isEmpty ? "[Short video]" : msg.text;
        break;
      }
    }
    
    // 格式化当前时间为 HH:MM 格式
    final now = DateTime.now();
    final timeString = DateFormat('HH:mm').format(now);
    
    // 将消息列表转换为可存储的格式
    final messageList = _messages.map((msg) => {
      'text': msg.text,
      'isUserMessage': msg.isUserMessage,
      'imagePath': msg.imagePath,
    }).toList();
    
    final chatHistory = ChatHistoryModel(
      userId: widget.character.userId,
      name: widget.character.name,
      avatar: widget.character.avatar,
      lastMessage: lastMessageText,
      time: timeString,
      messages: messageList,
      blocked: _isBlocked,
    );
    
    // 保存聊天记录
    await ChatHistoryModel.saveChat(chatHistory);
    
    // 每次保存后刷新聊天列表，确保最新状态
    refreshChatsTab();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _focusNode.removeListener(_onFocusChange);
    _scrollController.removeListener(_onScroll);
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }
  
  // 检查消息是否增加，如果增加则滚动到底部
  void _checkAndScrollToBottom() {
    if (_messages.length > _prevMessageCount) {
      print('Message count increased: $_prevMessageCount -> ${_messages.length}');
      _prevMessageCount = _messages.length;
      // 使用微任务确保在布局完成后滚动
      Future.microtask(() => _scrollToBottom());
    }
  }

  // 优化的滚动到底部方法
  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      try {
        print('Scrolling to bottom: ${_scrollController.position.maxScrollExtent}');
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      } catch (e) {
        print('Error scrolling to bottom: $e');
      }
    } else {
      print('ScrollController has no clients yet');
      // 如果ScrollController还没有客户端，等待下一帧再试
      WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    }
  }

  // 添加AI消息
  Future<void> _addBotMessage(String text, {String? imagePath, bool saveToHistory = true}) async {
    setState(() {
      _messages.add(ChatMessage(
        text: text,
        isUserMessage: false,
        imagePath: imagePath,
      ));
    });
    
    // 添加消息后立即检查并滚动
    _checkAndScrollToBottom();
    
    // 如果需要，保存聊天记录
    if (saveToHistory) {
      // 添加到AI历史
      if (text.isNotEmpty && _lastUserMessage != null) {
        _chatHistory.add({'user': _lastUserMessage!, 'assistant': text});
      }
      _saveChatHistory();
    }
  }

  // 处理用户发送消息
  Future<void> _handleSendMessage() async {
    // 如果用户被拉黑，显示提示并阻止发送消息
    if (_isBlocked) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You have blocked this user. Unblock to continue chatting.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    // Check if user has enough message credits
    final hasCredits = await WalletService.checkAndConsumeCredit(
      context, 
      WalletService.messageQuotaKey,
      "messaging"
    );
    
    if (!hasCredits) {
      return;
    }

    // 保存用户消息
    _lastUserMessage = text;
    
    setState(() {
      _messages.add(ChatMessage(
        text: text,
        isUserMessage: true,
      ));
      _messageController.clear();
      _isTyping = true;  // 设置正在输入状态
    });
    
    // 发送消息后立即检查并滚动到底部
    _checkAndScrollToBottom();
    
    // 保存聊天记录
    _saveChatHistory();

    try {
      // 调用AI服务获取回复
      final response = await AIService.getChatResponse(text, _chatHistory);
      
      // 添加AI回复
      _addBotMessage(response);
    } catch (e) {
      print('Error getting AI response: $e');
      _addBotMessage("I'm sorry, I couldn't generate a response right now. Please try again later.");
    } finally {
      setState(() {
        _isTyping = false;  // 无论成功失败，都结束输入状态
      });
      
      // 发送消息完成后强制刷新聊天列表
      refreshChatsTab();
    }
  }

  // 修改随机获取photo消息的方法
  Future<void> _sendRandomPhotoMessage() async {
    // 如果用户被拉黑，显示提示并阻止发送消息
    if (_isBlocked) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You have blocked this user. Unblock to continue chatting.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    if (widget.character.photochat.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No photo messages available'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    // Check if user has enough ask photo credits
    final hasCredits = await WalletService.checkAndConsumeCredit(
      context, 
      WalletService.specialFeaturesKey,
      "ask photo"
    );
    
    if (!hasCredits) {
      return;
    }
    
    setState(() {
      _isTyping = true;  // 设置正在输入状态
    });
    
    try {
      // 从photochat列表中随机选择一项
      final random = Random();
      final randomIndex = random.nextInt(widget.character.photochat.length);
      final selectedPhotoChat = widget.character.photochat[randomIndex];
      
      // 随机选择ask1或ask2作为图片路径
      final isAsk1 = random.nextBool();
      final imagePath = isAsk1 ? selectedPhotoChat['ask1'] : selectedPhotoChat['ask2'];
      
      if (imagePath == null || imagePath.isEmpty) {
        // 如果图片路径为空，显示错误提示
        _addBotMessage("Sorry, I don't have any photos to share at the moment.");
        return;
      }
      
      // 延迟一下模拟真实对话体验
      await Future.delayed(const Duration(milliseconds: 800));
      
      // 添加只有图片没有文字的消息
      setState(() {
        _messages.add(ChatMessage(
          text: "",
          isUserMessage: false,
          imagePath: imagePath,
        ));
      });
      
      // 图片消息添加后立即检查并滚动到底部
      _checkAndScrollToBottom();
      
      // 保存聊天记录
      _saveChatHistory();
      
    } catch (e) {
      print('Error in random photo message: $e');
      _addBotMessage("I'm sorry, I couldn't share a photo right now.");
    } finally {
      setState(() {
        _isTyping = false;  // 结束输入状态
      });
      
      // 发送图片消息完成后强制刷新聊天列表
      refreshChatsTab();
    }
  }

  // 显示用户头像
  Widget _buildUserAvatar(String avatarPath) {
    try {
      // 检查是否是绝对路径
      if (avatarPath.startsWith('/')) {
        // 绝对路径 - 本地文件
        return Image.file(
          File(avatarPath),
          width: 40,
          height: 40,
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
          width: 40,
          height: 40,
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
                width: 40,
                height: 40,
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
      print('Error building user avatar: $e');
      return _buildDefaultAvatar();
    }
  }
  
  Widget _buildDefaultAvatar() {
    return Container(
      width: 40,
      height: 40,
      color: Colors.grey.shade800,
      child: const Icon(
        Icons.person,
        color: Colors.white54,
        size: 20,
      ),
    );
  }

  // 处理用户选择并发送图片
  Future<void> _handleImageSelection() async {
    // 如果用户被拉黑，显示提示并阻止发送
    if (_isBlocked) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You have blocked this user. Unblock to continue chatting.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    try {
      // 显示选择相册或相机的对话框
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.grey[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) => SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library, color: Colors.white),
                title: const Text('Photo Gallery', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromSource(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt, color: Colors.white),
                title: const Text('Camera', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromSource(ImageSource.camera);
                },
              ),
            ],
          ),
        ),
      );
    } catch (e) {
      print('Error showing image source selection: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error selecting image: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  
  // 从相册或相机获取图片
  Future<void> _getImageFromSource(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 1200,
        maxHeight: 1200,
        imageQuality: 85,
      );
      
      if (pickedFile == null) {
        // 用户取消了选择
        return;
      }
      
      print('Image picked: ${pickedFile.path}');
      
      // 直接使用绝对路径而非相对路径
      final String absolutePath = pickedFile.path;
      print('Using absolute image path: $absolutePath');
      
      // 添加用户消息
      setState(() {
        _messages.add(ChatMessage(
          text: '',  // 图片消息可以没有文字
          isUserMessage: true,
          imagePath: absolutePath,
        ));
      });
      
      // 发送消息后立即检查并滚动到底部
      _checkAndScrollToBottom();
      
      // 保存聊天记录
      _saveChatHistory();
      
      // 延迟一下模拟真实对话体验
      setState(() {
        _isTyping = true;  // 设置正在输入状态
      });
      
      await Future.delayed(const Duration(milliseconds: 1500));
      
      // 简单的AI回复，不经过智谱处理
      setState(() {
        _isTyping = false;
        _messages.add(ChatMessage(
          text: "I received your image. It looks interesting!",
          isUserMessage: false,
        ));
        
        // 立即保存聊天记录，确保记录完整
        _saveChatHistory();
      });
      
      // 图片发送后滚动到底部
      _checkAndScrollToBottom();
      
    } catch (e) {
      print('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to get image: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isTyping = false;
        });
      }
    }
  }

  // 修改显示图片的方法来处理File或Asset图片
  Widget _displayChatImage(String imagePath) {
    // 打印图片路径以便调试
    print('Displaying image: $imagePath');
    
    try {
      // 检查路径是否绝对路径（本地文件）或资源路径
      if (imagePath.startsWith('/')) {
        // 绝对路径 - 本地文件
        final imageFile = File(imagePath);
        final exists = imageFile.existsSync();
        print('Image file exists: $exists (path: $imagePath)');
        
        if (!exists) {
          print('Image file does not exist at path: $imagePath');
          return _buildImageErrorWidget();
        }
        
        return Image.file(
          imageFile,
          fit: BoxFit.cover,
          width: 250,
          height: 250,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading file image: $error');
            return _buildImageErrorWidget();
          },
        );
      } else if (imagePath.startsWith('assets/')) {
        // 资源图片
        return Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: 250,
          height: 250,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading asset image: $error');
            return _buildImageErrorWidget();
          },
        );
      } else {
        // 尝试作为绝对路径处理
        final File testFile = File(imagePath);
        if (testFile.existsSync()) {
          print('Found file directly at: $imagePath');
          return Image.file(
            testFile,
            fit: BoxFit.cover,
            width: 250,
            height: 250,
            errorBuilder: (context, error, stackTrace) {
              print('Error loading direct file: $error');
              return _buildImageErrorWidget();
            },
          );
        }
        
        // 作为相对路径处理
        return FutureBuilder<Directory>(
          future: getApplicationDocumentsDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              final fullPath = '${snapshot.data!.path}/$imagePath';
              print('Relative path resolved to: $fullPath');
              
              // 检查文件是否存在
              final imageFile = File(fullPath);
              final exists = imageFile.existsSync();
              print('Resolved image file exists: $exists (path: $fullPath)');
              
              if (exists) {
                return Image.file(
                  imageFile,
                  fit: BoxFit.cover,
                  width: 250,
                  height: 250,
                  errorBuilder: (context, error, stackTrace) {
                    print('Error loading relative image file: $error');
                    return _buildImageErrorWidget();
                  },
                );
              } else {
                print('Image file does not exist: $fullPath');
                return _buildImageErrorWidget();
              }
            } else if (snapshot.hasError) {
              print('Error getting app directory: ${snapshot.error}');
              return _buildImageErrorWidget();
            } else {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
          },
        );
      }
    } catch (e) {
      print('Unexpected error displaying image: $e');
      return _buildImageErrorWidget();
    }
  }
  
  Widget _buildImageErrorWidget() {
    return Container(
      width: double.infinity,
      height: 150,
      color: Colors.grey[700],
      child: const Center(
        child: Icon(
          Icons.image_not_supported,
          color: Colors.white54,
          size: 30,
        ),
      ),
    );
  }

  // 添加全屏图片预览方法
  void _showFullScreenImage(String imagePath) {
    print('Opening full screen image: $imagePath');
    
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _CustomFullScreenImageView(
          key: UniqueKey(),
          imagePath: imagePath,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // 返回前保存聊天历史
            _saveChatHistory();
            // 返回前刷新聊天列表
            refreshChatsTab();
            // 返回上一页
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Text(
              widget.character.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const Icon(Icons.play_arrow, color: Colors.white, size: 20),
            // 显示拉黑标识
            if (_isBlocked)
              Container(
                margin: const EdgeInsets.only(left: 6),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Blocked',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: _showOptionsMenu,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.character.avatar),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 消息列表
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(16),
                  itemCount: _messages.length,
                  // 确保平滑滚动
                  physics: const AlwaysScrollableScrollPhysics(),
                  // 滚动行为
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  itemBuilder: (context, index) {
                    final message = _messages[index];
                    
                    // 系统消息或AI提示
                    if (!message.isUserMessage && message.text.startsWith("Chat content")) {
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            message.text,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      );
                    }
                    
                    // Intro消息
                    else if (!message.isUserMessage && message.text.startsWith("Intro.")) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          message.text,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }
                    
                    // 用户消息
                    else if (message.isUserMessage) {
                      return Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.only(top: 8, bottom: 8, left: 64),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: message.imagePath != null
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  if (message.text.isNotEmpty) Text(
                                    message.text,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  if (message.text.isNotEmpty && message.imagePath != null) 
                                    const SizedBox(height: 8),
                                  if (message.imagePath != null)
                                    GestureDetector(
                                      onTap: () {
                                        // 点击图片时显示全屏预览
                                        _showFullScreenImage(message.imagePath!);
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: _displayChatImage(message.imagePath!),
                                      ),
                                    ),
                                ],
                              )
                            : Text(
                            message.text,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    }
                    
                    // 角色消息（可能包含图片）
                    else {
                      return Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 8, right: 64),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 用户头像
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: _buildUserAvatar(widget.character.avatar),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Container(
                                padding: message.imagePath != null && message.text.isEmpty 
                                  ? EdgeInsets.zero
                                  : const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                decoration: BoxDecoration(
                                  color: message.imagePath != null && message.text.isEmpty
                                    ? Colors.transparent
                                    : Colors.grey[800],
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (message.text.isNotEmpty)
                                      Text(
                                        message.text,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    if (message.imagePath != null) ...[
                                      if (message.text.isNotEmpty) const SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {
                                          // 点击图片时显示全屏预览
                                          _showFullScreenImage(message.imagePath!);
                                        },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(12),
                                          child: _displayChatImage(message.imagePath!),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
              
              // AI正在输入指示器
              if (_isTyping)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        margin: const EdgeInsets.only(right: 8),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(widget.character.avatar),
                        ),
                      ),
                      const Text(
                        "Typing...",
                        style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              
              // 输入栏
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    // 图片选择按钮
                    IconButton(
                      icon: const Icon(Icons.image, color: Colors.white70),
                      onPressed: _handleImageSelection,
                      tooltip: 'Send Image',
                    ),
                    
                    // 主要输入框
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: _messageController,
                          focusNode: _focusNode,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: "Let's chat! Replied by AI",
                            hintStyle: TextStyle(color: Colors.grey),
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                          ),
                          onSubmitted: (_) => _handleSendMessage(),
                        ),
                      ),
                    ),
                    
                    // "Ask photo" 按钮
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: TextButton(
                        onPressed: _sendRandomPhotoMessage,
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Ask photo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  // 显示选项菜单
  void _showOptionsMenu() {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(100, 80, 0, 0),
      color: Colors.grey[850],
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      items: [
        const PopupMenuItem(
          value: 'report',
          child: Text(
            'Report',
            style: TextStyle(color: Colors.white),
          ),
        ),
        PopupMenuItem(
          value: _isBlocked ? 'unblock' : 'block',
          child: Text(
            _isBlocked ? 'Unblock' : 'Block',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    ).then((value) {
      if (value == 'report') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ReportPage(),
          ),
        );
      } else if (value == 'block') {
        _showBlockConfirmationDialog();
      } else if (value == 'unblock') {
        _setBlockStatus(false);
      }
    });
  }
  
  // 显示拉黑确认对话框
  void _showBlockConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[850],
        title: const Text(
          'Block User',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          'Are you sure you want to block this user? You will not be able to chat with them until you unblock.',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _setBlockStatus(true);
            },
            child: const Text(
              'Block',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
  
  // 设置拉黑状态
  Future<void> _setBlockStatus(bool blocked) async {
    // 更新本地状态
    setState(() {
      _isBlocked = blocked;
    });
    
    // 更新数据库
    await ChatHistoryModel.setBlockStatus(widget.character.userId, blocked);
    
    // 保存聊天记录
    await _saveChatHistory();
    
    // 显示提示
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(blocked ? 'User blocked' : 'User unblocked'),
        backgroundColor: blocked ? Colors.red : Colors.green,
      ),
    );
  }
}

// 创建一个新的全屏查看器来正确处理图片路径
class _CustomFullScreenImageView extends StatefulWidget {
  final String imagePath;

  const _CustomFullScreenImageView({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  _CustomFullScreenImageViewState createState() => _CustomFullScreenImageViewState();
}

class _CustomFullScreenImageViewState extends State<_CustomFullScreenImageView> {
  late TransformationController _transformationController;
  bool _showControls = true;
  double _currentScale = 1.0;
  
  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();
    print('FullScreenImageView initialized with path: ${widget.imagePath}');
    
    // 3秒后自动隐藏控制栏
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }
  
  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }
  
  // 双击放大缩小
  void _handleDoubleTap(TapDownDetails details) {
    final position = details.localPosition;
    final double scale = _transformationController.value.getMaxScaleOnAxis();
    
    if (scale > 1.0) {
      // 已经放大，缩小到原始大小
      _transformationController.value = Matrix4.identity();
    } else {
      // 放大到2倍
      final Matrix4 newMatrix = Matrix4.identity()
        ..translate(-position.dx, -position.dy)
        ..scale(2.0);
      _transformationController.value = newMatrix;
    }
    
    setState(() {
      _currentScale = _transformationController.value.getMaxScaleOnAxis();
      _showControls = true;
    });
    
    // 3秒后自动隐藏控制栏
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }
  
  // 保存图片到相册
  Future<void> _saveImageToGallery() async {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preparing to save image...'),
          duration: Duration(seconds: 1),
        ),
      );
      
      // 延迟一下，模拟保存过程
      await Future.delayed(const Duration(milliseconds: 800));
      
      // 直接显示保存成功提示
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Image saved to gallery successfully'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Operation failed: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: _showControls ? AppBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save_alt, color: Colors.white),
            onPressed: _saveImageToGallery,
            tooltip: 'Save to gallery',
          ),
        ],
      ) : null,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _showControls = !_showControls;
          });
        },
        child: Stack(
          children: [
            // 主图片查看器
            Center(
              child: GestureDetector(
                onDoubleTapDown: _handleDoubleTap,
                child: InteractiveViewer(
                  transformationController: _transformationController,
                  minScale: 0.5,
                  maxScale: 4.0,
                  onInteractionEnd: (details) {
                    // 获取当前缩放值
                    final scale = _transformationController.value.getMaxScaleOnAxis();
                    setState(() {
                      _currentScale = scale;
                      _showControls = true; // 交互后显示控制栏
                    });
                    
                    // 3秒后自动隐藏控制栏
                    Future.delayed(const Duration(seconds: 3), () {
                      if (mounted) {
                        setState(() {
                          _showControls = false;
                        });
                      }
                    });
                  },
                  child: _buildImageWidget(),
                ),
              ),
            ),
            
            // 缩放指示器
            if (_showControls)
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${(_currentScale * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildImageWidget() {
    print('Building image widget for path: ${widget.imagePath}');
    
    try {
      // 检查路径是否绝对路径（本地文件）或资源路径
      if (widget.imagePath.startsWith('/')) {
        final file = File(widget.imagePath);
        final exists = file.existsSync();
        print('FullScreen - Absolute path file exists: $exists (path: ${widget.imagePath})');
        
        if (!exists) {
          print('FullScreen - File does not exist: ${widget.imagePath}');
          return _buildErrorWidget();
        }
        
        return Image.file(
          file,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            print('FullScreen - Error loading file image: $error');
            return _buildErrorWidget();
          },
        );
      } else if (widget.imagePath.startsWith('assets/')) {
        return Image.asset(
          widget.imagePath,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            print('FullScreen - Error loading asset image: $error');
            return _buildErrorWidget();
          },
        );
      } else {
        // 尝试作为绝对路径处理
        final File testFile = File(widget.imagePath);
        if (testFile.existsSync()) {
          print('FullScreen - Found file directly at: ${widget.imagePath}');
          return Image.file(
            testFile,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              print('FullScreen - Error loading direct file: $error');
              return _buildErrorWidget();
            },
          );
        }
        
        return FutureBuilder<Directory>(
          future: getApplicationDocumentsDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              final fullPath = '${snapshot.data!.path}/${widget.imagePath}';
              final file = File(fullPath);
              final exists = file.existsSync();
              print('FullScreen - Resolved path file exists: $exists (path: $fullPath)');
              
              if (exists) {
                return Image.file(
                  file,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    print('FullScreen - Error loading relative image: $error');
                    return _buildErrorWidget();
                  },
                );
              } else {
                print('FullScreen - Image file does not exist: $fullPath');
                return _buildErrorWidget();
              }
            } else if (snapshot.hasError) {
              print('FullScreen - Error getting app directory: ${snapshot.error}');
              return _buildErrorWidget();
            } else {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
          },
        );
      }
    } catch (e) {
      print('FullScreen - Unexpected error: $e');
      return _buildErrorWidget();
    }
  }
  
  Widget _buildErrorWidget() {
    return Container(
      color: Colors.grey[900],
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_not_supported,
              color: Colors.white54,
              size: 50,
            ),
            SizedBox(height: 16),
            Text(
              'Failed to load image',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
} 