import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'form_note.dart';

class BuildNewNote extends StatelessWidget {
  const BuildNewNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print(state.errMessage);
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                  absorbing: state is AddNoteLoading ?true:false,
                  child: const FormNote());
            }
        ),
      ),
    );
  }
}
