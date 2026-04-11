import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return AddNote();
                },
              ).then((value) {
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              });
            },
            elevation: 20,
            child: Icon(CupertinoIcons.add, color: Colors.white),
          ),
          appBar: AppBar(
            title: CustomAppBar(title: 'Notes', icon: Icons.search),
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Column(children: [Expanded(child: NotesListView())]),
        );
      },
    );
  }
}
