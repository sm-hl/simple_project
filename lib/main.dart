// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

// statefulWidget = can call build more time to have interactivity
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,//give same width but for all screen
        children: [
          ElevatedButton(onPressed: (){}, child: Text('short')),
          ElevatedButton(onPressed: (){}, child: Text('a bit longer')),
          ElevatedButton(onPressed: (){}, child: Text('a longest text button')),
        ],
      ),
    );
  }

}