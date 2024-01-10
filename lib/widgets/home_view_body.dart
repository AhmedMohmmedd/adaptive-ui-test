import 'package:demoproject/widgets/adaptive_layout.dart';
import 'package:demoproject/widgets/custom_list_view.dart';
import 'package:demoproject/widgets/custom_sliver_grid.dart';
import 'package:demoproject/widgets/custom_tablet_list.dart';
import 'package:demoproject/widgets/desktop_layout.dart';
import 'package:demoproject/widgets/mobile_layout.dart';
import 'package:demoproject/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AdaptiveLayoutBulider(
        mobilelayout: (context) => const Mobilelayout(),
        tabletLayout: (context) => const TabletLayout(),
        daskTopLayout: (context) => const DaskTopLayout(),
      ),
    );
  }
}
