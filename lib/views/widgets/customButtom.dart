import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(
      {super.key,
      this.onTap,
      required this.title,
      this.theColor = Colors.blue,
      this.fontColor = Colors.black});
  final String title;
  VoidCallback? onTap;
  final Color theColor, fontColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: theColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: fontColor,
              )),
        ),
      ),
    );
  }
}
