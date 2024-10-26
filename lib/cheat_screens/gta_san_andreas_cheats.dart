import 'package:flutter/material.dart';
import 'package:gta_cheats/cheat_data.dart';
import 'package:gta_cheats/cheat_screens/gta_four_cheats.dart';
import 'package:gta_cheats/cheat_screens/gta_vice_city_cheats.dart';
import 'package:gta_cheats/custom_app_bar.dart';
import 'package:gta_cheats/home_page.dart';
import 'package:gta_cheats/cheat_screens/gta_three_cheats.dart';

class GtaSanAndreasCheats extends StatelessWidget {
  const GtaSanAndreasCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA SA cheats'),
      body: ListView.builder(
        itemCount: gtaSanAndreasPSCheats.length,
        itemBuilder: (context, index){
          return SizedBox(
            height: 130,
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
                    gtaSanAndreasPSCheats[index]['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      scrollDirection: Axis.horizontal,
                      itemCount: gtaSanAndreasPSCheats[index]['code'].length,
                      itemBuilder: (context, codeIndex) {
                        return Image.asset(
                          gtaSanAndreasPSCheats[index]['code'][codeIndex],
                          height: 50,
                          width: 45,
                        );
                      },
                    ),
                  ),
                  gtaSanAndreasPSCheats[index].containsKey('disclaimer')
                      ? Text(gtaSanAndreasPSCheats[index]['disclaimer'])
                      : Container(),
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
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GtaFourCheats()),
                  );
                },
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
