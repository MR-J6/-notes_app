import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final colors = const [
    Color.from(alpha: 0.9, red: 0.886, green: 0.843, blue: 0.251),
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return NoteItem(color: colors[index]);
      },
    );
  }
}
