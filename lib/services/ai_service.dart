import 'dart:convert';
import 'package:http/http.dart' as http;

class AIService {
  static const String apiKey = '189d98e781a94cbaa6637c756e940b56.BrjEteC5JyI0xz16';
  static const String baseUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';
  
  // 发送请求到智谱AI并获取回复
  static Future<String> getChatResponse(String message, List<Map<String, String>> history) async {
    try {
      // 构建消息历史
      final List<Map<String, String>> messages = [];
      
      // 添加历史对话
      for (final chat in history) {
        messages.add({"role": "user", "content": chat['user'] ?? ''});
        messages.add({"role": "assistant", "content": chat['assistant'] ?? ''});
      }
      
      // 添加当前用户消息
      messages.add({"role": "user", "content": message});
      
      // 构建请求体
      final Map<String, dynamic> requestBody = {
        "model": "glm-4-flash",
        "messages": messages,
        "temperature": 0.7,
        "max_tokens": 800,
        "stream": false,
      };
      
      // 发送API请求
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
        body: jsonEncode(requestBody),
      );
      
      // 检查响应状态
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final content = jsonResponse['choices'][0]['message']['content'];
        return content;
      } else {
        print('API Error: ${response.statusCode} - ${response.body}');
        return "I'm sorry, I couldn't process your request at the moment. Please try again later.";
      }
    } catch (e) {
      print('Error calling AI API: $e');
      return "I'm sorry, there was an error processing your request. Please try again.";
    }
  }
  
  // 获取只含图片描述的响应
  static Future<String> getImageResponse() async {
    try {
      // 构建请求体，请求生成图片描述
      final Map<String, dynamic> requestBody = {
        "model": "glm-4-flash",
        "messages": [
          {"role": "user", "content": "Please describe a random beautiful image in one short paragraph. Keep it brief but vivid."}
        ],
        "temperature": 0.9,
        "max_tokens": 150,
        "stream": false,
      };
      
      // 发送API请求
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
        body: jsonEncode(requestBody),
      );
      
      // 检查响应状态
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final content = jsonResponse['choices'][0]['message']['content'];
        return content;
      } else {
        print('API Error: ${response.statusCode} - ${response.body}');
        return "Here's a beautiful image I found for you.";
      }
    } catch (e) {
      print('Error calling AI API for image description: $e');
      return "Here's a lovely image for you to enjoy.";
    }
  }
} 