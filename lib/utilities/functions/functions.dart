import 'package:flutter/material.dart';
import 'package:gta_cheats/views/home_page.dart';
import 'package:gta_cheats/views/cheat_screens/gta_five_cheats.dart';
import 'package:gta_cheats/views/cheat_screens/gta_four_cheats.dart';
import 'package:gta_cheats/views/cheat_screens/gta_san_andreas_cheats.dart';
import 'package:gta_cheats/views/cheat_screens/gta_three_cheats.dart';
import 'package:gta_cheats/views/cheat_screens/gta_vice_city_cheats.dart';

void homePageRoute(BuildContext context)
{
  Navigator.pushAndRemoveUntil(context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
    ), (Route<dynamic> route) => false,
  );
}

void gtaThreeRoute(BuildContext context)
{
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const GtaThreeCheats()),
  );
}

void gtaViceCityRoute(BuildContext context)
{
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const GtaViceCityCheats())
  );
}

void gtaSanAndreasRoute(BuildContext context)
{
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const GtaSanAndreasCheats()),
  );
}

void gtaFourRoute(BuildContext context)
{
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const GtaFourCheats()),
  );
}

void gtaFiveRoute(BuildContext context)
{
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const GtaFiveCheats()),
  );
}

