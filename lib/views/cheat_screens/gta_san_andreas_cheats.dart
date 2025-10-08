import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/data/cheat_data.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

class GtaSanAndreasCheats extends StatelessWidget {
  const GtaSanAndreasCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA SA cheats'),
      body: Column(
        children: [
          const Text("Note: Enabling cheats disables trophies"),
          Expanded(
            child: ListView.builder(
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
                          child: Center(
                            child: ListView.builder(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              scrollDirection: Axis.horizontal,
                              itemCount: gtaSanAndreasPSCheats[index]['code'].length,
                              shrinkWrap: true,
                              itemBuilder: (context, codeIndex) {
                                return Image.asset(
                                  gtaSanAndreasPSCheats[index]['code'][codeIndex],
                                  height: 50,
                                  width: 45,
                                );
                              },
                            ),
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
          ),
        ],
      ),
      drawer: const AppDrawer(selectedTile: 'Grand Theft Auto: San Andreas')
    );
  }
}
