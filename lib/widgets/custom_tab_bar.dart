import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final List<String> normalIcons;
  final List<String> selectedIcons;
  final List<String> titles;

  const CustomTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.normalIcons,
    required this.selectedIcons,
    required this.titles,
  });

  @override
  Widget build(BuildContext context) {
    // 获取底部安全区域高度
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    
    return Container(
      height: 70 + bottomPadding, // 基础高度 + 安全区域高度
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
          children: List.generate(titles.length, (index) {
            final bool isSelected = index == selectedIndex;
            Color textColor;
            
            // 根据选中的标签页设置颜色
            if (isSelected) {
              if (index == 0) {
                textColor = const Color(0xFFE91E63); // 粉红色 - Home
              } else {
                textColor = Colors.white; // 其他标签页选中时为白色
              }
            } else {
              textColor = Colors.grey; // 未选中时为灰色
            }
            
            return GestureDetector(
              onTap: () => onTap(index),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isSelected ? selectedIcons[index] : normalIcons[index],
                    width: 24,
                    height: 24,
                    errorBuilder: (context, error, stackTrace) {
                      // 图片加载失败时显示占位图标
                      return Icon(
                        index == 0 ? Icons.home :
                        index == 1 ? Icons.person :
                        index == 2 ? Icons.add :
                        index == 3 ? Icons.chat :
                        Icons.account_circle,
                        size: 24,
                        color: textColor,
                      );
                    },
                  ),
                  const SizedBox(height: 4),
                  Text(
                    titles[index],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
} 