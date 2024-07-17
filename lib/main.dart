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
      debugShowCheckedModeBanner: false,//false: remove debug ticket, true: show it
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
      body: Padding(
        padding: EdgeInsets.only(top: 12),//add space out of widget child
        child: Container(
        height: 500,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Column(
          children: [
            Expanded(//divide the empty space to total flex number and distributed to children
              flex: 1,//0: not expanded
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                color: Colors.amber[200],
                child: Text("box1", style: TextStyle(color: Colors.white),),
              ),
            ),
            Expanded(
              flex: 2,//0: not expanded
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                color: Colors.blue[300],
                child: Text("box1", style: TextStyle(color: Colors.white),),
              ),
            ),
            Expanded(
              flex: 1,//0: not expanded
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                color: Colors.red[300],
                child: Text("box1", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),  
      )
    );
  }
}
