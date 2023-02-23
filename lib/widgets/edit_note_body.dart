import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import '../constants.dart';
import 'custom_text_field.dart';


class EditNoteBody extends StatefulWidget{
  EditNoteBody({required this.not});
  final NoteModel not;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  int? myColor;
  @override

  Widget build(BuildContext context) {
    myColor=widget.not.color;
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: [
           CustomAppBar(
               title: "Edit Note",
               icon: Icons.check,
             onTap: (){
                widget.not.title=title?? widget.not.title;
                 widget.not.content=content??widget.not.content;
                widget.not.color= myColor??widget.not.color;
                 widget.not.save();
                 BlocProvider.of<NotesCubit>(context).fetchNotes();
                 Navigator.pop(context);
             },
           ),
          const Spacer(flex: 1,),
          GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Pick a color!'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: Color(widget.not.color), //default color
                            onColorChanged: (Color color) {
                              myColor = color.value ;
                            },
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  kPrimaryColor),
                            ),
                            child: const Text(
                              'DONE',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              BlocProvider.of<NotesCubit>(context).fetchNotes();
                              Navigator.pop(context); //dismiss the color picker
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Container(
                width: 40,
                  height: 40,
                decoration: BoxDecoration(
                  color: Color(myColor!),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: const Icon(
                  Icons.color_lens,
                ),
              ),
          ),
          const Spacer(flex: 1,),
          CustomTextField(
              hint: widget.not.title,
              onChanged: (value){
            title=value;
          }),
          const Spacer(flex: 2,),
          CustomTextField(
            hint: widget.not.content,
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
