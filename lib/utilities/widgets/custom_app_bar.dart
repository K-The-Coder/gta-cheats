
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gta_cheats/utilities/enums/menu_action.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget
{
  const CustomAppBar({super.key, required this.title,});

  final String title;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      title: Text(widget.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
      actions: [
        PopupMenuButton<MenuAction>(
          itemBuilder: (context){
            return [
              const PopupMenuItem<MenuAction>(
                value: MenuAction.exit,
                child: Text('Exit'),
              ),
            ];
          },
          onSelected: (value){
            switch (value){
              case MenuAction.exit:
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: const Icon(Icons.exit_to_app),
                      title: const Text('Exit?'),
                      content: const Text('Are you sure that you want to exit?'),
                      actions: [
                        TextButton(
                          onPressed: (){
                            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: const Text('No'),
                        )
                      ],
                    );
                  },
                );
              break;
            }
          },
        ),
      ],
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Colors.white,
    );
  }
}
