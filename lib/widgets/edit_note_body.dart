import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_button.dart';

import 'custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  String? title, content;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: [
           CustomAppBar(
               title: "Edit Note",
               icon: Icons.check,
             onTap: (){
                 widget.note.title=title?? widget.note.title;
                 widget.note.content=content??widget.note.content;
                 widget.note.save();
                 BlocProvider.of<NotesCubit>(context).fetchNotes();
                 Navigator.pop(context);
             },
           ),
          const Spacer(flex: 1,),
          CustomTextField(
              hint: widget.note.title,
              onChanged: (value){
            title=value;
          }),
          const Spacer(flex: 2,),
          CustomTextField(
            hint: widget.note.content,
            maxLines: 5,
            onChanged: (value){
              content=value;
            },
          ),
          const Spacer(flex: 30,),

        ],
      ),
    );
  }
}
