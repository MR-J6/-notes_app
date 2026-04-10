import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constandts.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  void fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList() as List<NoteModel>;
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
