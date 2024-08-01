// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_project/pages/second.dart';
import 'package:simple_project/product.dart';
import 'package:simple_project/student.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = List.generate(
        100,
        (index) =>
            Product(name: 'Product ${index + 1}', price: (index + 1) * 300));
    return Scaffold(
      appBar: AppBar(
        title: Text("pass parameters to page"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) => ListTile(
            title: Text(products[i].name),
            trailing: Text('Price : ${products[i].price}'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Second(product: products[i])));
            }
        ),
      ),
    );
  }
}
