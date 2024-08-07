// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/screen1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
          // push : use basic route(we call it also "on the fly route")
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Screen1()));
              },
              child: Text("open Screen 1"),
            ),
            SizedBox(height: 10,),
            // pushNamed : use named route
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen1');
              },
              child: Text("open Screen 1"),
            ),
            SizedBox(height: 10,),
            // pop : to go back = remove from stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();//close app if the home is only route in stack
              },
              child: Text("Back using pop()"),
            ),
            SizedBox(height: 10,),
            // maybePop : go back if we have routes in stack
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();//if not, it doesn't do anything
              },
              child: Text("Back using maybePop()"),
            ),
            SizedBox(
              height: 10,
            ),
            // canPop : return true if we can go back
            ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) 
                {
                  Navigator.of(context).pop();
                } else {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: Text('Can not pop'),
                      ),
                  );
                }
              },
              child: Text("Back using canPop()"),
            ),
            SizedBox(height: 10,),
            // popAndPushNamed : remove current route from stack then got to next route
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/screen3');//if we go back,the app will be closed
              },
              child: Text("open screen 3"),
            ),
          ],
        )
      )
    );
  }
}
