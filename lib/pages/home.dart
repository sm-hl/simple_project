// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //tree steps to focus the next input
  //1-create a focusNode
  var myFocus;
  @override
  void initState() {
    super.initState();
    myFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    myFocus.dispose();//to distroy focus node
  }

  final formKey = GlobalKey<FormState>(); //is only for a single form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms 1'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                autofocus: true, // to make the cursor on this input
                decoration: InputDecoration(
                  hintText: 'first name', //placeholder
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "first name required";
                  }
                  return null;
                },
              ),
              SizedBox(height: 22),
              TextFormField(
                //2-pass the focusNode to a textField
                focusNode: myFocus,
                decoration: InputDecoration(
                  hintText: 'last name', //placeholder
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "last name required";
                  }
                  return null;
                },
              ),
              // ElevatedButton(
              //   child: Text('Send'),
              //   onPressed: () {
              //     //test if form is valid using a key specific for this form
              //     if (formKey.currentState!.validate()) {
              //       //store data to local db or send it to api on server
              //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //           content: Text('Success : Data has been sent!!')));
              //     }
              //   },
              // )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //3-give focus to the textfield when button is tapped
          myFocus.requestFocus();
        },
        child: Text('next'),
      ),
    );
  }
}
