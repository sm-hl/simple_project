import 'package:flutter/material.dart';
import 'package:simple_project/pages/Home.dart';
import 'package:simple_project/pages/screen1.dart';
import 'package:simple_project/pages/screen2.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  '/screen1': (context) => Screen1(),
  '/screen2': (context) => Screen2(),
};
