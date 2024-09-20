import 'package:flutter/material.dart';

import 'widgets/addNoteButtonSheet.dart';
import 'widgets/notesViewBody.dart';

class Notesviews extends StatelessWidget {
  const Notesviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const buttomSheet();
              },
            );
          },
        ),
        body: const notesViewBody(),
      ),
    );
  }
}
