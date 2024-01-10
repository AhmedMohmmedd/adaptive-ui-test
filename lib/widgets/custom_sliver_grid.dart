
import 'package:demoproject/widgets/custom_item1.dart';
import 'package:flutter/material.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 15
      ),
      itemBuilder: (context, index) {
        return CustomItem1(color:  const Color(0xffB4B4B4),);
      },
    );
  }
}
