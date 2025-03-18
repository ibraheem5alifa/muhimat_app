import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 30, backgroundColor: color);
  }
}
