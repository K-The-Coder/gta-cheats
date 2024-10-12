import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gta_cheats/custom_app_bar.dart';
import 'package:gta_cheats/game_card.dart';
import 'package:gta_cheats/cheat_screens/gta_three_cheats.dart';
import 'package:gta_cheats/cheat_screens/gta_vice_city_cheats.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (popResult) async{
        final shouldExit = await showDialog(
          context: context, builder: (context) {
            return AlertDialog(
              icon: const Icon(Icons.exit_to_app),
              title: const Text('Exit?'),
              content: const Text('Are you sure that you want to exit?'),
              actions: [
                TextButton(
                  onPressed: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    //Navigator.of(context).pop(true);
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('No'),
                )
              ],
            );
          },
        );
        return shouldExit ?? false;
      },
      child: Scaffold(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GtaViceCityCheats()),
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
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GtaViceCityCheats()),
                    );
                  },
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
      ),
    );
  }
}
