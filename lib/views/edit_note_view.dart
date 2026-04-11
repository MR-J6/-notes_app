import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, this.note});
  static String id = 'EditNoteView';
  final NoteModel? note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title,content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(note: widget.note!),
    );
  }
}
