import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/note.dart';
import '../../models/note_category.dart';
import '../../providers/note_provider.dart';
import '../../providers/category_provider.dart';
import '../../services/wallet_service.dart';
import 'package:intl/intl.dart';
import 'rich_note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  NoteCategory? _selectedCategory;
  
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<NoteProvider>(context, listen: false).fetchNotes();
      Provider.of<CategoryProvider>(context, listen: false).fetchCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: NoteSearchDelegate(),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Category filter bar
          Consumer<CategoryProvider>(
            builder: (context, categoryProvider, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    FilterChip(
                      label: const Text('All'),
                      selected: _selectedCategory == null,
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = null;
                        });
                      },
                    ),
                    const SizedBox(width: 8),
                    ...categoryProvider.categories.map((category) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          label: Text(category.name),
                          selected: _selectedCategory?.id == category.id,
                          backgroundColor: category.color.withOpacity(0.1),
                          selectedColor: category.color.withOpacity(0.3),
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategory = selected ? category : null;
                            });
                          },
                        ),
                      );
                    }),
                  ],
                ),
              );
            },
          ),
          // Notes list
          Expanded(
            child: Consumer<NoteProvider>(
              builder: (context, noteProvider, child) {
                final notes = _selectedCategory != null
                    ? noteProvider.notes.where((note) => 
                        note.category?.id == _selectedCategory?.id).toList()
                    : noteProvider.notes;

                if (notes.isEmpty) {
                  return const Center(
                    child: Text(
                      'No notes yet. Tap the button below to add one.',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }

                // Separate pinned and unpinned notes
                final pinnedNotes = notes.where((note) => note.isPinned).toList();
                final unpinnedNotes = notes.where((note) => !note.isPinned).toList();

                return ListView(
                  children: [
                    if (pinnedNotes.isNotEmpty) ...[
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Pinned Notes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      ...pinnedNotes.map((note) => _buildNoteCard(context, note)),
                      const Divider(height: 32),
                    ],
                    if (unpinnedNotes.isNotEmpty) ...[
                      if (pinnedNotes.isNotEmpty)
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Other Notes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ...unpinnedNotes.map((note) => _buildNoteCard(context, note)),
                    ],
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'richTextButton',
        onPressed: () async {
          // Check if user has enough credits to create a note
          final hasCredits = await WalletService.checkAndConsumeCredit(
            context, 
            WalletService.homePageViewsKey,
            "note creation"
          );
          
          if (hasCredits) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RichNoteScreen(
                  isNewNote: true,
                ),
              ),
            );
          }
        },
        backgroundColor: const Color(0xFF00ACC1),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildNoteCard(BuildContext context, Note note) {
    final dateFormat = DateFormat('yyyy-MM-dd HH:mm');
    final formattedDate = dateFormat.format(note.modifiedAt);
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: note.isPinned ? 3 : 2,
      child: InkWell(
        onTap: () => _openNote(note),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      note.title.isEmpty ? 'Untitled' : note.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        note.isPinned ? Icons.push_pin : Icons.push_pin_outlined,
                        size: 20,
                        color: note.isPinned ? Colors.blue : Colors.grey,
                      ),
                      onPressed: () => _togglePin(note),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                note.content,
                style: const TextStyle(fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Modified: $formattedDate',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: const Icon(Icons.delete_outline, size: 20),
                      onPressed: () => _showDeleteDialog(context, note),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, Note note) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Delete'),
        content: const Text('Are you sure you want to delete this note? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Provider.of<NoteProvider>(context, listen: false)
                  .deleteNote(note.id!);
              Navigator.of(context).pop();
            },
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _togglePin(Note note) {
    final updatedNote = Note(
      id: note.id,
      title: note.title,
      content: note.content,
      createdAt: note.createdAt,
      modifiedAt: DateTime.now(),
      isPinned: !note.isPinned,
    );
    Provider.of<NoteProvider>(context, listen: false).updateNote(updatedNote);
  }

  void _openNote(Note note) {
    // Always use rich text editor to open notes
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RichNoteScreen(
          isNewNote: false,
          note: note,
        ),
      ),
    );
  }
}

// Add search delegate class
class NoteSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, noteProvider, child) {
        final notes = noteProvider.notes.where((note) {
          return note.title.toLowerCase().contains(query.toLowerCase()) ||
                 note.content.toLowerCase().contains(query.toLowerCase());
        }).toList();

        if (notes.isEmpty) {
          return const Center(
            child: Text('No notes found'),
          );
        }

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes[index];
            return ListTile(
              title: Text(
                note.title.isEmpty ? 'Untitled' : note.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                note.content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                close(context, '');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RichNoteScreen(
                      isNewNote: false,
                      note: note,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
} 