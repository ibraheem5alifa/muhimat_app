import 'package:flutter/material.dart';
import 'package:muhimat_app/widgets/custom_text.dart';

class NewTasks extends StatelessWidget {
  const NewTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CustomText(txt: 'New tasks'));
  }
}
