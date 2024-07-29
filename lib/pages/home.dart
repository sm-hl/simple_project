// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/second.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          centerTitle: true,
        ),
        body: TabBarView(children: <Widget>[
          //tab content
          Center(
              child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Second()));
                },
                icon: Icon(Icons.next_plan_sharp)),
              Text(
                "Go To Second Page",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ],
          )),
          Center(
              child: Column(
            children: [
              Icon(Icons.search),
              Text(
                "Search Page",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ],
          )),
          Center(
              child: Column(
            children: [
              Icon(Icons.person),
              Text(
                "Profile Page",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
