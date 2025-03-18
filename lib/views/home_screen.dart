import 'package:flutter/material.dart';
import 'package:muhimat_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:muhimat_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.task_alt_rounded, size: 30),
        titleSpacing: 1,
        title: CustomText(txt: 'News Task', fontsize: 24),
      ),

      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
