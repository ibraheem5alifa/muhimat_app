import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:muhimat_app/constants.dart';
import 'package:muhimat_app/cubits/layout_cubit/layout_cubit.dart';
import 'package:muhimat_app/models/task_model.dart';
import 'package:muhimat_app/views/home_screen.dart';
import 'package:muhimat_app/my_bloc_observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(kTasksBox);
  runApp(MuhimatApp());
}

class MuhimatApp extends StatelessWidget {
  const MuhimatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
