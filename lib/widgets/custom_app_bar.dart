import 'package:flutter/material.dart';

import 'custom_search_icon.dart';
class CustomAppBar extends StatelessWidget {
   CustomAppBar({Key? key, required this.title, required this.icon, this.onTap}) : super(key: key);
  final String title;
  final IconData icon;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 24),),
        CustomSearchIcon(icon: icon,onTap: onTap),
      ],
    );
  }
}
