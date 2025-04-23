import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static DatabaseHelper get instance => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'notes_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE categories(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        color INTEGER NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE notes(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        content TEXT,
        richContent TEXT,
        createdAt TEXT,
        modifiedAt TEXT,
        isPinned INTEGER DEFAULT 0,
        categoryId INTEGER,
        FOREIGN KEY (categoryId) REFERENCES categories (id)
      )
    ''');
  }

  // 添加一条笔记
  Future<int> insertNote(Map<String, dynamic> note) async {
    Database db = await database;
    return await db.insert('notes', note);
  }

  // 获取所有笔记
  Future<List<Map<String, dynamic>>> getNotes() async {
    Database db = await database;
    // 使用 LEFT JOIN 查询，这样即使笔记没有分类也能获取到
    final List<Map<String, dynamic>> notes = await db.rawQuery('''
      SELECT notes.*, 
             categories.id as category_id, 
             categories.name as category_name, 
             categories.color as category_color
      FROM notes 
      LEFT JOIN categories ON notes.categoryId = categories.id 
      ORDER BY notes.modifiedAt DESC
    ''');

    // 处理查询结果，将分类信息整合到笔记中
    return notes.map((note) {
      final hasCategory = note['category_id'] != null;
      return {
        'id': note['id'],
        'title': note['title'],
        'content': note['content'],
        'richContent': note['richContent'],
        'createdAt': note['createdAt'],
        'modifiedAt': note['modifiedAt'],
        'isPinned': note['isPinned'],
        'category': hasCategory ? {
          'id': note['category_id'],
          'name': note['category_name'],
          'color': note['category_color'],
        } : null,
      };
    }).toList();
  }

  // 获取单条笔记
  Future<Map<String, dynamic>?> getNote(int id) async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.query(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    return result.isNotEmpty ? result.first : null;
  }

  // 更新笔记
  Future<int> updateNote(Map<String, dynamic> note) async {
    Database db = await database;
    return await db.update(
      'notes',
      note,
      where: 'id = ?',
      whereArgs: [note['id']],
    );
  }

  // 删除笔记
  Future<int> deleteNote(int id) async {
    Database db = await database;
    return await db.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // 添加分类
  Future<int> insertCategory(Map<String, dynamic> category) async {
    Database db = await database;
    return await db.insert('categories', category);
  }

  // 获取所有分类
  Future<List<Map<String, dynamic>>> getCategories() async {
    Database db = await database;
    return await db.query('categories');
  }

  // 更新分类
  Future<int> updateCategory(Map<String, dynamic> category) async {
    Database db = await database;
    return await db.update(
      'categories',
      category,
      where: 'id = ?',
      whereArgs: [category['id']],
    );
  }

  // 删除分类
  Future<int> deleteCategory(int id) async {
    Database db = await database;
    // 先将使用此分类的笔记的 categoryId 设为 null
    await db.update(
      'notes',
      {'categoryId': null},
      where: 'categoryId = ?',
      whereArgs: [id],
    );
    // 然后删除分类
    return await db.delete(
      'categories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}