
import 'package:demoproject/widgets/custom_list_view.dart';
import 'package:demoproject/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class Mobilelayout extends StatelessWidget {
  const Mobilelayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16,),
        ),
        CustomSliverGrid(),
        CustomListView()
      ],
    );
  }
}
