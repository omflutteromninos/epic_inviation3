import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';

class showdialoguebox extends StatelessWidget {
  showdialoguebox({Key? key, required this.title, required this.content, required this.actions1}) : super(key: key);
  String title;
  String content;
  List<Widget> actions1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.center,
      title: Text(title,textAlign: TextAlign.center, style: const TextStyle(
        color: Color(0xff51b950),
        fontSize: 24,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
      ),),
      content: Text(content, textAlign: TextAlign.center, style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),),
      backgroundColor: Color.fromRGBO(31, 34, 42, 1),
      actions: actions1,
    );
  }
}
