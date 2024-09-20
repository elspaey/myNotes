import 'package:flutter/material.dart';

class customIcon extends StatelessWidget {
  const customIcon({super.key, required this.theIcon});
  final IconData theIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(0.1)),
        child: Icon(theIcon),
      ),
    );
  }
}
