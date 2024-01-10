
import 'package:demoproject/models/list_tile_model.dart';
import 'package:flutter/material.dart';

class CustomDrwerItem extends StatelessWidget {
  const CustomDrwerItem({super.key, required this.listTileModel});
final DrwerListTileModel listTileModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.bottomLeft,
        child: Text( listTileModel.titel)),
      leading: Icon(listTileModel.icon),
    );
  }
}