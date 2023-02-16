
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
import 'custom_card.dart';
import 'notes_list_view.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Column(
        children: const [
          CustomAppBar(),
          SizedBox(height: 30,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
