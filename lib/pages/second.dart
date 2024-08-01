// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_project/pages/home.dart';
import 'package:simple_project/product.dart';

class Second extends StatelessWidget {
  Product? product;
  Second({this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("second page"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                Text('name : ${product?.name}'),
                SizedBox(
                  height: 20,
                ),
                Text('price : ${product?.price}'),
              ],
            ),
          )),
    );
  }
}
