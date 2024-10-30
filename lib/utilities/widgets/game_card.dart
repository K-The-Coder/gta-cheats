import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.gameName});

  final String gameName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Card(
        color: Colors.grey,
        child: Center(
          child: Text(gameName,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
