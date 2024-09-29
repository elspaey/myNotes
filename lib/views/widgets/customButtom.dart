import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(
      {super.key,
      this.onTap,
      required this.title,
      this.theColor = Colors.blue,
      this.fontColor = Colors.black,
      this.isLoading = false});
  final String title;
  VoidCallback? onTap;
  final Color theColor, fontColor;
  final bool isLoading;
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
          child: isLoading
              ? const SizedBox(
                  height: 27,
                  width: 27,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(title,
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
