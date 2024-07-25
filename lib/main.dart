// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,//number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Demo"),
            centerTitle: true,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: 'home',),//tab title
                Tab(icon: Icon(Icons.search), text: 'search',),
                Tab(icon: Icon(Icons.person), text: 'profile',),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[//tab content
            Center(child: Text("Home Page")),
            Center(child: Text("Search Page")),
            Center(child: Text("Profile Page")),
          ]),
        ),
      ),
    );
  }
}
