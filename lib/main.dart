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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => courses
                  .map((course) => PopupMenuItem(
                        value: course,
                        child: Text(course),
                      ))
                  .toList(),
              onCanceled: () => print('nothing selected'),//if we clicked outside menu
              onSelected: (value) => setState(() => selectedCourse = value),
              icon: Icon(Icons.settings),//custom icon
              padding: EdgeInsets.only(right: 50),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //like row, but useful for buttons
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("add")),
                ElevatedButton(onPressed: () {}, child: Text("edit")),
                IconButton(onPressed: () {}, icon: Icon(Icons.save))
              ],
            ),

            // DropDown
            DropdownButton(
              items: courses.map((course) {
                return DropdownMenuItem(child: Text(course), value: course);
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCourse = value.toString();
                });
              },
              value: selectedCourse,
              icon: Icon(Icons.arrow_drop_down_circle_rounded),
              iconEnabledColor: Colors.orange,
              iconDisabledColor: Colors.grey, //if we have onChanged: null,
            ),

            SizedBox(
              height: 22,
            ),

            Text("you want to learn : $selectedCourse"),
          ],
        ),
      ),
    );
  }
}
