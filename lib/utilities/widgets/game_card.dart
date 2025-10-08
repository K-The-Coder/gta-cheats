import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.gameName, this.cardColor, this.textColor});

  final String gameName;
  final Color? cardColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Card(
        color: cardColor ?? Colors.grey.shade400,
        child: Center(
          child: Text(gameName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
