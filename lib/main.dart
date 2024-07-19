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
      backgroundColor: Color(0xff231f26), //background color of my main screen

      appBar: AppBar(
        title: Text(
          "Ninja ID Card",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
        ),
        centerTitle: true, //center title
        backgroundColor: Color(0xff2e2d2e),
        elevation: 0, //remove shadow
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric(vertical: 32),
                  margin: EdgeInsets.only(bottom: 20),
                  width: 80,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      // border: Border(bottom: BorderSide(width: 1.5, color: Colors.white30),)
                      ),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profil.jpg"),
                        radius: 36,
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.verified,
                            color: Colors.blue[200],
                            size: 17,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Divider(
                height: 1,
                color: Colors.grey[200],
                thickness: 1,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "NAME",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Chun-Li",
                style: TextStyle(color: Colors.amberAccent, fontSize: 33),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "8",
                style: TextStyle(color: Colors.amberAccent, fontSize: 22),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  // ignore: deprecated_member_use
                  SvgPicture.asset(
                    "assets/images/mail.svg",
                    color: Colors.grey,
                    width: 13,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "chun.lo@thenetninja.co.uk",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
