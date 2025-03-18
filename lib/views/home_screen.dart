import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_cubit.dart';
import 'package:muhimat_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:muhimat_app/widgets/custom_text.dart';
import 'package:muhimat_app/widgets/new_tasks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.task_alt_rounded, size: 30),
          titleSpacing: 1,
          title: CustomText(txt: 'News Task', fontsize: 24),
        ),

        bottomNavigationBar: CustomBottomNavigationBar(),
        body: NewTasks(),
      ),
    );
  }
}
