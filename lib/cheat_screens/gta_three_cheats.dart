import 'package:flutter/material.dart';
import 'package:gta_cheats/cheat_data.dart';
import 'package:gta_cheats/custom_app_bar.dart';

class GtaThreeCheats extends StatelessWidget {
  const GtaThreeCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA III Cheats'),
      body: ListView.builder(
        itemCount: gtaThreePSCheats.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 120,
            child: Card(
              elevation: 20,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Text(
                    gtaThreePSCheats[index]['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: gtaThreePSCheats[index]['buttons'].length,
                      itemBuilder: (context, buttonIndex) {
                        return Image.asset(
                          gtaThreePSCheats[index]['buttons'][buttonIndex],
                          height: 50,
                          width: 45,
                        );
                      },
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
            const ListTile(
              title: Text('Grand Theft Auto III'),
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
