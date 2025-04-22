import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:ui';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'home_tab_page.dart';
import 'chat_page.dart';
import '../models/chat_history_model.dart';

class CreateTabPage extends StatefulWidget {
  const CreateTabPage({super.key});

  @override
  State<CreateTabPage> createState() => _CreateTabPageState();
}

class _CreateTabPageState extends State<CreateTabPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _backgroundController = TextEditingController();
  final TextEditingController _openingController = TextEditingController();
  
  bool _isGenerating = false;
  bool _isGenerated = false;
  CharacterModel? _generatedCharacter;
  
  // 示例头像图片路径
  final List<String> _sampleAvatars = [
    'assets/images/userInfo/1/user_1.jpg',
    'assets/images/userInfo/2/user_2.jpg',
    'assets/images/userInfo/3/user_3.jpg',
  ];
  
  // 随机选择一个示例头像
  String get _randomAvatar => _sampleAvatars[Random().nextInt(_sampleAvatars.length)];

  String? _selectedImage;

  @override
  void dispose() {
    _nameController.dispose();
    _backgroundController.dispose();
    _openingController.dispose();
    super.dispose();
  }

  // 选择图片
  Future<void> _pickImage() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      
      if (image != null) {
        // 复制图片到应用文档目录
        final String savedImagePath = await _saveImageToDocuments(image.path);
        
        setState(() {
          _selectedImage = savedImagePath;
        });
        print('Image saved to: $_selectedImage');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to pick image: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  
  // 将图片复制到应用的文档目录
  Future<String> _saveImageToDocuments(String imagePath) async {
    final Directory documentsDir = await getApplicationDocumentsDirectory();
    final String fileName = 'user_character_${DateTime.now().millisecondsSinceEpoch}.jpg';
    final String destinationPath = path.join(documentsDir.path, fileName);
    
    // 复制文件
    final File originalFile = File(imagePath);
    await originalFile.copy(destinationPath);
    
    // 返回文件名而不是完整路径，这样在应用重新启动后也能找到
    return fileName;
  }

  // 生成AI角色（模拟）
  void _generateCharacter() {
    if (_nameController.text.isEmpty || 
        _backgroundController.text.isEmpty || 
        _openingController.text.isEmpty) {
      // 显示错误提示
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    setState(() {
      _isGenerating = true;
    });
    
    // 模拟生成过程
    Future.delayed(const Duration(seconds: 2), () {
      // 使用选择的图片或随机头像
      final avatar = _selectedImage ?? _randomAvatar;
      
      // 创建角色对象
      final newCharacter = CharacterModel(
        userId: DateTime.now().millisecondsSinceEpoch.toString(),
        name: _nameController.text,
        avatar: avatar,
        creator: 'You',
        intro: _backgroundController.text.length > 100 
            ? '${_backgroundController.text.substring(0, 100)}...' 
            : _backgroundController.text,
        opening: _openingController.text,
        photochat: [
          {'ask1': avatar, 'ask2': avatar}
        ],
      );
      
      // 保存用户创建的角色到本地存储
      Map<String, dynamic> characterJson = {
        'userId': newCharacter.userId,
        'name': newCharacter.name,
        'avatar': newCharacter.avatar,
        'creator': newCharacter.creator,
        'intro': newCharacter.intro,
        'opening': newCharacter.opening,
        'photochat': newCharacter.photochat,
      };
      
      ChatHistoryModel.saveUserCharacter(characterJson);
      print('Character saved with userId: ${newCharacter.userId}');
      
      setState(() {
        _isGenerating = false;
        _isGenerated = true;
        _generatedCharacter = newCharacter;
      });
    });
  }
  
  // 开始聊天
  void _startChat() {
    if (_generatedCharacter == null) return;
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(character: _generatedCharacter!),
      ),
    );
  }
  
  // 返回编辑界面
  void _backToEdit() {
    setState(() {
      _isGenerated = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _isGenerated 
          ? _buildSuccessView()
          : _buildCreateForm(),
    );
  }
  
  // 创建表单界面
  Widget _buildCreateForm() {
    return SafeArea(
      child: Column(
        children: [
          _buildAppBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 封面图片区域
                  _buildCoverImageSection(),
                  const SizedBox(height: 32),
                  
                  // 名称输入
                  _buildInputField(
                    label: 'Name',
                    controller: _nameController,
                    hintText: 'Enter AI name',
                    maxLength: 30,
                    isRequired: true,
                  ),
                  const SizedBox(height: 16),
                  
                  // 背景输入
                  _buildInputField(
                    label: 'Artificial background',
                    controller: _backgroundController,
                    hintText: 'Please fill in all kinds of information about the AI character you want to set, including background information, character relationships, scene description, etc.',
                    maxLength: 500,
                    isRequired: true,
                    maxLines: 5,
                  ),
                  const SizedBox(height: 16),
                  
                  // 开场白输入
                  _buildInputField(
                    label: 'Opening Statement',
                    controller: _openingController,
                    hintText: "Based on the character's background, describe the opening of an AI character.",
                    maxLength: 100,
                    isRequired: true,
                    maxLines: 3,
                  ),
                  const SizedBox(height: 32),
                  
                  // 确认按钮
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isGenerating ? null : _generateCharacter,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4E91),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        disabledBackgroundColor: const Color(0xFFFF4E91).withOpacity(0.5),
                      ),
                      child: _isGenerating 
                          ? const SizedBox(
                              width: 24, 
                              height: 24, 
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : const Text(
                              'confirm',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  // 生成成功界面
  Widget _buildSuccessView() {
    if (_generatedCharacter == null) return Container();
    
    return SafeArea(
      child: Stack(
        children: [
          // 主体内容
          Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 缩略图和大图
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // 小头像
                            Padding(
                              padding: const EdgeInsets.only(bottom: 240),
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: _selectedImage != null
                                      ? _buildImageFromPath(_selectedImage!)
                                      : Image.asset(
                                          _generatedCharacter!.avatar,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                            ),
                            
                            // 大图和提示文字
                            Container(
                              width: 260,
                              height: 340,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Stack(
                                  children: [
                                    // 大图
                                    _selectedImage != null
                                        ? _buildImageFromPath(_selectedImage!)
                                        : Image.asset(
                                            _generatedCharacter!.avatar,
                                            width: 260,
                                            height: 340,
                                            fit: BoxFit.cover,
                                          ),
                                    
                                    // 渐变遮罩
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      height: 100,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.8),
                                              Colors.transparent,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                    // 祝贺文字
                                    Positioned(
                                      bottom: 16,
                                      left: 16,
                                      right: 16,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Congratulations',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          const Text(
                                            'You created an AI character',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          // 聊天按钮
                                          SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: _startChat,
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color(0xFFFF4E91),
                                                foregroundColor: Colors.white,
                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(100),
                                                ),
                                              ),
                                              child: const Text(
                                                'Chat',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 32),
                      
                      // 表单信息（隐藏）
                      Opacity(
                        opacity: 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildInputField(
                              label: 'Name',
                              controller: _nameController,
                              hintText: 'Enter AI name',
                              maxLength: 30,
                              isRequired: true,
                              enabled: false,
                            ),
                            const SizedBox(height: 16),
                            
                            _buildInputField(
                              label: 'Artificial background',
                              controller: _backgroundController,
                              hintText: '',
                              maxLength: 500,
                              isRequired: true,
                              maxLines: 5,
                              enabled: false,
                            ),
                            const SizedBox(height: 16),
                            
                            _buildInputField(
                              label: 'Opening Statement',
                              controller: _openingController,
                              hintText: '',
                              maxLength: 100,
                              isRequired: true,
                              maxLines: 3,
                              enabled: false,
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 32),
                      
                      // 确认按钮
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF4E91).withOpacity(0.3),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: const Text(
                            'confirm',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
          // 关闭按钮
          Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: _backToEdit,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white.withOpacity(0.5)),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  // 应用栏
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 返回按钮
          GestureDetector(
            onTap: () {
              Navigator.pop(context); // 返回上一页
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.3),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          
          // 标题
          const Text(
            'Edit information',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          // 占位
          const SizedBox(width: 40),
        ],
      ),
    );
  }
  
  // 封面图片区域
  Widget _buildCoverImageSection() {
    return Center(
      child: GestureDetector(
        onTap: _pickImage,
        child: Container(
          width: 132,
          height: 176,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: _selectedImage != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: _buildImageFromPath(_selectedImage!)
                )
              : DashedBorder(
                  color: Colors.white.withOpacity(0.3),
                  strokeWidth: 2,
                  dashPattern: [5, 5],
                  radius: const Radius.circular(16),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4E91).withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add_photo_alternate_outlined,
                            color: Color(0xFFFF4E91),
                            size: 32,
                          ),
                        ),
                        const SizedBox(height: 16),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(text: 'Select Photo '),
                              TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: Color(0xFFFF4E91),
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
  
  // 根据路径构建图片组件
  Widget _buildImageFromPath(String imagePath) {
    try {
      // 检查是否是绝对路径
      if (imagePath.startsWith('/')) {
        // 绝对路径 - 本地文件
        return Image.file(
          File(imagePath),
          width: 132,
          height: 176,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading image file: $error');
            return _buildDefaultImage();
          },
        );
      } else if (imagePath.startsWith('assets/')) {
        // 资源文件路径
        return Image.asset(
          imagePath,
          width: 132,
          height: 176,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildDefaultImage();
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
                width: 132,
                height: 176,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  print('Error loading relative image file: $error');
                  return _buildDefaultImage();
                },
              );
            } else {
              return _buildDefaultImage();
            }
          },
        );
      }
    } catch (e) {
      print('Error building image from path: $e');
      return _buildDefaultImage();
    }
  }
  
  Widget _buildDefaultImage() {
    return Container(
      width: 132,
      height: 176,
      color: Colors.grey.shade800,
      child: const Icon(
        Icons.image,
        color: Colors.white54,
        size: 40,
      ),
    );
  }
  
  // 输入字段
  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    required String hintText,
    required int maxLength,
    bool isRequired = false,
    int maxLines = 1,
    bool enabled = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 标签
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isRequired)
              const Text(
                ' *',
                style: TextStyle(
                  color: Color(0xFFFF4E91),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        
        // 输入框
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: TextField(
            controller: controller,
            enabled: enabled,
            style: const TextStyle(color: Colors.white),
            maxLines: maxLines,
            maxLength: maxLength,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500]),
              border: InputBorder.none,
              counterStyle: TextStyle(color: Colors.grey[500]),
              suffixIcon: controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear, color: Colors.grey),
                      onPressed: enabled ? () => controller.clear() : null,
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}

class DashedBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double strokeWidth;
  final List<double> dashPattern;
  final Radius radius;

  const DashedBorder({
    Key? key,
    required this.child,
    required this.color,
    this.strokeWidth = 1.0,
    this.dashPattern = const [3, 1],
    this.radius = const Radius.circular(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(radius),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(radius),
        ),
        child: CustomPaint(
          painter: _DashPainter(
            color: color,
            strokeWidth: strokeWidth,
            dashPattern: dashPattern,
            radius: radius,
          ),
          child: child,
        ),
      ),
    );
  }
}

class _DashPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final List<double> dashPattern;
  final Radius radius;

  _DashPainter({
    required this.color,
    required this.strokeWidth,
    required this.dashPattern,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(
          strokeWidth / 2,
          strokeWidth / 2,
          size.width - strokeWidth,
          size.height - strokeWidth,
        ),
        radius,
      ));

    final Path dashPath = Path();
    final double dashWidth = dashPattern[0];
    final double dashSpace = dashPattern[1];
    
    for (PathMetric pathMetric in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < pathMetric.length) {
        dashPath.addPath(
          pathMetric.extractPath(distance, distance + dashWidth),
          Offset.zero,
        );
        distance += dashWidth;
        distance += dashSpace;
      }
    }
    
    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(_DashPainter oldDelegate) => true;
} 