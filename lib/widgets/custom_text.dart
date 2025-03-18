import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    this.fontWeight = FontWeight.bold,
    this.fontsize = 20,
    this.color,
  });
  final String txt;
  final FontWeight fontWeight;
  final double fontsize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
      ),
    );
  }
}
