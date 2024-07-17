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
                color: Color.fromARGB(255, 1100, 201, 32),
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 25,
                  color: Color.fromARGB(255, 1100, 201, 32),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Color.fromARGB(255, 1100, 201, 32),
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
            color: Color.fromARGB(255, 1100, 201, 32),
          ), //go to material icon https://fonts.google.com/icons
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(9),
            height: 300,
            width: 300,
            color: Colors.blueGrey,
            child: Stack(
              //like absolute in css, boxes over each other, so we should use positioned
              children: [
                Positioned(
                  top: 0, //leave space at the top
                  left: 0,
                  height: 100,
                  width: 100,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green[200],
                    child: Text(
                      "box1",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  height: 100, //use it here in place of Container
                  width: 100,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.amber[200],
                    child: Text(
                      "box2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  height: 100, //use it here in place of Container
                  width: 100,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red[200],
                    child: Text(
                      "box2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  height: 100, //use it here in place of Container
                  width: 100,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue[200],
                    child: Text(
                      "box2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red[300],
                    height: 100,
                    width: 100,
                    child: Text(
                      "box2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
