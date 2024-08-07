// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //is only for a single form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms 1'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your name', //placeholder
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Name required";
                }
                return null;
              },
            ),
            SizedBox(height: 22),
            ElevatedButton(
              child: Text('Send'),
              onPressed: () {
                //test if form is valid using a key specific for this form
                if (formKey.currentState!.validate()) {
                  //store data to local db or send it to api on server
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Success : Data has been sent!!')));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
