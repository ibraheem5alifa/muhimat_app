import 'package:flutter/material.dart';
import 'package:muhimat_app/widgets/custom_text.dart';

class DoneTasks extends StatelessWidget {
  const DoneTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CustomText(txt: 'done tasks'));
  }
}
