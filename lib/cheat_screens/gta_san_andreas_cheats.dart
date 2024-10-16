import 'package:flutter/material.dart';
import 'package:gta_cheats/cheat_screens/gta_vice_city_cheats.dart';
import 'package:gta_cheats/custom_app_bar.dart';
import 'package:gta_cheats/home_page.dart';
import 'package:gta_cheats/cheat_screens/gta_three_cheats.dart';

class GtaSanAndreasCheats extends StatelessWidget {
  const GtaSanAndreasCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA: San Andreas cheats'),
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
                  Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()),
                        (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Home'),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
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
            const ListTile(
              title: Text('Grand Theft Auto: San Andreas'),
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
