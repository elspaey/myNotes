import 'package:flutter/material.dart';

class coustomTextField extends StatelessWidget {
  const coustomTextField(
      {super.key,
      // this.onChanged,
      this.hintText,
      this.maxLines = 1,
      this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      this.onSaved});
  final String? hintText;
  // Function(String)? onChanged;
  final int maxLines;
  final EdgeInsetsGeometry padding;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required";
        }
        return null;
      },
      onSaved: onSaved,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      maxLines: maxLines,
      // onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hintText,
        // alignLabelWithHint: true,
        // hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }
}
