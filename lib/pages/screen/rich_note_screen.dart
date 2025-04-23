import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'dart:convert';
import '../../models/note.dart';
import '../../database/database_helper.dart';
import '../../models/note_category.dart';
import 'package:provider/provider.dart';
import '../../providers/category_provider.dart';
import '../../providers/note_provider.dart';

class RichNoteScreen extends StatefulWidget {
  final Note? note;
  final bool isNewNote;

  const RichNoteScreen({
    Key? key,
    this.note,
    this.isNewNote = false,
  }) : super(key: key);

  @override
  _RichNoteScreenState createState() => _RichNoteScreenState();
}

class _RichNoteScreenState extends State<RichNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  late quill.QuillController _quillController;
  bool _isPreviewMode = false;
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  NoteCategory? _selectedCategory;

  @override
  void initState() {
    super.initState();
    
    // Initialize rich text editor controller
    if (widget.note != null && widget.note!.content.isNotEmpty) {
      try {
        // Try to parse content from JSON
        final document = quill.Document.fromJson(
          jsonDecode(widget.note!.richContent ?? '[{"insert":"${widget.note!.content}\\n"}]')
        );
        _quillController = quill.QuillController(
          document: document,
          selection: const TextSelection.collapsed(offset: 0),
        );
      } catch (e) {
        // If parsing fails, create a new document with the original content
        _quillController = quill.QuillController.basic();
        _quillController.document.insert(0, widget.note!.content);
      }

      _titleController.text = widget.note!.title;
    } else {
      _quillController = quill.QuillController.basic();
    }
  }

  Widget _buildCategorySelector() {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        // Ensure there are no duplicate categories in the list
        final uniqueCategories = categoryProvider.categories
            .toSet()
            .toList(); // Use Set to deduplicate

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DropdownButtonFormField<NoteCategory?>(
            value: _selectedCategory,
            decoration: const InputDecoration(
              labelText: 'Select Category',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            items: [
              const DropdownMenuItem<NoteCategory?>(
                value: null,
                child: Text('No Category'),
              ),
              ...uniqueCategories.map((category) {
                // Use category.id as key to ensure uniqueness
                return DropdownMenuItem<NoteCategory>(
                  key: ValueKey(category.id),
                  value: category,
                  child: Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: category.color,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(category.name),
                    ],
                  ),
                );
              }),
            ],
            onChanged: (value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.isNewNote ? 'New Note' : 'Edit Note'),
        backgroundColor: const Color(0xFF00ACC1),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(_isPreviewMode ? Icons.edit : Icons.preview),
            onPressed: () {
              setState(() {
                _isPreviewMode = !_isPreviewMode;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveNote,
          ),
        ],
      ),
      body: SafeArea(
        bottom: true, // Ensure bottom has safe area, not obscured by system UI
        child: FutureBuilder<List<NoteCategory>>(
          future: Provider.of<CategoryProvider>(context, listen: false).fetchCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // Set _selectedCategory after categories list is loaded
              if (widget.note?.category != null && _selectedCategory == null) {
                _selectedCategory = snapshot.data!.firstWhere(
                  (category) => category.id == widget.note!.category!.id,
                  orElse: () => snapshot.data!.first,
                );
              }

              return Stack(
                children: [
                  SingleChildScrollView(
                    // Add bottom padding to ensure editing area isn't obscured by keyboard
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom + 100,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _titleController,
                            decoration: const InputDecoration(
                              hintText: 'Enter title',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            ),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        _buildCategorySelector(),
                        const SizedBox(height: 12),
                        if (!_isPreviewMode) 
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFF00ACC1).withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: quill.QuillToolbar.simple(
                              configurations: quill.QuillSimpleToolbarConfigurations(
                                controller: _quillController,
                                multiRowsDisplay: false,
                                showDividers: true,
                                showFontFamily: true,
                                showFontSize: true,
                                showBoldButton: true,
                                showItalicButton: true,
                                showUnderLineButton: true,
                                showStrikeThrough: true,
                                showInlineCode: true,
                                showColorButton: true,
                                showBackgroundColorButton: true,
                                showClearFormat: true,
                                showAlignmentButtons: true,
                                showLeftAlignment: true,
                                showCenterAlignment: true,
                                showRightAlignment: true,
                                showJustifyAlignment: true,
                                showHeaderStyle: true,
                                showListNumbers: true,
                                showListBullets: true,
                                showListCheck: true,
                                showCodeBlock: true,
                                showQuote: true,
                                showIndent: true,
                                showLink: true,
                              ),
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          // Set fixed height to avoid content area being too small
                          height: 300,
                          child: quill.QuillEditor(
                            focusNode: _focusNode,
                            scrollController: _scrollController,
                            configurations: quill.QuillEditorConfigurations(
                              controller: _quillController,
                              placeholder: 'Enter content...',
                              scrollable: true,
                              autoFocus: false,
                              expands: false,
                              padding: const EdgeInsets.all(0),
                              enableSelectionToolbar: true,
                              showCursor: true,
                              onTapOutside: (_, __) => _focusNode.unfocus(),
                            ),
                          ),
                        ),
                        // Add extra bottom spacing to ensure content isn't obscured by keyboard
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<void> _saveNote() async {
    final String title = _titleController.text.trim();
    final String content = _quillController.document.root.children
        .map((node) => node.toPlainText())
        .join('\n')
        .trim();
    final String richContent = jsonEncode(_quillController.document.toDelta().toJson());
    
    if (title.isEmpty && content.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Title and content cannot both be empty')),
      );
      return;
    }

    try {
      if (widget.note == null) {
        // Create new note
        final note = Note(
          title: title,
          content: content,
          richContent: richContent,
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          isPinned: false,
          category: _selectedCategory,
        );
        await _databaseHelper.insertNote(note.toMap());
        // Notify Provider to refresh note list
        if (mounted) {
          Provider.of<NoteProvider>(context, listen: false).fetchNotes();
        }
      } else {
        // Update existing note
        final updatedNote = Note(
          id: widget.note!.id,
          title: title,
          content: content,
          richContent: richContent,
          createdAt: widget.note!.createdAt,
          modifiedAt: DateTime.now(),
          isPinned: widget.note!.isPinned,
          category: _selectedCategory,
        );
        await _databaseHelper.updateNote(updatedNote.toMap());
        // Notify Provider to refresh note list
        if (mounted) {
          Provider.of<NoteProvider>(context, listen: false).fetchNotes();
        }
      }
      
      if (mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Save failed: ${e.toString()}')),
        );
      }
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _quillController.dispose();
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}