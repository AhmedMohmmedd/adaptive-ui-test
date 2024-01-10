
import 'package:flutter/material.dart';

class CustomItem1 extends StatelessWidget {
  const CustomItem1({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color:color,
     ),
    );
  }
}
