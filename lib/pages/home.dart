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
            onPressed: () async {
              // after clicking button in second page, the screen will be closed so we should wait
              var result = await Navigator.pushNamed(context, '/second');
              //to remove latest snackbar and show current directly
              ScaffoldMessenger.of(context)..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text('you choosed $result')));
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
