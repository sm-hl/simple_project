// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';
  //4 steps to use TextEditingController : its more flexible
  //1-Create a TextEditing Controller.
  final myController = TextEditingController();

  //3-Create a function to print the latest value.
  getLatest() {
    setState(() {
      text = myController.text;
    });
  }

  //4-Listen to the controller for changes.
  @override
  initState() {
    super.initState();
    myController.addListener(getLatest);
  }

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
                //2-Connect the TextEditing Controller to a text field.
                controller: myController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
