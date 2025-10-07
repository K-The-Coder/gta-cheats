import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/data/cheat_data.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

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
      drawer: const AppDrawer(selectedTile: 'Grand Theft Auto IV')
    );
  }
}
