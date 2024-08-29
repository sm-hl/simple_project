import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String tempValue = '';
  String tempType = 'Celsius';
  double result = 0.0;

  double calculatTemperature() {
    if (tempValue.isEmpty) {
      return 0.0;
    }
    if (tempType == 'Celsius') {
      return (double.parse(tempValue) * 9 / 5) + 32;
    } else if (tempType == 'Fahrenheit') {
      return (double.parse(tempValue) - 32) * 5 / 9;
    } else {
      return 0.0;
    }
  }

  void handleConversion() {
    setState(() {
      result = calculatTemperature();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Conversion demo1'),
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
                  tempValue = value;
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
            ElevatedButton(onPressed: handleConversion, child: Text('Convert')),
            Text('Result : ${result.toStringAsFixed(2)}')
          ],
        ),
      ),
    );
  }
}
