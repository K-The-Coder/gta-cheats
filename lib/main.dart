
import 'package:flutter/material.dart';
import 'package:gta_cheats/cheat_screens/gta_three_cheats.dart';
import 'package:gta_cheats/custom_app_bar.dart';
import 'package:keep_screen_on/keep_screen_on.dart';
import 'package:gta_cheats/game_card.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home',),
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: ListView(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const GtaThreeCheats()),
                );
              },
              child: const GameCard(gameName: 'Grand Theft Auto III'),
            ),
            GestureDetector(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('GTA Vice City clicked'),
                      action: SnackBarAction(label: 'OK', onPressed: (){}),
                    ),
                );
              },
              child: const GameCard(gameName: 'Grand Theft Auto: Vice City'),
            ),
            GestureDetector(
              child: const GameCard(gameName: 'Grand Theft Auto: San Andreas'),
            ),
            GestureDetector(
              child: const GameCard(gameName: 'Grand Theft Auto IV'),
            ),
            GestureDetector(
              child: const GameCard(gameName: 'Grand Theft Auto V'),
            ),
          ]
        ),
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 104,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: const Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GtaThreeCheats()),
                  );
                },
                child: const Text('Grand Theft Auto III'),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: (){},
                child: const Text('Grand Theft Auto: Vice City'),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: (){},
                child: const Text('Grand Theft Auto: San Andreas'),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: (){},
                child: const Text('Grand Theft Auto IV'),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: (){},
                child: const Text('Grand Theft Auto V'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

