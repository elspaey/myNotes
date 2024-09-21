import 'package:flutter/material.dart';

import 'addNoteForm.dart';

class buttomSheet extends StatelessWidget {
  const buttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const bodyOfButtonSheet();
  }
}

class bodyOfButtonSheet extends StatelessWidget {
  const bodyOfButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const addNoteForm(),
        ),
      ),
    );
  }
}
