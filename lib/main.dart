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
        title: Text('all about GridView'),
      ),
      body: GridView.count(
        // scrollDirection: Axis.vertical,//is default
        crossAxisSpacing:
            2, //space between rows for Axis.horizontal, space between rows for Axis.vertical
        mainAxisSpacing: 5, //space between items
        crossAxisCount:
            2, //number of rows when using Axis.horizontal, or column when using Axis.vertical
        children: List.generate(100, (index) {
          return Container(
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.car_crash,size: 100,),
                  Text('Product $index'),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Product $index is added to cart!')));
                  }, child: Icon(Icons.shopping_bag,size: 20,),)
                ],
              ));
        }),
      ),
    );
  }
}
