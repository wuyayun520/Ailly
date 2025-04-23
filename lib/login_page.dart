import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'terms_of_service_page.dart';
import 'privacy_policy_page.dart';
import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _agreementChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121214),
      body: Stack(
        children: [
          // 背景图片
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_login_background.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // 图片加载失败时显示纯色背景
                return Container(color: const Color(0xFF121214));
              },
            ),
          ),
          
          // 内容
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 空间占位，将内容推至中下方
                  const SizedBox(height: 40),
                  
                  // 应用名称和Logo
                  Column(
                    children: [
                      // Logo显示在图片网格上方
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/bg_logo_logo.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              // Logo加载失败时显示一个占位符
                              return Container(
                                color: Colors.white.withOpacity(0.5),
                                child: const Icon(Icons.image_not_supported, size: 40),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'funify',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  
                  // 底部按钮和协议
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        // 'Enter APP' 按钮
                        ElevatedButton(
                          onPressed: _agreementChecked 
                              ? () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const MainPage(),
                                    ),
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            disabledBackgroundColor: Colors.white.withOpacity(0.5),
                            disabledForegroundColor: Colors.black.withOpacity(0.5),
                          ),
                          child: const Text(
                            'Enter APP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // 条款和协议
                        Row(
                          children: [
                            // 复选框
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Checkbox(
                                value: _agreementChecked,
                                onChanged: (value) {
                                  setState(() {
                                    _agreementChecked = value ?? false;
                                  });
                                },
                                side: const BorderSide(color: Colors.white, width: 1.5),
                                checkColor: Colors.black,
                                fillColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return Colors.white;
                                    }
                                    return Colors.transparent;
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            
                            // 条款文本和链接
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'I have read and agree ',
                                    ),
                                    TextSpan(
                                      text: 'Terms of Service',
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => const TermsOfServicePage(),
                                            ),
                                          );
                                        },
                                    ),
                                    const TextSpan(
                                      text: ' and ',
                                    ),
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).push(
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
                          ],
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
    );
  }
} 