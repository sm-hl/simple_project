import 'package:flutter/material.dart';
import 'package:simple_project/pages/second.dart';
import 'package:simple_project/routes/routes.dart';
import 'package:simple_project/student.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        //check the route name
        print(settings.name);
        if (settings.name == '/second') {
          Student s = settings.arguments as Student;
          print(s.name);
          return MaterialPageRoute(
            builder: (context) => Second(name: s.name, age: s.age),
          );
        }
        return null;
      },
      routes: routes,
    );
  }
}
