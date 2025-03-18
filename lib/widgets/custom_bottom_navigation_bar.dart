import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_cubit.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_states.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutStates>(
      builder:
          (context, state) => BottomNavigationBar(
            onTap: (index) {
              context.read<LayoutCubit>().changeLayout(index);
            },
            currentIndex: context.read<LayoutCubit>().currentIndex,
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
          ),
    );
  }
}
