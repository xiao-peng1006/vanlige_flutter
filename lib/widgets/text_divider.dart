import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;

  TextDivider({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Divider(
            indent: 400,
            endIndent: 10,
          )),
          Text(this.text),
          Expanded(
              child: Divider(
            indent: 10,
            endIndent: 400,
          ))
        ],
      ),
    );
  }
}
