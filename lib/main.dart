// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //false: remove debug ticket, true: show it
      theme: ThemeData.light(useMaterial3: true),
      home: simpleProject(),
    );
  }
}

class simpleProject extends StatelessWidget {
  const simpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //to avoid phone barre (time, charge)
      child: Scaffold(
        backgroundColor: Color(0xff231f26),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Form",style: TextStyle(color: Colors.white, fontSize: 22),),
              SizedBox(height: 20),
              TextField(
                obscureText: false, //hide text for password, false by default
                keyboardType: TextInputType.number, //show text type in keyboard
                textInputAction: TextInputAction
                    .done, //a button in keyboard,done: a check mark, next: ">" mark
                decoration: InputDecoration(
                  hintText: 'Enter your name', //placeholder
                  hintStyle: TextStyle(color: Colors.grey[700]),
                  labelText: "Name",
                  labelStyle: TextStyle(
                      fontSize: 12, color: Colors.white), //to style label
                  // border: OutlineInputBorder(),//add full border
                  // border: InputBorder.none,//remove border
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[400],
                    size: 23,
                  ), //out input
                  suffixIcon: Icon(
                    Icons.sticky_note_2,
                    color: Colors.grey[400],
                    size: 18,
                  ), //in & after input
                  // prefixIcon: Icon(Icons.person, color: Colors.grey[200],),//in & before input
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true, //hide text for password, false by default
                keyboardType: TextInputType.number, //show text type in keyboard
                textInputAction: TextInputAction
                    .done, //a button in keyboard,done: a check mark, next: ">" mark
                decoration: InputDecoration(
                  hintText: 'Enter your password', //placeholder
                  hintStyle: TextStyle(color: Colors.grey[700]),
                  labelText: "Password",
                  labelStyle: TextStyle(
                      fontSize: 12, color: Colors.white), //to style label
                  //-->icon
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey[400],
                    size: 23,
                  ), //out input
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[400],
                    size: 18,
                  ), //in & after input
                  // prefixIcon: Icon(Icons.person, color: Colors.grey[200],),//in & before input
                  //to add background color to input
                  filled: true,
                  fillColor: Colors.white10,
                  //-->border
                  // border: OutlineInputBorder(),//add full border
                  // border: InputBorder.none,//remove border
                  focusedBorder: OutlineInputBorder(
                    //to add border color to input
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
