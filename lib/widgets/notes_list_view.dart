import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(note: notes[index]);
          },
        );
      },
    );
  }
}
