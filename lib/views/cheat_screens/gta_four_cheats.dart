import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/data/cheat_data.dart';
import 'package:gta_cheats/utilities/widgets/colored_list_tile.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';
import 'package:gta_cheats/utilities/functions/functions.dart';

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
                  homePageRoute(context);
                },
                child: const Text('Home'),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
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
            const ColoredListTile(
              title: 'Grand Theft Auto IV',
              tileColor: Colors.grey,
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
    );
  }
}
