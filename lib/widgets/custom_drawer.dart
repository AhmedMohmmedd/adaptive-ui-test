import 'package:demoproject/models/list_tile_model.dart';
import 'package:demoproject/widgets/custom_drwer_items_list_view.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  static const List<DrwerListTileModel> items =  [
    DrwerListTileModel(titel: 'D A S B O R D E', icon: Icons.home),
    DrwerListTileModel(titel: 'S E T T I N G S', icon: Icons.settings),
    DrwerListTileModel(titel: 'A B O U T', icon: Icons.info),
    DrwerListTileModel(titel: 'L O G O U T', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 48,
            ),
          ),
          CustomDrwerItemListView(items: items)
        ],
      ),
    );
  }
}

