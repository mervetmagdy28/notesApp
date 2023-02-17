import 'package:flutter/material.dart';

import '../constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines=1}) : super(key: key);
  final String? hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorColor: KPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: KPrimaryColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)
            ),
            enabledBorder: buildOutlineInputBorder(clr: Colors.white),
            focusedBorder: buildOutlineInputBorder(clr: KPrimaryColor)
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
