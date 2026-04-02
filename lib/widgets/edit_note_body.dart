import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextField(labelText: 'Title'),
          SizedBox(height: 24),
          CustomTextField(labelText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
