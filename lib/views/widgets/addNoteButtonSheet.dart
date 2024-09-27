import 'package:flutter/material.dart';
import 'package:flutter_application_10/bloc/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_application_10/views/widgets/addNoteForm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class buttomSheet extends StatelessWidget {
  const buttomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const bodyOfButtonSheet();
  }
}

class bodyOfButtonSheet extends StatelessWidget {
  const bodyOfButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print("failied${state.errorMessage}");
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: const SingleChildScrollView(child: addNoteForm()));
            },
          ),
        ),
      ),
    );
  }
}
