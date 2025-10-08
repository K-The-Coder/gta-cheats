import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/widgets/colored_list_tile.dart';

import '../functions/functions.dart';

class AppDrawer extends StatelessWidget {
  final String selectedTile;

  const AppDrawer({super.key, required this.selectedTile});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Column(
        children: [
          SizedBox(
            height: 104,
            width: 200,
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
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                selectedTile == 'Home'
                    ? Container()
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            homePageRoute(context);
                          },
                          child: const Text('Home'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto III'
                    ? ColoredListTile(
                        title: 'Grand Theft Auto III',
                        tileColor: Colors.indigo.shade900)
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaThreeRoute(context);
                          },
                          child: const Text('Grand Theft Auto III'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto: Vice City'
                    ? ColoredListTile(
                        title: "Grand Theft Auto: Vice City",
                        tileColor: Colors.pink.shade300)
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaViceCityRoute(context);
                          },
                          child: const Text('Grand Theft Auto: Vice City'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto: San Andreas'
                    ? ColoredListTile(
                        title: "Grand Theft Auto: San Andreas",
                        tileColor: Colors.green.shade700)
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaSanAndreasRoute(context);
                          },
                          child: const Text('Grand Theft Auto: San Andreas'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto: Liberty City Stories'
                    ? ColoredListTile(
                        title: 'Grand Theft Auto: Liberty City Stories',
                        tileColor: Colors.red.shade900)
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaLibertyCityStoriesRoute(context);
                          },
                          child: const Text(
                              'Grand Theft Auto: Liberty City Stories'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto: Vice City Stories'
                    ? ColoredListTile(
                        title: 'Grand Theft Auto: Vice City Stories',
                        tileColor: Colors.orange.shade400,
                        textColor: Colors.black,
                      )
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaViceCityStoriesRoute(context);
                          },
                          child:
                              const Text("Grand Theft Auto: Vice City Stories"),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto IV'
                    ? const ColoredListTile(
                        title: 'Grand Theft Auto IV',
                        tileColor: Colors.grey,
                        textColor: Colors.black,
                      )
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaFourRoute(context);
                          },
                          child: const Text('Grand Theft Auto IV'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto V'
                    ? const ColoredListTile(
                        title: 'Grand Theft Auto V',
                        tileColor: Colors.lightGreen)
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaFiveRoute(context);
                          },
                          child: const Text('Grand Theft Auto V'),
                        ),
                      ),
                selectedTile == 'Grand Theft Auto VI'
                    ? const ColoredListTile(
                        title: 'Grand Theft Auto VI',
                        tileColor: Colors.purpleAccent)
                    : ListTile(
                        title: TextButton(
                          onPressed: () {
                            gtaSixRoute(context);
                          },
                          child: const Text('Grand Theft Auto VI'),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
