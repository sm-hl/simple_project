import 'package:flutter/material.dart';
import 'package:simple_project/pages/Home.dart';
import 'package:simple_project/pages/first.dart';
import 'package:simple_project/pages/second.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  '/first': (context) => First(),
  '/second': (context) => Second(),
};
