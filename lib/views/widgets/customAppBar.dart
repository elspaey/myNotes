import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/widgets/customSearchIcon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 30),
        ),
        customSearchIcon()
      ],
    );
  }
}
