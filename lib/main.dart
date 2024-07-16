// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: simpleProject(),
    );
  }
}

class simpleProject extends StatelessWidget {
  const simpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              color: Color.fromARGB(220, 175, 221, 49),
              fontSize: 22,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true, //center title
        leading: IconButton(
            //left side of appbar
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 33,
              color: Color.fromARGB(255, 150, 201, 32),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                size: 25,
                color: Color.fromARGB(255, 150, 201, 32),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Color.fromARGB(255, 150, 201, 32),
              )),
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 7, //color of appbar controll shadow coordination
      ),
      floatingActionButton: FloatingActionButton(
        //fixed button on bottom right
        onPressed: () {},
        child: Icon(
          Icons.settings,
          color: Color.fromARGB(255, 150, 201, 32),
        ), //go to material icon https://fonts.google.com/icons
      ),
      body: Center(
          child: Text(
        'السلام عليكم, اليوم سنتكلم عن درس Flutter و Dart ',
        style: TextStyle(
          fontSize: 30.0,
          backgroundColor: Color.fromARGB(227, 107, 101, 93),
          color: Colors.white,
          decoration: TextDecoration.none,//overline:top, underline:bottom,lineThrough:on,none
          fontStyle: FontStyle.italic,//italic,normal 
          fontWeight: FontWeight.bold,//bold,normal,w100 -> 900
          height: 3,//space before & after line
          letterSpacing: 12.0,
          wordSpacing: 15.0
      ),
        maxLines: 3, //show number of lines
        overflow: TextOverflow.fade, //for more lines, ellipsis: 3 points, fade:opacity,
        textAlign: TextAlign.center, //right,left,center
        textDirection: TextDirection.rtl, //rtl: for arabic, ltr: for other lang
      )),
    );
  }
}
