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
  List<String> courses = ['Dart', 'Flutter', 'React', 'JS'];
  String selectedCourse = 'Dart';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //like row, but useful for buttons
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("add")),
                ElevatedButton(onPressed: () {}, child: Text("edit")),
                IconButton(onPressed: () {}, icon: Icon(Icons.save))
              ],
            ),

            // DropDown
            DropdownButton(
              items: courses.map((course){
                return DropdownMenuItem(child: Text(course), value: course);
              }).toList(),
              onChanged: (value){
                setState(() {
                  selectedCourse = value.toString();
                });
              },
              value: selectedCourse,
            ),

            SizedBox(height: 22,),
          
            Text("you want to learn : $selectedCourse"),
          ],
        ),
      ),
    );
  }
}
