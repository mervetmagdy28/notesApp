import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
class BuildNewNote extends StatelessWidget {
  const BuildNewNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        Spacer(flex: 1,),
        CustomTextField(hint: "title"),
        Spacer(flex: 1,),
        CustomTextField(hint: "content", maxLines: 5,),
        Spacer(flex: 8,),
        CustomButton(text: 'Add',),
        Spacer(flex: 1,),
      ],
    );
  }
}
