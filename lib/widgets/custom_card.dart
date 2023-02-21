import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/note_model.dart';

import '../views/edit_note_view.dart';

class CustomCard extends StatelessWidget {
   CustomCard({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:7),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditNoteView()));
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 10),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(20),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              ListTile (
                title: Text(note.title, style: const TextStyle(color: Colors.black, fontSize: 24),),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(note.content, style: TextStyle(color: Colors.black.withOpacity(.5)),),
                ),
                trailing: IconButton( icon: const Icon(FontAwesomeIcons.trash,color: Colors.black,),
                  onPressed: (){
                  },),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.5), ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Color(0xFFFFCD7A)