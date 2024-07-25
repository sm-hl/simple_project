// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter App',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 110, 124),
          iconTheme: IconThemeData(color: Colors.white), //color drawer icon
        ),
        //menu sidebar ->in left, endDrawer: Drawer() -> in right
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 110, 124),
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/profil.jpg'),
                        ),
                        SizedBox(width: 10),
                        Text('Rizky',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Last activity : 12-02-2024 12:24 am",
                        style: TextStyle(fontSize: 9, color: Colors.white))
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home,
                    size: 20, color: Color.fromARGB(255, 0, 110, 124)),
                title: Text('Home',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                // subtitle: Text('Home', style: TextStyle(fontSize: 11, color: Colors.black)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_3_rounded,
                    size: 20, color: Color.fromARGB(255, 0, 110, 124)),
                title: Text('Profile',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                // subtitle: Text('Home', style: TextStyle(fontSize: 11, color: Colors.black)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings,
                    size: 20, color: Color.fromARGB(255, 0, 110, 124)),
                title: Text('Settings',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                // subtitle: Text('Home', style: TextStyle(fontSize: 11, color: Colors.black)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout,
                    size: 20, color: Color.fromARGB(255, 0, 110, 124)),
                title: Text('Logout',
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                // subtitle: Text('Home', style: TextStyle(fontSize: 11, color: Colors.black)),
                onTap: () {
                  print('logout');
                },
              ),
            ],
          ),
        ),
        // body: null,
      ),
    );
  }
}
