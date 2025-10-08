import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/data/cheat_data.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

class GtaViceCityStoriesCheats extends StatelessWidget {
  const GtaViceCityStoriesCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GTA VCS Cheats'),
      body: ListView.builder(
        itemCount: gtaViceCityStoriesPSCheats.length,
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
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Text(
                    gtaViceCityStoriesPSCheats[index]['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount:
                            gtaViceCityStoriesPSCheats[index]['code'].length,
                        itemBuilder: (context, codeIndex) {
                          return Image.asset(
                            gtaViceCityStoriesPSCheats[index]['code']
                                [codeIndex],
                            height: 50,
                            width: 45,
                          );
                        },
                      ),
                    ),
                  ),
                  gtaViceCityStoriesPSCheats[index].containsKey('disclaimer')
                      ? Text(
                          gtaViceCityStoriesPSCheats[index]['disclaimer'],
                          style: const TextStyle(fontSize: 10),
                        )
                      : Container()
                ],
              ),
            ),
          );
        },
      ),
      drawer:
          const AppDrawer(selectedTile: 'Grand Theft Auto: Vice City Stories'),
    );
  }
}
