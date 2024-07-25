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

  List<PopupMenuEntry<dynamic>> list = [];

  @override
  void initState() {
    super.initState();
    list.add(PopupMenuItem(child: Text('Dart'), value: 'Dart'));
    list.add(PopupMenuItem(child: Text('Flutter'), value: 'Flutter'));
    list.add(PopupMenuDivider(height: 12,));
    list.add(PopupMenuItem(child: Text('React'), value: 'React'));
    list.add(PopupMenuItem(child: Text('JS'), value: 'JS'));
  }

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
              itemBuilder: (context) =>list,
              onCanceled: () =>
                  print('nothing selected'), //if we clicked outside menu
              onSelected: (value) => setState(() => selectedCourse = value),
              icon: Icon(Icons.settings), //custom icon
              padding: EdgeInsets.symmetric(horizontal: 20),
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
