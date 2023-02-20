import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, required this.text, this.onTap,this.isLoading=false
  }) : super(key: key);
final String text;
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: isLoading ? const CircularProgressIndicator(color: Colors.black,)
                   :Text(text, style: const TextStyle(color: Colors.black),),
          ),
        ),
      ),
    );
  }
}
