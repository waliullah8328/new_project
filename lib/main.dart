import 'package:flutter/material.dart';
import 'Module 11 Class 12/class12.dart';
import 'Module 11 Class 12/switch.dart';
import 'Module 11 Class 12/tabbar.dart';
import 'Module 13/class13.dart';
import 'Module 13/image_picker.dart';
import 'Module 13/layout_builder.dart';
import 'Module 13/orientation_builder.dart';
import 'Module 13/time_picker.dart';


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
      home: ImagePickerScreen(),
    );
  }
}

