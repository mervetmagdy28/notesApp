import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: const[
          CustomAppBar(title: "Edit Note", icon: Icons.check)
        ],
      ),
    );
  }
}
