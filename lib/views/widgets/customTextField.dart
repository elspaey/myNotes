import 'package:flutter/material.dart';

class coustomTextField extends StatelessWidget {
  const coustomTextField(
      {super.key,
      // this.onChanged,
      this.hintText,
      this.maxLines = 1});
  final String? hintText;
  // Function(String)? onChanged;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      // onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        // hintStyle: const TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                const BorderSide(color: Color.fromARGB(153, 255, 255, 255))),
      ),
    );
  }
}
