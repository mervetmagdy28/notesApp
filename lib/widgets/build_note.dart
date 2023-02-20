import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'form_note.dart';

class BuildNewNote extends StatelessWidget {
  const BuildNewNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
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
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(child: FormNote()),

                ));
          }
      ),
    );
  }
}
