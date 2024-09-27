import 'package:bloc/bloc.dart';
import 'package:flutter_application_10/helper/constants.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote(Notemodel note) async {
    emit(AddNoteLoading());
    ////////////////////////

    try {
      var noteBox = Hive.box<Notemodel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
