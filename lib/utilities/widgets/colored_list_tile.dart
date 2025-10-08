import 'package:flutter/material.dart';

class ColoredListTile extends StatelessWidget {
  const ColoredListTile(
      {super.key,
      required this.title,
      required this.tileColor,
      this.textColor});

  final String title;
  final Color tileColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: textColor ?? Colors.white),
      ),
      tileColor: tileColor,
    );
  }
}
