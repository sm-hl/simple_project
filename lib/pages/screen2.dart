// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            //use basic route, remove all routes and the new route '/' becomes the only route in the stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) => Screen3()));
              },
              child: Text("Open Screen 3"),
            ),
            SizedBox(height: 10,),
            //use named route, remove all routes and the new route '/' becomes the only route in the stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen3');
              },
              child: Text("Open Screen 3"),
            ),
          ],
        )
      )
    );
  }
}
