import 'package:flutter/material.dart';
import 'package:flutter_application_10/helper/constants.dart';
import 'package:flutter_application_10/helper/simple_bloc_observer.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_application_10/views/editNoteView.dart';
import 'package:flutter_application_10/views/notesViews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kNotesBox);
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
