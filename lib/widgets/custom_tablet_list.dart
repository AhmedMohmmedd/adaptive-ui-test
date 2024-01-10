import 'package:demoproject/widgets/custom_item1.dart';
import 'package:flutter/material.dart';

class CustomTabletList extends StatelessWidget {
  const CustomTabletList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.only(right: 16),
          child: AspectRatio(
            aspectRatio: 1/1,
            child: CustomItem1(color:  const Color(0xffB4B4B4),),
          ),
        );
      }),
    );
  }
}
