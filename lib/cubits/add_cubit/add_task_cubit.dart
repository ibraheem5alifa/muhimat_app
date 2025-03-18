import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:muhimat_app/constants.dart';
import 'package:muhimat_app/cubits/add_cubit/add_task_states.dart';

import 'package:hive/hive.dart';
import 'package:muhimat_app/models/task_model.dart';

class AddTaskCubit extends Cubit<AddTaskStates> {
  AddTaskCubit() : super(AddTaskStateInitial());

  addTask(TaskModel task) async {
    var box = await Hive.openBox<TaskModel>(kTasksBox);
    emit(AddTaskStateLoading());
    box
        .add(task)
        .then((value) {
          log('values add $value');
          emit(AddTaskStateSuccess());
        })
        .catchError((error) {
          emit(AddTaskStateFailure(errorMessage: error));
        });
  }
}
