import 'package:flutter/foundation.dart';
import '../models/note_category.dart';
import '../database/database_helper.dart';

class CategoryProvider with ChangeNotifier {
  List<NoteCategory> _categories = [];
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  List<NoteCategory> get categories => _categories;

  Future<List<NoteCategory>> fetchCategories() async {
    final List<Map<String, dynamic>> maps = await _dbHelper.getCategories();
    _categories = maps.map((map) => NoteCategory.fromMap(map)).toList();
    notifyListeners();
    return _categories;
  }

  Future<void> addCategory(NoteCategory category) async {
    final id = await _dbHelper.insertCategory(category.toMap());
    category = NoteCategory(
      id: id,
      name: category.name,
      color: category.color,
    );
    _categories.add(category);
    notifyListeners();
  }

  Future<void> updateCategory(NoteCategory category) async {
    await _dbHelper.updateCategory(category.toMap());
    final index = _categories.indexWhere((c) => c.id == category.id);
    if (index != -1) {
      _categories[index] = category;
      notifyListeners();
    }
  }

  Future<void> deleteCategory(int id) async {
    await _dbHelper.deleteCategory(id);
    _categories.removeWhere((category) => category.id == id);
    notifyListeners();
  }
} 