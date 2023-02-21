import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

import 'custom_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel>notes = BlocProvider
              .of<NotesCubit>(context)
              .fetchNotes();
          //print(notes.length);
          return ListView.builder(
              itemCount: notes.length, itemBuilder: (context, index) {
            return const CustomCard();
          });
        },
      ),
    );
  }
}
