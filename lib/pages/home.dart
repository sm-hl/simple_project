// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        title: Text('Switch'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Orange', style: TextStyle(fontSize: 20),),
            Radio(
              value: Colors.orange,//open=if value = groupeValue, close:verse
              groupValue: selectedColor,
              onChanged: (newValue) {
                setState(() {
                  selectedColor = newValue;//newValue take the value of Radio
                });
              },
            ),
            RadioListTile(//just have a label
              title: Text('Blue'),
              value: Colors.blue,//open=if value = groupeValue, close:verse
              groupValue: selectedColor,
              onChanged: (newValue) {
                setState(() {
                  selectedColor = newValue;//newValue take the value of Radio
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
