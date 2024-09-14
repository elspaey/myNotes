import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/notesViews.dart';

void main() {
  runApp(const noteApp());
}

class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const Notesviews(),
    );
  }
}
