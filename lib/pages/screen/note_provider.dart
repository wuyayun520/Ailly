import 'package:flutter/foundation.dart';
import '../models/note.dart';
import '../database/database_helper.dart';

class NoteProvider with ChangeNotifier {
  List<Note> _notes = [];
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;
  
  List<Note> get notes => _notes;

  Future<void> fetchNotes() async {
    final List<Map<String, dynamic>> maps = await _dbHelper.getNotes();
    _notes = maps.map((map) => Note.fromMap(map)).toList();
    notifyListeners();
  }

  Future<void> addNote(Note note) async {
    final id = await _dbHelper.insertNote(note.toMap());
    // 更新ID并添加到列表
    note = Note(
      id: id,
      title: note.title,
      content: note.content,
      richContent: note.richContent,
      createdAt: note.createdAt,
      modifiedAt: note.modifiedAt,
      isPinned: note.isPinned,
      category: note.category,
      tags: note.tags,
    );
    _notes.add(note);
    notifyListeners();
  }

  Future<void> updateNote(Note note) async {
    await _dbHelper.updateNote(note.toMap());
    // 更新列表中的笔记
    final index = _notes.indexWhere((n) => n.id == note.id);
    if (index != -1) {
      _notes[index] = note;
      notifyListeners();
    }
  }

  Future<void> deleteNote(int id) async {
    await _dbHelper.deleteNote(id);
    // 从列表中移除笔记
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }

  Future<void> togglePin(Note note) async {
    final updatedNote = Note(
      id: note.id,
      title: note.title,
      content: note.content,
      richContent: note.richContent,
      createdAt: note.createdAt,
      modifiedAt: DateTime.now(),
      isPinned: !note.isPinned,
      category: note.category,
      tags: note.tags,
    );
    await updateNote(updatedNote);
  }
} 