import 'package:demoproject/models/list_tile_model.dart';
import 'package:demoproject/widgets/custom_drwer_item.dart';
import 'package:flutter/material.dart';

class CustomDrwerItemListView extends StatelessWidget {
  const CustomDrwerItemListView({
    super.key,
    required this.items,
  });

  final List<DrwerListTileModel> items;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 600
        ? ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CustomDrwerItem(listTileModel: items[index]);
            },
          )
        : Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CustomDrwerItem(listTileModel: items[index]);
              },
            ),
          );
  }
}
