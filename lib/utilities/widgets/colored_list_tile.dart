import 'package:flutter/material.dart';

class ColoredListTile extends StatelessWidget {
  const ColoredListTile({super.key, required this.title, required this.tileColor});

  final String title;
  final Color tileColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
        style: const TextStyle(color: Colors.white),
      ),
      tileColor: tileColor,
    );
  }
}
