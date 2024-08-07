// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/screen2.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            //use basic route, remove all routes but leave only route '/' with '/screen2' in the stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (c) => Screen2()), ModalRoute.withName('/'),);
              },
              child: Text("Open Screen 2"),
            ),
            SizedBox(height: 10,),
            //use named route, remove all routes but leave only route '/' with '/screen2' in the stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil('/screen2', ModalRoute.withName('/'));
              },
              child: Text("Open Screen 2"),
            ),
          ],
        )
      )
    );
  }
}
