import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(labelText: 'Title'),
            SizedBox(height: 20),
            CustomTextField(labelText: 'content', maxLines: 5),
            SizedBox(height: 20),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
