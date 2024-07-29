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
  final List<String> entries = ['box1', 'box2', 'box3', 'box4'];
  final List<int> colors = [100, 200, 300, 400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('all about listView'),
      ),
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            color: Colors.amber[colors[index]],
            child: Text(entries[index]),
          );
        },
      ),
    );
  }
}
