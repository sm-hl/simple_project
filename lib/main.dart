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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text("box1",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
              width: double.infinity,//full screen width
              height: 300,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.2),
                color: Colors.blueGrey,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("box2.1",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(right: 22),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey,
                    ),
                  ),
                  Container(
                    child: Text("box2.1",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(right: 22),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey,
                    ),
                  ),
                  Container(
                    child: Text("box2.1",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey,
                    ),
                  ),
                  Container(
                    child: Text("box2.1",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 22),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey,
                    ),
                  ),
                  Container(
                    child: Text("box2.1",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text("box3", style: TextStyle(color: Colors.white)),
              width: 500,
              height: 300,
              margin: EdgeInsets.only(top: 22),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.2),
                color: Colors.blueGrey,
              ),
            ),
          ],
        )
      )
    );
  }
}
