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
      body: Container(
        child: Text("Hello, Friends", style: TextStyle(fontSize: 12.0),),
        // color: Colors.grey,//background color of container,[should be in container or decoration]
        // margin: EdgeInsets.fromLTRB(10, 12, 3, 0),//all(), fromLTRB(left,top,right,bottom), symmetric(vertical: space in top & bottom,horizental:space in left & right)
        // margin: EdgeInsets.symmetric(vertical: 22,horizontal: 33),//EdgeInsets.fromLTRB(33, 22, 33, 22)
        margin: EdgeInsets.all(11),//EdgeInsets.fromLTRB(11, 11, 11, 11)
        padding: EdgeInsets.all(11),//like padding
        height: 220.0,
        width: 261.0,
        alignment: Alignment.center,//move to topRight,topLeft,topCenter(same for bottom),centerRight,centerLeft,center [rule is vertical then horizental]
        transform: Matrix4.rotationZ(0.01),//rotate 
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(23),//should'nt be with shape
          shape: BoxShape.circle,//rectangle,circle
          color: Colors.grey,//background color of container
          border: Border.all(color: Colors.black, width: 2.0),//border color
        ),
      ),
          
    );
  }
}
