import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        height: 170,
        width: 350,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Text(
                note.subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Note deleted successfully')),
                  );
                },
                icon: Icon(
                  CupertinoIcons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Text(
              note.date,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
