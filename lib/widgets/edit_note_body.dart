import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_button.dart';

import 'custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
      child: Column(
        children: const[
          CustomAppBar(title: "Edit Note", icon: Icons.check),
          Spacer(flex: 1,),
          CustomTextField(hint: "title"),
          Spacer(flex: 2,),
          CustomTextField(hint: "content", maxLines: 5,),
          Spacer(flex: 30,),
          CustomButton(text: "Edit",),
          Spacer(flex: 2,),

        ],
      ),
    );
  }
}
