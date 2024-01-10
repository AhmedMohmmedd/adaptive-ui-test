
import 'package:demoproject/widgets/custom_item1.dart';
import 'package:flutter/material.dart';

class CustomDesxTopWidget extends StatelessWidget {
  const CustomDesxTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 16 , left: 16),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: CustomItem1(color:   Color(0xffB4B4B4)),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: CustomItem1(color:   Color(0xffB4B4B4)),
          ),
        ],
      ),
    );
  }
}