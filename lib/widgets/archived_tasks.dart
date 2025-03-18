import 'package:flutter/material.dart';
import 'package:muhimat_app/widgets/custom_text.dart';

class ArchivedTasks extends StatelessWidget {
  const ArchivedTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CustomText(txt: 'Archived tasks'));
  }
}
