import 'package:flutter/material.dart';

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
