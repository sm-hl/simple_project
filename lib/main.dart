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
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.blue[700],
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
                color: Colors.blue[700],
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 25,
                  color: Colors.blue[700],
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.blue[700],
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
            color: Colors.blue[700],
          ), //go to material icon https://fonts.google.com/icons
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Suivez Nous sur',
                  style: TextStyle(
                    fontFamily: 'PlaywriteCU', //restart app to apply font
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 1.5),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/facebook.svg",
                        color: Colors.blue[700],
                        height: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 1.5),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/instagram.svg",
                        color: Colors.blue[700],
                        height: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 1.5),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/twitter.svg",
                        color: Colors.blue[700],
                        height: 30,
                      ),
                    ),
                  
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
