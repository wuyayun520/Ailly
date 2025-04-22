import 'package:flutter/material.dart';
import 'pages/home_tab_page.dart';
import 'pages/avatar_tab_page.dart';
import 'pages/create_tab_page.dart';
import 'pages/chats_tab_page.dart';
import 'pages/me_tab_page.dart';
import 'pages/tools_page.dart';
import 'widgets/custom_tab_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  int _previousIndex = 0;
  
  // 定义标签页列表
  final List<Widget> _pages = [
    const AvatarTabPage(),
    ChatsTabPage(key: chatsTabKey), // 使用ChatsTabPage定义的全局Key
    const HomeTabPage(),
    const ToolsPage(),
    const MeTabPage(),
  ];
  
  // 定义标签页标题
  final List<String> _pageTitles = [
    'Character',
    'Messages',
    'Feed',
    'Tools',
    'Profile',
  ];
  
  // 定义标签页图标路径
  final List<String> _normalIcons = [
    'assets/images/tab_nor/btn_tab_avatar_nor.png',
    'assets/images/tab_nor/btn_tab_chats_nor.png',
    'assets/images/tab_nor/btn_tab_home_nor.png',
    'assets/images/tab_nor/btn_tab_create_nor.png',
    'assets/images/tab_nor/btn_tab_me_nor.png',
  ];
  
  final List<String> _selectedIcons = [
    'assets/images/tab_pre/btn_tab_avatar_pre.png',
    'assets/images/tab_pre/btn_tab_chats_pre.png',
    'assets/images/tab_pre/btn_tab_home_pre.png',
    'assets/images/tab_pre/btn_tab_create_pre.png',
    'assets/images/tab_pre/btn_tab_me_pre.png',
  ];
  
  // 定义标签页颜色
  final List<Color> _tabColors = [
    const Color(0xFFE91E63),  // 粉红色 - Character
    const Color(0xFFBBBBBB),  // 灰色 - Messages
    const Color(0xFFBBBBBB),  // 灰色 - Feed
    const Color(0xFFBBBBBB),  // 灰色 - Generate
    const Color(0xFFBBBBBB),  // 灰色 - Profile
  ];
  
  void _onItemTapped(int index) {
    // 保存当前索引
    _previousIndex = _selectedIndex;
    
    setState(() {
      _selectedIndex = index;
    });
    
    // 如果切换到聊天标签页，刷新聊天列表
    if (index == 1) {
      print('Switched to Chats tab, refreshing chat list');
      _refreshChatsTab();
    }
  }
  
  // 刷新聊天标签页
  void _refreshChatsTab() {
    // 使用延迟确保标签页已经构建完成
    Future.delayed(const Duration(milliseconds: 100), () {
      refreshChatsTab(); // 调用静态刷新方法
    });
  }

  @override
  Widget build(BuildContext context) {
    // 获取底部安全区域高度
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    
    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 60 + bottomPadding, // 减小基础高度 + 安全区域高度
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 0,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding), // 适应底部安全区域
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {
              final bool isSelected = index == _selectedIndex;
              
              return GestureDetector(
                onTap: () => _onItemTapped(index),
                child: Image.asset(
                  isSelected ? _selectedIcons[index] : _normalIcons[index],
                  width: 28,
                  height: 28,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      index == 0 ? Icons.person :
                      index == 1 ? Icons.chat :
                      index == 2 ? Icons.home :
                      index == 3 ? Icons.add :
                      Icons.account_circle,
                      size: 28,
                      color: isSelected ? _tabColors[_selectedIndex] : Colors.grey,
                    );
                  },
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
} 