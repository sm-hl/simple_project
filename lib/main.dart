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
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        floatingActionButtonTheme: FloatingActionButtonThemeData(foregroundColor: Colors.purple[200], backgroundColor: Colors.purple[900]),
        tabBarTheme: TabBarTheme(indicatorColor: Colors.purple[200], labelColor: Colors.purple[100], unselectedLabelColor: Colors.white38, dividerColor: Colors.purple[900]),
        secondaryHeaderColor: Colors.red,
        appBarTheme: AppBarTheme(backgroundColor: Colors.purple[900], foregroundColor: Colors.white70),
        scaffoldBackgroundColor: Colors.purple[200],
        iconTheme: IconThemeData(size: 100,color: Colors.purple[900]),//for all icons in app (named by : app wide theme)
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
            floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
          //use this if add icon not showen
          // floatingActionButton: Theme(
          //   data: Theme.of(context).copyWith(
          //     iconTheme: IconThemeData(size: 20)
          //   ),
          //   child: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
          // ),
          body: TabBarView(children: <Widget>[//tab content
            Center(
              child: Column(
                children: [
                  Icon(Icons.home),
                  Text("Home Page", style: TextStyle(color: Theme.of(context).primaryColor),),
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  Icon(Icons.search),
                  Text("Search Page", style: TextStyle(color: Theme.of(context).primaryColor),),
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  Icon(Icons.person),
                  Text("Profile Page", style: TextStyle(color: Theme.of(context).primaryColor),),
                ],
              )
            ),
          ]),
        ),
      );
  }
}