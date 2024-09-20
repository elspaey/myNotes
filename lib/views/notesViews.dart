import 'package:flutter/material.dart';

import 'widgets/floatingActionButton.dart';
import 'widgets/notesViewBody.dart';

class Notesviews extends StatelessWidget {
  const Notesviews({super.key});
  static String id = "noteView";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        floatingActionButton: floatingActionButton(),
        body: notesViewBody(),
      ),
    );
  }
}
