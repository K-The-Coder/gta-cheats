import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';
import 'package:gta_cheats/utilities/functions/functions.dart';
import 'package:gta_cheats/utilities/widgets/game_card.dart';

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
      onPopInvokedWithResult: (canPop, popResult) async{
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
                    gtaThreeRoute(context);
                  },
                  child: const GameCard(gameName: 'Grand Theft Auto III'),
                ),
                GestureDetector(
                  onTap: (){
                    gtaViceCityRoute(context);
                  },
                  child: const GameCard(gameName: 'Grand Theft Auto: Vice City'),
                ),
                GestureDetector(
                  onTap: (){
                   gtaSanAndreasRoute(context);
                  },
                  child: const GameCard(gameName: 'Grand Theft Auto: San Andreas'),
                ),
                GestureDetector(
                  onTap: (){
                    gtaFourRoute(context);
                  },
                  child: const GameCard(gameName: 'Grand Theft Auto IV'),
                ),
                GestureDetector(
                  onTap: (){
                   gtaFiveRoute(context);
                  },
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
                    gtaThreeRoute(context);
                  },
                  child: const Text('Grand Theft Auto III'),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: (){
                    gtaViceCityRoute(context);
                  },
                  child: const Text('Grand Theft Auto: Vice City'),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: (){
                    gtaSanAndreasRoute(context);
                  },
                  child: const Text('Grand Theft Auto: San Andreas'),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: (){
                    gtaFourRoute(context);
                  },
                  child: const Text('Grand Theft Auto IV'),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: (){
                    gtaFiveRoute(context);
                  },
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
