// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDarkeMode = false;

  @override
  Widget build(BuildContext context) {
    String mode = isDarkeMode ? 'Dark Mode' : 'Light Mode';
    Color color = isDarkeMode ? Colors.white : Colors.black;
    Color backgroundColor = isDarkeMode ? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Switch'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mode, style: TextStyle(color: color, fontSize: 30),),
            Switch(
              value: isDarkeMode,//open=true, close:false
              onChanged: (value) {
                setState(() {
                  isDarkeMode = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
