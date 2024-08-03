import 'package:flutter/material.dart';
import 'package:new_project/module_10/home_screen.dart';

import 'Module 10 class 11/class11.dart';
import 'column_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassElevenScreen(),
    );
  }
}

