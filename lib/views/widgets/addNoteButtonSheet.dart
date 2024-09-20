import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/widgets/customTextField.dart';

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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          coustomTextField(hintText: "title"),
          SizedBox(
            height: 30,
          ),
          coustomTextField(
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
