import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

void addWithBloc(BuildContext context, NoteModel noteModel) {
  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
}

NoteModel addWithNotesModel(String title, String subTitle) {
  var noteModel = NoteModel(
    title: title,
    subtitle: subTitle,
    date: DateFormat.yMMMd().format(DateTime.now()),
    color: Colors.purple.value,
  );
  return noteModel;
}
