import 'package:flutter/material.dart';
import 'package:gta_cheats/cheat_data.dart';
import 'package:gta_cheats/cheat_screens/gta_vice_city_cheats.dart';
import 'package:gta_cheats/custom_app_bar.dart';
import 'package:gta_cheats/home_page.dart';
import 'package:gta_cheats/cheat_screens/gta_san_andreas_cheats.dart';
import 'package:gta_cheats/cheat_screens/gta_three_cheats.dart';

class GtaFourCheats extends StatelessWidget {
  const GtaFourCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA IV Cheats'),
      body: ListView.builder(
        itemCount: gtaFourPSCheats.length,
        itemBuilder: (context, index){
          return SizedBox(
            height: 100,
            child: Card(
              elevation: 20,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Text(
                    gtaFourPSCheats[index]['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    gtaFourPSCheats[index]['phone-number'],
                    style: const TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
                      MaterialPageRoute(builder: (context) => const GtaThreeCheats())
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
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GtaSanAndreasCheats()),
                  );
                },
                child: const Text('Grand Theft Auto: San Andreas'),
              ),
            ),
            const ListTile(
              title: Text('Grand Theft Auto IV'),
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
