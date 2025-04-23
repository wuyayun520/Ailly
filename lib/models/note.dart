import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'note_category.dart';
import 'tag.dart';

class Note {
  int? id;
  String title;
  String content;      // 纯文本内容
  String? richContent; // 富文本内容 (JSON 字符串)
  DateTime createdAt;
  DateTime modifiedAt;
  bool isPinned;
  NoteCategory? category;
  List<Tag> tags;

  Note({
    this.id,
    required this.title,
    required this.content,
    this.richContent,
    required this.createdAt,
    required this.modifiedAt,
    this.isPinned = false,
    this.category,
    List<Tag>? tags,
  }) : tags = tags ?? [];

  // 从Map创建Note对象(用于数据库操作)
  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      richContent: map['richContent'],
      createdAt: DateTime.parse(map['createdAt']),
      modifiedAt: DateTime.parse(map['modifiedAt']),
      isPinned: map['isPinned'] == 1,
      category: map['category'] != null ? NoteCategory.fromMap(map['category']) : null,
      tags: (map['tags'] as List?)?.map((tag) => Tag.fromMap(tag)).toList() ?? [],
    );
  }

  // 将Note对象转换为Map(用于数据库操作)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'richContent': richContent,
      'createdAt': createdAt.toIso8601String(),
      'modifiedAt': modifiedAt.toIso8601String(),
      'isPinned': isPinned ? 1 : 0,
      'categoryId': category?.id,
    };
  }
} 