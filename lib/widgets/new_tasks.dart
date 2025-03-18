import 'package:flutter/material.dart';
import 'package:muhimat_app/constants.dart';
import 'package:muhimat_app/widgets/custom_text.dart';
import 'package:muhimat_app/widgets/list_tasks_item_builder.dart';

class NewTasks extends StatelessWidget {
  const NewTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTasksItemBuilder();
  }
}
