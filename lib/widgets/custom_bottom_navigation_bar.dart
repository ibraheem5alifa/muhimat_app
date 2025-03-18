import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.add_task_rounded),
          label: 'New Tasks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task_alt_rounded),
          label: 'Done Tasks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.archive_rounded),
          label: 'Archived Tasks',
        ),
      ],
    );
  }
}
