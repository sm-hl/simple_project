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
        body: Wrap(
          direction: Axis.vertical,//horizental by default
          alignment: WrapAlignment.spaceAround,//start,center,end,spaceAround,spaceBetwen,spaceEvenlychange place of last widgets
          spacing: 12,//horizental spacing
          runSpacing: 12,//vertical spacing
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text("click"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                foregroundColor: MaterialStateProperty.all(Colors.white),//color of text
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("click"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                foregroundColor: MaterialStateProperty.all(Colors.white),//color of text
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("click"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                foregroundColor: MaterialStateProperty.all(Colors.white),//color of text
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("click"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                foregroundColor: MaterialStateProperty.all(Colors.white),//color of text
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("click"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                foregroundColor: MaterialStateProperty.all(Colors.white),//color of text
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text("click"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                foregroundColor: MaterialStateProperty.all(Colors.white),//color of text
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
          
          ],
        ));
  }
}
