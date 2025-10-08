import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/data/cheat_data.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

class GtaFiveCheats extends StatelessWidget {
  const GtaFiveCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA V cheats'),
      body: Column(
        children: [
          const Text("Note: Enabling cheats disables trophies"),
          Expanded(
            child: ListView.builder(
              itemCount: gtaFivePSCheats.length,
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
                          gtaFivePSCheats[index]['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: ListView.builder(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              scrollDirection: Axis.horizontal,
                              itemCount: gtaFivePSCheats[index]['code'].length,
                              shrinkWrap: true,
                              itemBuilder: (context, codeIndex) {
                                return Image.asset(
                                  gtaFivePSCheats[index]['code'][codeIndex],
                                  height: 50,
                                  width: 45,
                                );
                              },
                            ),
                          ),
                        ),
                        gtaFivePSCheats[index].containsKey('disclaimer')
                            ? Text(gtaFivePSCheats[index]['disclaimer'])
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
      drawer: const AppDrawer(selectedTile: 'Grand Theft Auto V')
    );
  }
}
