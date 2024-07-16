import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        elevation: 50, //color of appbar
        title: Text("Home"),
        centerTitle: true, //center title
        leading: IconButton(//left side of appbar
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 33,
              color: Color.fromARGB(255, 150, 201, 32),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                size: 25,
                color: Color.fromARGB(255, 150, 201, 32),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Color.fromARGB(255, 150, 201, 32),
              )),
        ],
      ),
      body: Center(child: Text('Hello, Salma 👋', style: TextStyle(fontSize: 40))),
    );
  }
}
