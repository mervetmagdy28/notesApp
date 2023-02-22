import 'package:flutter/material.dart';

import '../constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines=1, this.onSaved, this.onChanged}) : super(key: key);
  final String? hint;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value){
          if (value?.isEmpty??true){
            return "Field is Required";
          }else{
            return null;
          }
        },
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: kPrimaryColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)
            ),
            enabledBorder: buildOutlineInputBorder(clr: Colors.white),
            focusedBorder: buildOutlineInputBorder(clr: kPrimaryColor)
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({ required Color clr}) {
    Color? color =clr;
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color)
    );
  }
}
