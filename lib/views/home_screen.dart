import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_cubit.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_states.dart';
import 'package:muhimat_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutCubit cubit = BlocProvider.of<LayoutCubit>(context);
    return BlocBuilder<LayoutCubit, LayoutStates>(
      builder:
          (context, state) => Scaffold(
            appBar: AppBar(
              leading: Icon(cubit.screensIcon[cubit.currentIndex], size: 30),
              titleSpacing: 1,
              title: CustomText(
                txt: cubit.screensTitle[cubit.currentIndex],
                fontsize: 24,
              ),
            ),

            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.currentIndex = index;
                cubit.changeLayout();
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
            body: cubit.screensContent[cubit.currentIndex],
          ),
    );
  }
}
