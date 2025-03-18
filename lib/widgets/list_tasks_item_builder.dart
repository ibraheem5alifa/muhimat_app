import 'package:flutter/material.dart';
import 'package:muhimat_app/widgets/task_item.dart';

class ListTasksItemBuilder extends StatelessWidget {
  const ListTasksItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ListView.separated(
        itemBuilder: (context, index) => TaskItem(),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 10,
      ),
    );
  }
}
