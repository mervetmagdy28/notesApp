import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import '../widgets/build_note.dart';
import '../widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesBody() ,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, 
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
            builder: (context){
          return const BuildNewNote();
        });
      },
        backgroundColor: KPrimaryColor,
        child: const Icon(Icons.add),),
    );
  }
}

