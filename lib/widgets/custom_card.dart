import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFFFCD7A),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile (
              title: const Text("Flutter Tips", style: TextStyle(color: Colors.black, fontSize: 24),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text("Build your career with Tharwat Samy", style: TextStyle(color: Colors.black.withOpacity(.5)),),
              ),
              trailing: IconButton( icon: const Icon(FontAwesomeIcons.trash,color: Colors.black,),onPressed: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text("13 fer 2023",style: TextStyle(color: Colors.black.withOpacity(.5), ),),
            )
          ],
        ),
      ),
    );
  }
}