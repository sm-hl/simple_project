import 'package:flutter/material.dart';
import 'package:simple_project/pages/home.dart';
import 'package:simple_project/pages/second.dart';
import 'package:simple_project/routes/routes.dart';
import 'package:simple_project/student.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
