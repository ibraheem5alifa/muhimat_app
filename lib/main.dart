import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muhimat_app/views/home_screen.dart';
import 'package:muhimat_app/widgets/my_bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MuhimatApp());
}

class MuhimatApp extends StatelessWidget {
  const MuhimatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
