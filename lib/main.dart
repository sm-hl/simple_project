// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

// statefulWidget = can call build more time to have interactivity
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/loading.gif',//from https://www.pinterest.com/pin/317363104968450178/
          image: 'https://s3-eu-west-1.amazonaws.com/blog-ecotree/blog/0001/01/ad46dbb447cd0e9a6aeecd64cc2bd332b0cbcb79.jpeg',
        ),
      ),
    );
  }

}