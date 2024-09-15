import 'package:flutter/material.dart';

import 'widgets/notesViewBody.dart';

class Notesviews extends StatelessWidget {
  const Notesviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: notesViewBody(),
      ),
    );
  }
}
