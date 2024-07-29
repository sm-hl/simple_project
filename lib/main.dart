// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_project/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        floatingActionButtonTheme: FloatingActionButtonThemeData(foregroundColor: Colors.purple[200], backgroundColor: Colors.purple[900]),
        tabBarTheme: TabBarTheme(indicatorColor: Colors.purple[200], labelColor: Colors.purple[100], unselectedLabelColor: Colors.white38, dividerColor: Colors.purple[900]),
        secondaryHeaderColor: Colors.red,
        appBarTheme: AppBarTheme(backgroundColor: Colors.purple[900], foregroundColor: Colors.white70),
        scaffoldBackgroundColor: Colors.purple[200],
        iconTheme: IconThemeData(size: 100,color: Colors.purple[900]),//for all icons in app (named by : app wide theme)
      ),
      home: Home(),
    );
  }
}

