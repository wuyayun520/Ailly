import 'package:flutter/foundation.dart';

class Tag {
  int? id;
  String name;

  Tag({
    this.id,
    required this.name,
  });

  // 从Map创建Tag对象(用于数据库操作)
  factory Tag.fromMap(Map<String, dynamic> map) {
    return Tag(
      id: map['id'],
      name: map['name'],
    );
  }

  // 将Tag对象转换为Map(用于数据库操作)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Tag && 
           other.id == id && 
           other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
} 