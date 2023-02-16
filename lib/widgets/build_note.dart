import 'package:flutter/material.dart';

import 'custom_text_field.dart';
class BuildNewNote extends StatelessWidget {
  const BuildNewNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        SizedBox(height: 30,),
        CustomTextField(),
      ],
    );
  }
}
