import 'package:flutter/material.dart';

import '../widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesBody() ,
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: const Color(0xFF84C452), child: const Icon(Icons.add),),
    );
  }
}
