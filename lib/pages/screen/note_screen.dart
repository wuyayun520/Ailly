import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/note.dart';
import '../../models/note_category.dart';
import '../../providers/note_provider.dart';
import '../../providers/category_provider.dart';

class NoteScreen extends StatefulWidget {
  final bool isNewNote;
  final Note? note;

  const NoteScreen({
    Key? key,
    required this.isNewNote,
    this.note,
  }) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  bool _isModified = false;
  NoteCategory? _selectedCategory;
  final FocusNode _contentFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (!widget.isNewNote && widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
      _selectedCategory = widget.note!.category;
    }

    // Listen for text changes
    _titleController.addListener(_onTextChanged);
    _contentController.addListener(_onTextChanged);
    
    // Listen for keyboard appearance and auto-scroll to input area
    _contentFocusNode.addListener(() {
      if (_contentFocusNode.hasFocus) {
        // Short delay to ensure keyboard is fully shown
        Future.delayed(const Duration(milliseconds: 300), () {
          if (_scrollController.hasClients) {
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
            );
          }
        });
      }
    });
  }
  
  void _onTextChanged() {
    if (widget.isNewNote) {
      // For new notes, mark as modified if there's any content
      setState(() {
        _isModified = _titleController.text.isNotEmpty || 
                      _contentController.text.isNotEmpty;
      });
    } else {
      // For existing notes, compare with original content
      setState(() {
        _isModified = _titleController.text != widget.note!.title || 
                      _contentController.text != widget.note!.content;
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    _contentFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildCategorySelector() {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        // Ensure no duplicate categories in the list
        final uniqueCategories = categoryProvider.categories
            .toSet()
            .toList(); // Use Set to deduplicate

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DropdownButtonFormField<NoteCategory?>(
            value: _selectedCategory,
            decoration: const InputDecoration(
              labelText: 'Select Category',
              border: UnderlineInputBorder(),
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
                _isModified = true;
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.isNewNote ? 'New Note' : 'Edit Note'),
          actions: [
            if (_isModified)
              IconButton(
                icon: const Icon(Icons.save),
                onPressed: _saveNote,
              ),
          ],
        ),
        // Use resizeToAvoidBottomInset to ensure content area adjusts when keyboard appears
        resizeToAvoidBottomInset: true,
        // Use SingleChildScrollView to wrap the main content, ensuring it can scroll
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16),
                ),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              _buildCategorySelector(),
              const Divider(),
              // Use Expanded + ListView instead of TextField's expands property
              Expanded(
                child: ListView(
                  controller: _scrollController,
                  children: [
                    TextField(
                      controller: _contentController,
                      focusNode: _contentFocusNode,
                      decoration: const InputDecoration(
                        hintText: 'Enter content here...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16),
                      ),
                      style: const TextStyle(fontSize: 16),
                      maxLines: null, // Allow multiple lines
                      keyboardType: TextInputType.multiline, // Multiline input keyboard
                    ),
                    // Add extra padding to ensure input area isn't obscured by keyboard
                    const SizedBox(height: 200),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (!_isModified) return true;
    
    // Show save prompt
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false, // Cannot close by tapping outside
      builder: (context) => AlertDialog(
        title: const Text('Save Changes'),
        content: const Text('You have unsaved changes. Would you like to save them?'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Discard'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Save'),
          ),
        ],
      ),
    );
    
    if (result == true) {
      _saveNote();
    }
    
    return true;
  }

  void _saveNote() {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();
    
    if (content.isEmpty && title.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Note content cannot be empty')),
      );
      return;
    }
    
    final now = DateTime.now();
    
    if (widget.isNewNote) {
      final newNote = Note(
        title: title,
        content: content,
        createdAt: now,
        modifiedAt: now,
        category: _selectedCategory,
      );
      
      Provider.of<NoteProvider>(context, listen: false).addNote(newNote);
    } else {
      final updatedNote = Note(
        id: widget.note!.id,
        title: title,
        content: content,
        createdAt: widget.note!.createdAt,
        modifiedAt: now,
        isPinned: widget.note!.isPinned,
        category: _selectedCategory,
      );
      
      Provider.of<NoteProvider>(context, listen: false).updateNote(updatedNote);
    }
    
    Navigator.pop(context);
  }
} 