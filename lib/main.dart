import 'package:flutter/material.dart';
import 'package:keep_screen_on/keep_screen_on.dart';
import 'package:gta_cheats/home_page.dart';

void main(List<String> args)
{
  runApp(const CheatsApp());
  KeepScreenOn.turnOn();
}

class CheatsApp extends StatelessWidget {
  const CheatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GTA Cheats App',
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(163, 151, 238, 1)),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
    );
  }
}

