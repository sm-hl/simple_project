// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/screen1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
          // push : use basic route(we call it also "on the fly route")
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Screen1()));
              },
              child: Text("open Screen 1"),
            ),
            SizedBox(height: 10,),
            // pushNamed : use named route
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen1');
              },
              child: Text("open Screen 1"),
            ),
          ],
        )
      )
    );
  }
}
