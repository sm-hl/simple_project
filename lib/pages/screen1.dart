// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen 1"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            //pushReplacement : use basic route, role: to replace last route(ex: login -> home, we can't go back to login if we are connected to home page)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (c) => Screen2()));
              },
              child: Text("open Screen 2"),
            ),
            SizedBox(
              height: 10,
            ),
            //pushReplacementNamed : use named route, role: to replace last route(ex: login -> home, we can't go back to login if we are connected to home page)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/screen2');
              },
              child: Text("open Screen 2"),
            ),
            SizedBox(
              height: 10,
            ),
            // pop : to go back = remove from stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(); //close app if the home is only route in stack
              },
              child: Text("Back using pop()"),
            ),
            SizedBox(
              height: 10,
            ),
            // maybePop : go back if we have routes in stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .maybePop(); //if not, it doesn't do anything
              },
              child: Text("Back using maybePop()"),
            ),
            SizedBox(height: 10,),
            // popAndPushNamed : remove current route from stack then got to next route
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/screen3');//if we go back,the app will be closed
              },
              child: Text("open screen 3"),
            ),
          ],
        )));
  }
}
