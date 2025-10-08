import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/data/cheat_data.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

class GtaThreeCheats extends StatelessWidget {
  const GtaThreeCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA III cheats'),
      body: Column(
        children: [
          const Text("Note: Enabling cheats disables trophies"),
          Expanded(
            child: ListView.builder(
              itemCount: gtaThreePSCheats.length,
              itemBuilder: (context, index) {
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
                          child: Center(
                            child: ListView.builder(
                              padding: const EdgeInsets.all(16),
                              scrollDirection: Axis.horizontal,
                              itemCount: gtaThreePSCheats[index]['code'].length,
                              shrinkWrap: true,
                              itemBuilder: (context, codeIndex) {
                                return Image.asset(
                                  gtaThreePSCheats[index]['code'][codeIndex],
                                  height: 50,
                                  width: 45,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(selectedTile: 'Grand Theft Auto III'),
    );
  }
}
