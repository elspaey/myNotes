import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/widgets/customAppBar.dart';
import 'package:flutter_application_10/views/widgets/customTextField.dart';

class Editnoteviewbody extends StatelessWidget {
  const Editnoteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            theIcon: Icons.done,
            title: "Edit",
          ),
          SizedBox(
            height: 30,
          ),
          coustomTextField(
            hintText: "Title",
          ),
          SizedBox(
            height: 25,
          ),
          coustomTextField(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            hintText: "Content",
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
