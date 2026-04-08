import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextField(
                labelText: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 20),
              CustomTextField(
                labelText: 'content',
                maxLines: 5,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
              SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
