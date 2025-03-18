import 'package:flutter/material.dart';
import 'package:muhimat_app/widgets/custom_text.dart';
import 'package:muhimat_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      child: Column(
        spacing: 20,
        children: [
          CustomTextField(
            hintTxt: 'Task Title',
            prefixIcon: Icons.title_rounded,
          ),
          CustomTextField(
            hintTxt: 'Task Discription',
            prefixIcon: Icons.article_rounded,
          ),
          CustomTextField(
            hintTxt: 'Task Time',
            prefixIcon: Icons.watch_later_rounded,
          ),
          CustomTextField(
            hintTxt: 'Task Date',
            prefixIcon: Icons.calendar_month_rounded,
          ),
          Column(
            spacing: 15,
            children: [
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.color_lens_rounded),
                  CustomText(txt: 'Pick a color for this task'),
                ],
              ),
              ColorsListForAddNote(),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 30, backgroundColor: Colors.white);
  }
}

class ColorsListForAddNote extends StatelessWidget {
  const ColorsListForAddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ColorItem(),
        itemCount: 5,
      ),
    );
  }
}
