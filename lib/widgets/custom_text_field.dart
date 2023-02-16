import 'package:flutter/material.dart';

import '../constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
            hintText: "title",
            hintStyle: const TextStyle(color: KPrimaryColor),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder()
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: KPrimaryColor)
    );
  }
}
