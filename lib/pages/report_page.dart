import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  int? selectedReasonIndex;
  final TextEditingController _descriptionController = TextEditingController();
  
  final List<String> reportReasons = [
    'Pornographic or vulgar content',
    'Politically sensitive content',
    'Deception and Fraud',
    'Harassment and Threats',
    'Insults and Obscenity',
    'Incorrect Information',
    'Privacy Violation',
    'Plagiarism or Copyright Infringement',
    'Other',
  ];

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Set status bar to transparent with dark icons
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Report',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reason for Report',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // 举报原因选项
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: List.generate(
                    reportReasons.length,
                    (index) => RadioListTile<int>(
                      title: Text(
                        reportReasons[index],
                        style: TextStyle(
                          color: index == selectedReasonIndex
                              ? Colors.pink
                              : Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      value: index,
                      groupValue: selectedReasonIndex,
                      activeColor: Colors.pink,
                      onChanged: (value) {
                        setState(() {
                          selectedReasonIndex = value;
                        });
                      },
                      secondary: index == selectedReasonIndex
                          ? const Icon(Icons.check_circle, color: Colors.pink)
                          : null,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // 其他问题描述
              const Text(
                'Other Issue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _descriptionController,
                  maxLines: 4,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Describe the issue',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // 保存按钮
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // 显示举报成功提示
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Report submitted successfully'),
                        backgroundColor: Color(0xFFE91E63),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    
                    // 短暂延迟后返回上一页
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.pop(context);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE91E63),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 