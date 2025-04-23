import 'package:flutter/material.dart';

class NoteCategory {
  final int? id;
  final String name;
  final Color color;

  NoteCategory({
    this.id,
    required this.name,
    required this.color,
  });

  NoteCategory copyWith({
    int? id,
    String? name,
    Color? color,
  }) {
    return NoteCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NoteCategory && 
           other.id == id && 
           other.name == name && 
           other.color == color;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ color.hashCode;

  factory NoteCategory.fromMap(Map<String, dynamic> map) {
    return NoteCategory(
      id: map['id'],
      name: map['name'],
      color: Color(map['color']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'color': color.value,
    };
  }
} 