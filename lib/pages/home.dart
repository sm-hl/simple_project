// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              Text('You typed \n $text',
                  style: Theme.of(context).textTheme.headlineLarge),
              TextFormField(
                autofocus: true, // to make the cursor on this input
                decoration: InputDecoration(
                  hintText: 'first name', //placeholder
                ),
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
