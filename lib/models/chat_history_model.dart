import 'dart:convert';
import 'dart:math';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ChatHistoryModel {
  final String userId;
  final String name;
  final String avatar;
  final String lastMessage;
  final String time;
  final List<Map<String, dynamic>> messages;
  bool blocked; // 添加blocked字段表示是否被拉黑

  // 内存中存储聊天历史的静态列表，解决存储可能崩溃的问题
  static final List<ChatHistoryModel> _inMemoryChats = [];
  
  // 文件存储的名称
  static const String _fileName = 'chat_history.json';
  
  // 用户创建的角色存储文件名
  static const String _charactersFileName = 'user_characters.json';
  
  // 内存中存储用户创建的角色
  static final Map<String, Map<String, dynamic>> _userCreatedCharacters = {};

  ChatHistoryModel({
    required this.userId,
    required this.name,
    required this.avatar,
    required this.lastMessage,
    required this.time,
    required this.messages,
    this.blocked = false, // 默认为false，表示未拉黑
  });

  factory ChatHistoryModel.fromJson(Map<String, dynamic> json) {
    try {
      print('Parsing ChatHistoryModel from JSON: userId=${json['userId']}');
      
      // 确保必要字段存在
      final userId = json['userId'] as String? ?? '';
      final name = json['name'] as String? ?? 'Unknown';
      final avatar = json['avatar'] as String? ?? 'assets/default_avatar.png';
      final lastMessage = json['lastMessage'] as String? ?? '';
      final time = json['time'] as String? ?? '00:00';
      
      // 安全解析消息
      List<Map<String, dynamic>> messages = [];
      if (json.containsKey('messages') && json['messages'] != null) {
        try {
          final rawMessages = json['messages'] as List<dynamic>;
          messages = rawMessages.map((msgJson) {
            try {
              final msg = Map<String, dynamic>.from(msgJson as Map);
              // 确保必要字段存在
              if (!msg.containsKey('text')) msg['text'] = '';
              if (!msg.containsKey('isUserMessage')) msg['isUserMessage'] = false;
              return msg;
            } catch (e) {
              print('Error parsing message: $e');
              return {'text': '', 'isUserMessage': false};
            }
          }).toList();
        } catch (e) {
          print('Error parsing messages array: $e');
          // 创建空消息列表
          messages = [];
        }
      }
      
      // 安全解析拉黑状态
      bool blocked = false;
      try {
        blocked = json['blocked'] as bool? ?? false;
      } catch (e) {
        print('Error parsing blocked status: $e');
      }
      
      return ChatHistoryModel(
        userId: userId,
        name: name,
        avatar: avatar,
        lastMessage: lastMessage,
        time: time,
        messages: messages,
        blocked: blocked,
      );
    } catch (e, stackTrace) {
      print('Critical error parsing ChatHistoryModel: $e');
      print('Stack trace: $stackTrace');
      // 返回默认的空模型，避免崩溃
      return ChatHistoryModel(
        userId: '',
        name: 'Error',
        avatar: 'assets/default_avatar.png',
        lastMessage: 'Error loading chat',
        time: '00:00',
        messages: [],
        blocked: false,
      );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'name': name,
      'avatar': avatar,
      'lastMessage': lastMessage,
      'time': time,
      'messages': messages,
      'blocked': blocked, // 保存blocked状态
    };
  }
  
  // 获取存储文件路径
  static Future<File> _getStorageFile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/$_fileName';
      return File(path);
    } catch (e, stackTrace) {
      print('Error getting storage file: $e');
      print('Stack trace: $stackTrace');
      // 获取临时目录作为备用
      final tempDir = await getTemporaryDirectory();
      return File('${tempDir.path}/$_fileName');
    }
  }

  // 保存单个聊天历史
  static Future<void> saveChat(ChatHistoryModel chat) async {
    try {
      print('Saving chat history for userId: ${chat.userId} with ${chat.messages.length} messages');
      
      // 验证数据完整性
      if (chat.userId.isEmpty || chat.name.isEmpty || chat.avatar.isEmpty) {
        print('Warning: Chat has empty required fields - userId: ${chat.userId}, name: ${chat.name}, avatar: ${chat.avatar}');
      }
      
      // 检查消息内容
      for (var i = 0; i < chat.messages.length; i++) {
        final msg = chat.messages[i];
        if (!msg.containsKey('text') || !msg.containsKey('isUserMessage')) {
          print('Warning: Message $i missing required fields: ${msg.keys}');
        }
      }
      
      // 内存存储
      final index = _inMemoryChats.indexWhere((c) => c.userId == chat.userId);
      if (index >= 0) {
        _inMemoryChats[index] = chat;
        print('Updated existing chat in memory at index $index');
      } else {
        _inMemoryChats.add(chat);
        print('Added new chat to memory, total chats: ${_inMemoryChats.length}');
      }
      
      // 尝试持久化存储
      try {
        // 准备安全的JSON数据
        final chatJsonList = _inMemoryChats.map((c) {
          try {
            // 强制验证消息格式
            final messages = c.messages.map((msg) {
              // 确保必要字段存在
              final safeMsg = Map<String, dynamic>.from(msg);
              safeMsg['text'] = safeMsg['text'] ?? '';
              safeMsg['isUserMessage'] = safeMsg['isUserMessage'] ?? false;
              return safeMsg;
            }).toList();
            
            // 创建安全的聊天对象
            final safeChat = {
              'userId': c.userId,
              'name': c.name,
              'avatar': c.avatar,
              'lastMessage': c.lastMessage,
              'time': c.time,
              'messages': messages,
              'blocked': c.blocked,
            };
            
            return safeChat;
          } catch (e) {
            print('Error preparing chat data: $e');
            return null;
          }
        }).where((json) => json != null).cast<Map<String, dynamic>>().toList();
        
        // 获取存储文件
        final file = await _getStorageFile();
        
        // 将数据写入文件
        print('Saving ${chatJsonList.length} chats to file: ${file.path}');
        await file.writeAsString(jsonEncode(chatJsonList));
        print('Successfully saved chats to file');
      } catch (e, stackTrace) {
        print('Warning: Failed to save chats to file: $e');
        print('Stack trace: $stackTrace');
        // 失败不抛出异常，继续使用内存存储
      }
    } catch (e, stackTrace) {
      print('Error saving chat: $e');
      print('Stack trace: $stackTrace');
    }
  }
  
  // 获取所有聊天历史
  static Future<List<ChatHistoryModel>> getChats() async {
    try {
      // 如果内存中已有数据，直接返回
      if (_inMemoryChats.isNotEmpty) {
        print('Returning ${_inMemoryChats.length} chats from memory');
        return List.from(_inMemoryChats);
      }
      
      print('No chats in memory, trying to load from file');
      
      // 尝试从文件读取
      try {
        final file = await _getStorageFile();
        
        // 检查文件是否存在
        if (await file.exists()) {
          print('Chat history file exists: ${file.path}');
          final content = await file.readAsString();
          
          if (content.isNotEmpty) {
            print('Reading chat history from file');
            final List<dynamic> jsonList = jsonDecode(content);
            
            // 清空当前内存数据
            _inMemoryChats.clear();
            
            // 解析JSON并添加到内存
            int successCount = 0;
            for (final json in jsonList) {
              try {
                _inMemoryChats.add(ChatHistoryModel.fromJson(json));
                successCount++;
              } catch (e) {
                print('Warning: Failed to parse chat from file: $e');
              }
            }
            
            print('Successfully loaded $successCount chats from file');
          } else {
            print('Chat history file is empty');
          }
        } else {
          print('Chat history file does not exist, will be created on first save');
        }
        
        return List.from(_inMemoryChats);
      } catch (e, stackTrace) {
        print('Error loading chats from file: $e');
        print('Stack trace: $stackTrace');
        // 出错时返回内存中的数据（可能为空）
        return List.from(_inMemoryChats);
      }
    } catch (e, stackTrace) {
      print('Unexpected error in getChats: $e');
      print('Stack trace: $stackTrace');
      return [];
    }
  }
  
  // 获取特定用户的聊天历史
  static Future<ChatHistoryModel?> getChatByUserId(String userId) async {
    try {
      print('Looking for chat with userId: $userId');
      
      // 先在内存中查找
      final memoryIndex = _inMemoryChats.indexWhere((chat) => chat.userId == userId);
      if (memoryIndex >= 0) {
        print('Found chat in memory at index $memoryIndex');
        return _inMemoryChats[memoryIndex];
      }
      
      print('Chat not found in memory, trying to load from all chats');
      
      // 如果内存中没有，尝试从所有聊天中加载
      try {
        final allChats = await getChats();
        print('Loaded ${allChats.length} total chats');
        
        final index = allChats.indexWhere((chat) => chat.userId == userId);
        if (index >= 0) {
          print('Found chat at index $index in all chats');
          return allChats[index];
        } else {
          print('Chat with userId $userId not found in any storage');
        }
      } catch (e, stackTrace) {
        print('Error getting all chats: $e');
        print('Stack trace: $stackTrace');
      }
      
      return null;
    } catch (e, stackTrace) {
      print('Error getting chat by userId $userId: $e');
      print('Stack trace: $stackTrace');
      return null;
    }
  }
  
  // 设置或更新用户的拉黑状态
  static Future<void> setBlockStatus(String userId, bool blocked) async {
    try {
      print('Setting block status for userId: $userId to $blocked');
      
      // 查找用户
      final allChats = await getChats();
      final index = allChats.indexWhere((chat) => chat.userId == userId);
      
      if (index >= 0) {
        // 找到用户，更新拉黑状态
        allChats[index].blocked = blocked;
        print('Updated block status in all chats');
        
        // 更新内存
        final memoryIndex = _inMemoryChats.indexWhere((chat) => chat.userId == userId);
        if (memoryIndex >= 0) {
          _inMemoryChats[memoryIndex].blocked = blocked;
          print('Updated block status in memory');
        }
        
        // 保存所有聊天内容
        try {
          // 获取存储文件
          final file = await _getStorageFile();
          
          // 将所有聊天转换为JSON
          final chatJsonList = _inMemoryChats.map((c) => c.toJson()).toList();
          
          // 写入文件
          await file.writeAsString(jsonEncode(chatJsonList));
          print('Successfully saved updated block status to file');
        } catch (e, stackTrace) {
          print('Warning: Failed to save block status to file: $e');
          print('Stack trace: $stackTrace');
        }
      } else {
        print('Chat with userId $userId not found, cannot update block status');
      }
    } catch (e, stackTrace) {
      print('Error setting block status: $e');
      print('Stack trace: $stackTrace');
    }
  }

  // 保存用户创建的角色到文件
  static Future<void> saveUserCharacter(Map<String, dynamic> character) async {
    try {
      print('Saving user character: ${character['name']} with userId: ${character['userId']}');
      
      // 检查和处理头像路径
      final String avatarPath = character['avatar'] as String;
      if (avatarPath.startsWith('/')) {
        // 路径是本地文件路径，确保文件存在
        final file = File(avatarPath);
        if (await file.exists()) {
          print('Avatar file exists at: $avatarPath');
          
          // 将图片保存到相对路径而不是绝对路径
          final fileName = avatarPath.split('/').last;
          final directory = await getApplicationDocumentsDirectory();
          final newPath = '${directory.path}/$fileName';
          
          // 如果文件不在正确的位置，复制到新位置
          if (avatarPath != newPath) {
            try {
              await file.copy(newPath);
              print('Copied avatar from $avatarPath to $newPath');
              // 更新路径为相对路径
              character['avatar'] = fileName;
            } catch (e) {
              print('Error copying avatar file: $e');
            }
          } else {
            // 已经在正确位置，更新为相对路径
            character['avatar'] = fileName;
          }
        } else {
          print('Warning: Avatar file does not exist at: $avatarPath');
          character['avatar'] = 'assets/images/default_avatar.jpg';
        }
      }
      
      // 添加到内存缓存
      _userCreatedCharacters[character['userId']] = character;
      
      // 获取存储文件
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_charactersFileName');
      
      // 保存到文件
      await file.writeAsString(jsonEncode(_userCreatedCharacters.values.toList()));
      print('Successfully saved user character to file');
    } catch (e, stackTrace) {
      print('Error saving user character: $e');
      print('Stack trace: $stackTrace');
    }
  }
  
  // 修正角色中的图片路径问题
  static Future<Map<String, dynamic>> _fixImagePaths(Map<String, dynamic> character) async {
    try {
      final String avatarPath = character['avatar'] as String;
      // 如果是相对路径，转换为完整路径
      if (!avatarPath.startsWith('/') && !avatarPath.startsWith('assets/')) {
        final directory = await getApplicationDocumentsDirectory();
        character['avatar'] = '${directory.path}/$avatarPath';
        print('Fixed relative path to: ${character['avatar']}');
      }
      // 检查文件是否存在
      else if (avatarPath.startsWith('/')) {
        final file = File(avatarPath);
        if (!await file.exists()) {
          print('Avatar file not found at: $avatarPath');
          // 尝试查找文件名部分
          final fileName = avatarPath.split('/').last;
          final directory = await getApplicationDocumentsDirectory();
          final newPath = '${directory.path}/$fileName';
          final newFile = File(newPath);
          if (await newFile.exists()) {
            print('Found avatar at new path: $newPath');
            character['avatar'] = newPath;
          } else {
            print('Could not find avatar file anywhere, using default');
            character['avatar'] = 'assets/images/default_avatar.jpg';
          }
        }
      }
      return character;
    } catch (e) {
      print('Error fixing image paths: $e');
      return character;
    }
  }
  
  // 从文件加载用户创建的角色
  static Future<List<Map<String, dynamic>>> loadUserCharacters() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_charactersFileName');
      
      if (!file.existsSync()) {
        print('User characters file does not exist yet');
        return [];
      }
      
      final jsonString = await file.readAsString();
      final List<dynamic> characters = jsonDecode(jsonString);
      
      // 更新内存缓存
      _userCreatedCharacters.clear();
      List<Map<String, dynamic>> fixedCharacters = [];
      
      // 修复每个角色的图片路径
      for (var character in characters) {
        final Map<String, dynamic> fixedCharacter = await _fixImagePaths(Map<String, dynamic>.from(character));
        _userCreatedCharacters[fixedCharacter['userId']] = fixedCharacter;
        fixedCharacters.add(fixedCharacter);
      }
      
      print('Loaded ${characters.length} user characters from file');
      return fixedCharacters;
    } catch (e, stackTrace) {
      print('Error loading user characters: $e');
      print('Stack trace: $stackTrace');
      return [];
    }
  }
  
  // 根据userId获取用户创建的角色
  static Future<Map<String, dynamic>?> getUserCharacterById(String userId) async {
    try {
      // 先从内存缓存中查找
      if (_userCreatedCharacters.containsKey(userId)) {
        var character = _userCreatedCharacters[userId]!;
        // 修复路径问题
        return await _fixImagePaths(character);
      }
      
      // 如果内存缓存中没有，尝试从文件加载
      await loadUserCharacters();
      
      // 再次从内存缓存查找
      if (_userCreatedCharacters.containsKey(userId)) {
        return _userCreatedCharacters[userId];
      }
      return null;
    } catch (e) {
      print('Error getting user character by id: $e');
      return null;
    }
  }

  // 删除指定聊天历史
  static Future<void> deleteChat(String userId) async {
    try {
      print('Deleting chat with userId: $userId');
      
      // 从内存中删除
      _inMemoryChats.removeWhere((chat) => chat.userId == userId);
      
      try {
        // 从文件中删除
        final file = await _getStorageFile();
        if (await file.exists()) {
          // 将修改后的内存数据保存到文件
          final chatJsonList = _inMemoryChats.map((c) => c.toJson()).toList();
          await file.writeAsString(jsonEncode(chatJsonList));
          print('Chat removed from storage file');
        }
      } catch (e) {
        print('Error updating storage file after deletion: $e');
        // 继续执行，即使文件操作失败也算删除成功
      }
      
      print('Chat with userId: $userId deleted successfully');
    } catch (e, stackTrace) {
      print('Error deleting chat: $e');
      print('Stack trace: $stackTrace');
      throw Exception('Failed to delete chat: $e');
    }
  }
} 