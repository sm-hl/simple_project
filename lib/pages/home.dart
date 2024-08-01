// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/second.dart';
import 'package:simple_project/student.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pass parameters to page"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, '/first', arguments: Student(name: 'Salma', age: 24));
            },
            child: Text(
              "Go To First Page",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
            Navigator.pushNamed(
                  context, '/second', arguments: Student(name: 'Sami', age: 14));
            },
            child: Text(
              "Go To Second Page",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          )
        ],
      )),
    );
  }
}
