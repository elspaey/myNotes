import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/editNoteView.dart';
import 'package:flutter_application_10/views/notesViews.dart';

void main() {
  runApp(const noteApp());
}

class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Editnoteview.id: (context) => const Editnoteview(),
        Notesviews.id: (context) => const Notesviews()
      },
      initialRoute: Notesviews.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const Notesviews(),
    );
  }
}
