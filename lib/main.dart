import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('all about listView'),
      ),
      body: ListView(//used for a small number of items => decrease performance
        children: [
          Container(
            color: Colors.red,
            height: 200,
            child: Text('box'),
          ),
          Container(
            color: Colors.green,
            height: 200,
            child: Text('box'),
          ),
          Container(
            color: Colors.blue,
            height: 200,
            child: Text('box'),
          ),
          Container(
            color: Colors.grey,
            height: 200,
            child: Text('box'),
          ),
        ],
      ),
    );
  }
}