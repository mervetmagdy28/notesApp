import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class FormNote extends StatefulWidget {
  const FormNote({
    Key? key,
  }) : super(key: key);

  @override
  State<FormNote> createState() => _FormNoteState();
}

class _FormNoteState extends State<FormNote> {
  GlobalKey<FormState> formKey= GlobalKey();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,

      child: Column(
        children: [
          const Spacer(flex: 1,),
          CustomTextField(hint: "title",
              onSaved: (value){
                title=value;
              }),
          const Spacer(flex: 1,),
          CustomTextField(hint: "content", maxLines: 5, onSaved: (value){
            subTitle=value;
          }),
          const Spacer(flex: 8,),
          CustomButton(text: 'Add',onTap: (){
            if (formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autoValidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const Spacer(flex: 1,),
        ],
      ),
    );
  }
}
