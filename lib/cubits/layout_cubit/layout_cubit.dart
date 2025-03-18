import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_states.dart';
import 'package:muhimat_app/widgets/archived_tasks.dart';
import 'package:muhimat_app/widgets/done_tasks.dart';
import 'package:muhimat_app/widgets/new_tasks.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutStateInitial());
  int currentIndex = 0;
  List<String> screensTitle = const [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  List<IconData> screensIcon = [
    Icons.add_task_rounded,
    Icons.task_alt_rounded,
    Icons.archive_rounded,
  ];
  List<Widget> screensContent = const [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  changeLayout() {
    emit(LayoutStateChanges());
  }
}
