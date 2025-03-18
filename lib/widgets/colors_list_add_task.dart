import 'package:flutter/material.dart';
import 'package:muhimat_app/constants.dart';
import 'package:muhimat_app/widgets/color_item.dart';

class ColorsListForAddTask extends StatelessWidget {
  const ColorsListForAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ColorItem(color: kColors[index]),
        itemCount: kColors.length,
        separatorBuilder:
            (BuildContext context, int index) => SizedBox(width: 10),
      ),
    );
  }
}
