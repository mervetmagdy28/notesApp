import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.07),
      ),
      child: const Icon(Icons.search, size: 24,),

    );
  }
}
