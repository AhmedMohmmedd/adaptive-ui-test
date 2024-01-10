import 'package:demoproject/widgets/custom_list_view.dart';
import 'package:demoproject/widgets/custom_tablet_list.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16,),
        ),
        SliverToBoxAdapter(child: CustomTabletList()),
        CustomListView()
      ],
    );
  }
}