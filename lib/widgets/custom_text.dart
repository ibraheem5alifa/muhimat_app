import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    this.fontWeight = FontWeight.bold,
    this.fontsize = 20,
    this.color,
    this.maxLines = 1,
  });
  final String txt;
  final FontWeight fontWeight;
  final double fontsize;
  final Color? color;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
      ),
    );
  }
}
