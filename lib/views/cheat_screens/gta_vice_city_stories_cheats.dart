import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

class GtaViceCityStoriesCheats extends StatelessWidget {
  const GtaViceCityStoriesCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'GTA VCS Cheats'),
      drawer: AppDrawer(selectedTile: 'Grand Theft Auto: Vice City Stories'),
    );
  }
}
