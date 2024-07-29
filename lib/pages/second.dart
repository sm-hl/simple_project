// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_project/pages/home.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  icon: Icon(Icons.skip_previous_sharp)),
                Text(
                  "Go To Home Page",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
            ],
          ),
        )
      
      ),
    );
  }
}
