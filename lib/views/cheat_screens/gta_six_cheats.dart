import 'package:flutter/material.dart';
import 'package:gta_cheats/utilities/widgets/app_drawer.dart';
import 'package:gta_cheats/utilities/widgets/custom_app_bar.dart';

class GtaSixCheats extends StatelessWidget {
  const GtaSixCheats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Grand Theft Auto VI'),
      body: Center(
        child: Text('Coming Soon...')
      ),
      drawer: AppDrawer(selectedTile: 'Grand Theft Auto VI'),
    );
  }
}
