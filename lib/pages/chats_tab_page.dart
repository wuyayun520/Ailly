import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/chat_history_model.dart';
import 'chat_page.dart';
import 'home_tab_page.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ChatsTabPage extends StatefulWidget {
  const ChatsTabPage({Key? key}) : super(key: key);

  @override
  State<ChatsTabPage> createState() => _ChatsTabPageState();
}

// 静态方法，可以从外部调用
void refreshChatsTab() {
  // 这个方法将在外部调用，但现在我们将其空置
  // 实际的刷新逻辑会在State中处理
}

class _ChatsTabPageState extends State<ChatsTabPage> with AutomaticKeepAliveClientMixin {
  List<ChatHistoryModel> _chatHistories = [];
  bool _isLoading = true;

  @override
  bool get wantKeepAlive => true; // 确保页面保持状态

  @override
  void initState() {
    super.initState();
    _refreshChatHistories();
  }
  
  // 刷新聊天历史
  Future<void> _refreshChatHistories() async {
    try {
      setState(() {
        _isLoading = true;
      });
      
      final histories = await ChatHistoryModel.getChats();
      
      if (mounted) {
        setState(() {
          _chatHistories = histories;
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error refreshing chat histories: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
  
  // 页面成为可见时刷新数据
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 每次依赖变化时尝试刷新
    _refreshChatHistories();
  }
  
  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用
    
    return Scaffold(
      backgroundColor: Colors.black,
      // 添加AppBar与返回按钮
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Messages',
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
      body: _buildBody(),
    );
  }
  
  // 将主体内容分离到单独的方法中
  Widget _buildBody() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Color(0xFFE91E63),
        ),
      );
    }

    if (_chatHistories.isEmpty) {
      return const Center(
        child: Text(
          'No chats yet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
    }

    return RefreshIndicator(
      color: const Color(0xFFE91E63),
      onRefresh: _refreshChatHistories,
      child: ListView.builder(
        itemCount: _chatHistories.length,
        itemBuilder: (context, index) {
          final chat = _chatHistories[index];
          return Dismissible(
            key: Key(chat.userId),
            direction: DismissDirection.endToStart, // 从右向左滑动
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            confirmDismiss: (direction) async {
              // 显示确认对话框
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: const Color(0xFF1E1E1E),
                    title: const Text(
                      'Delete Chat',
                      style: TextStyle(color: Colors.white),
                    ),
                    content: const Text(
                      'Are you sure you want to delete this chat?',
                      style: TextStyle(color: Colors.white70),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text(
                          'Delete',
                          style: TextStyle(color: Color(0xFFE91E63)),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            onDismissed: (direction) {
              // 删除聊天记录
              _deleteChat(chat.userId);
            },
            child: ChatListItem(
              chat: chat,
              onTap: () async {
                print('Tapped on chat with userId: ${chat.userId}');
                // 查找角色信息 - 这里需要确保正确加载角色信息，特别是intro和opening
                final character = await _loadCharacterFromJson(chat.userId);
                
                if (character != null) {
                  print('Opening chat with character: ${character.name}, userId: ${character.userId}');
                  print('Character intro: ${character.intro}');
                  print('Character opening: ${character.opening}');
                  
                  // 跳转到聊天页面
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(character: character),
                    ),
                  );
                  
                  // 返回后刷新列表
                  print('Returned from chat page, refreshing chat list');
                  _refreshChatHistories();
                }
              },
            ),
          );
        },
      ),
    );
  }
  
  // 从JSON文件加载角色完整信息
  Future<CharacterModel?> _loadCharacterFromJson(String userId) async {
    try {
      print('Loading full character info from JSON for userId: $userId');
      
      // 1. 首先从预设角色JSON中查找
      final jsonString = await DefaultAssetBundle.of(context).loadString('assets/json/modern.json');
      final jsonData = json.decode(jsonString);
      final charactersList = jsonData['alldata'] as List;
      
      // 查找匹配的角色
      dynamic characterData;
      for (final item in charactersList) {
        if (item['userId'] == userId) {
          characterData = item;
          break;
        }
      }
      
      if (characterData != null) {
        print('Found character in JSON: ${characterData['name']}');
        return CharacterModel.fromJson(characterData);
      } else {
        print('Character with userId $userId not found in JSON, checking user-created characters');
        
        // 2. 如果预设角色中未找到，尝试从用户创建的角色中查找
        final userCharacter = await ChatHistoryModel.getUserCharacterById(userId);
        if (userCharacter != null) {
          print('Found user-created character: ${userCharacter['name']}');
          return CharacterModel.fromJson(userCharacter);
        } else {
          print('Character with userId $userId not found in user-created characters');
          return null;
        }
      }
    } catch (e) {
      print('Error loading character from JSON: $e');
      return null;
    }
  }
  
  // 删除聊天记录
  Future<void> _deleteChat(String userId) async {
    try {
      print('Deleting chat with userId: $userId');
      
      // 从内存和存储中删除
      await ChatHistoryModel.deleteChat(userId);
      
      // 从列表中移除并更新状态
      setState(() {
        _chatHistories.removeWhere((chat) => chat.userId == userId);
      });
      
      print('Chat deleted successfully');
    } catch (e) {
      print('Error deleting chat: $e');
      // 显示错误提示
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete chat: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}

class ChatListItem extends StatelessWidget {
  final ChatHistoryModel chat;
  final VoidCallback onTap;

  const ChatListItem({
    super.key,
    required this.chat,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // 头像
            Container(
              width: 56,
              height: 56,
              margin: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: _buildAvatar(chat.avatar),
              ),
            ),
            // 聊天信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        chat.time,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    chat.lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
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
  
  Widget _buildAvatar(String avatarPath) {
    try {
      // 检查是否是本地文件路径
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
      print('Error building avatar: $e');
      return _buildDefaultAvatar();
    }
  }
  
  Widget _buildDefaultAvatar() {
    return Container(
      color: Colors.grey.shade800,
      child: const Icon(
        Icons.person,
        color: Colors.white54,
        size: 30,
      ),
    );
  }
} 