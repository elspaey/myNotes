import 'package:flutter/material.dart';
import 'package:flutter_application_10/bloc/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helper/constants.dart';
import 'customButtom.dart';
import 'customTextField.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          coustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: "title"),
          const SizedBox(
            height: 30,
          ),
          coustomTextField(
            onSaved: (value) {
              content = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          customButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = Notemodel(
                    title: title!,
                    content: content!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addnote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            title: "Add",
            theColor: kprimaryColor,
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
