import 'package:flutter/material.dart';
import 'package:muhimat_app/views/home_screen.dart';

void main() {
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
