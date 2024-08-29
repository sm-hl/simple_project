import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? tempValue;
  String tempType = 'Celsius';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Conversion demo2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // input
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: 'Enter Temp to convert to $tempType',
                  hintText: 'Enter Temperature'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onChanged: (value) {
                setState(() {
                  try {
                    tempValue = double.parse(value);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalide Input')));
                  }
                });
              },
            ),
            //radios
            RadioListTile(
              //just have a label
              title: Text('ºF'),
              value: 'Fahrenheit', //open=if value = groupeValue, close:verse
              groupValue: tempType,
              onChanged: (newValue) {
                setState(() {
                  tempType = newValue!; //newValue take the value of Radio
                });
              },
            ),
            RadioListTile(
              //just have a label
              title: Text('ºC'),
              value: 'Celsius', //open=if value = groupeValue, close:verse
              groupValue: tempType,
              onChanged: (newValue) {
                setState(() {
                  tempType = newValue!; //newValue take the value of Radio
                });
              },
            ),
            // button
            ElevatedButton(
              child: Text('Convert'),
              onPressed: () {
                setState(() {
                  if (tempValue != null) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('Result Temperature Conversion'),
                              content: Text(
                                  'Result : ${tempType == 'Celsius' ? '$tempValue ºC = ${(tempValue! * 9 / 5) + 32} ºF' : '$tempValue ºF = ${(tempValue! - 32) * 5 / 9} ºC'}'),
                            ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please enter a value')));
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
