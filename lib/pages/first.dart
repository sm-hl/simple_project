// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/student.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
  Student student =  ModalRoute.of(context)!.settings.arguments as Student;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("first page"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text('Name: ${student.name}'),
              Text('Age: ${student.age}'),
            ],
          ),
        )
      
      ),
    );
  }
}
