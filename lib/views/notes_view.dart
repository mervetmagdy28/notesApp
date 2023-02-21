import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';

import '../widgets/build_note.dart';
import '../widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: const NotesBody(),

        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              isScrollControlled: true,
              builder: (context) {
                return const BuildNewNote();
              });
        },
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.add),),
      ),
    );
  }
}

