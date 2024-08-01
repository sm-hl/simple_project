import 'package:flutter/material.dart';
import 'package:simple_project/main.dart';
import 'package:simple_project/pages/second.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  '/second': (context) => Second(),
};
