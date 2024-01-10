import 'package:demoproject/widgets/custom_desktop_widget.dart';
import 'package:demoproject/widgets/custom_drawer.dart';
import 'package:demoproject/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DaskTopLayout extends StatelessWidget {
  const DaskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),),
        Expanded(
          flex: 3,
          child: TabletLayout(),),

          Expanded(
            flex: 1,
            child: CustomDesxTopWidget()
            ,),

      ],
    );
  }
}
