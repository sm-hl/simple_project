// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// statefulWidget = can call build more time to have interactivity
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // fields = attributes = instance variable = state
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ElevatedButton(
            onPressed: () {
              // call build
              setState(() {
                count++;
              });
            },
            child: Text("you clicked $count times")
        ),
      ),
    );
  }
}
