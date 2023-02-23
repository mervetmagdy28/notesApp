import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

import 'custom_card.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes = BlocProvider
            .of<NotesCubit>(context)
            .notes??[];
        return ListView.builder(
          reverse: true,
            itemCount: notes.length, itemBuilder: (context, index) {
          return CustomCard(note: notes[index],);
        });
      },
    );
  }
}
