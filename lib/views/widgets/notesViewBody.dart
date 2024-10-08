import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/widgets/customAppBar.dart';

import 'notesListView.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppbar(
            theIcon: Icons.search,
            title: "Notes",),
          notesListView(),
        ],
      ),
    );
  }
}
