
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Column(
        children: const[
          CustomAppBar(),
        ],
      ),
    );
  }
}

