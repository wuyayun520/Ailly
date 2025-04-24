import 'package:flutter/material.dart';
import 'pages/home_tab_page.dart';
import 'pages/avatar_tab_page.dart';
import 'pages/create_tab_page.dart';
import 'pages/me_tab_page.dart';
import 'pages/tools_page.dart';
import 'pages/screen/home_screen.dart';
import 'pages/screen/category_screen.dart';

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
    const HomeScreen(),
    const CategoryScreen(),
    const ToolsPage(),
    const AvatarTabPage(),
    const MeTabPage(),
  ];
  
  // 定义标签页标题
  final List<String> _pageTitles = [
    'Notes',
    'Categories',
    'Tools',
    'Character',
    'Profile',
  ];
  
  // 定义标签页图标路径
  final List<String> _normalIcons = [
    'assets/images/tab_nor/conschats_nor.png',
    'assets/images/tab_nor/conshome_nor.png',
    'assets/images/tab_nor/conscreate_nor.png',
    'assets/images/tab_nor/consavatar_nor.png',
    'assets/images/tab_nor/consme_nor.png',
  ];
  
  final List<String> _selectedIcons = [
    'assets/images/tab_pre/conschats_pre.png',
    'assets/images/tab_pre/conshome_pre.png',
    'assets/images/tab_pre/conscreate_pre.png',
    'assets/images/tab_pre/consavatar_pre.png',
    'assets/images/tab_pre/consme_pre.png',
  ];
  
  // 定义标签页颜色
  final List<Color> _tabColors = [
    const Color(0xFFBBBBBB),  // 灰色 - Notes
    const Color(0xFFBBBBBB),  // 灰色 - Categories
    const Color(0xFFBBBBBB),  // 灰色 - Tools
    const Color(0xFF00ACC1),  // 蓝绿色 - Character
    const Color(0xFFBBBBBB),  // 灰色 - Profile
  ];
  
  void _onItemTapped(int index) {
    // 保存当前索引
    _previousIndex = _selectedIndex;
    
    setState(() {
      _selectedIndex = index;
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
                      index == 0 ? Icons.note :
                      index == 1 ? Icons.category :
                      index == 2 ? Icons.add :
                      index == 3 ? Icons.person :
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