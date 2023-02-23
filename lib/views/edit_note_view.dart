import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';

import '../widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        body: EditNoteBody(not: note),
      );
  }
}
