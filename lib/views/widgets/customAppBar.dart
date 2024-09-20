import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/widgets/customSearchIcon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.theIcon});
  final String title;
  final IconData theIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30),
        ),
        customIcon(
          theIcon: theIcon,
        ),
      ],
    );
  }
}
