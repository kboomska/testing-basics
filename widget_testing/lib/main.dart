import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: const Column(
          children: [
            ListTile(
              title: Text('Addition'),
              leading: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Subtraction'),
              leading: Icon(Icons.remove),
            ),
            ListTile(
              title: Text('Multiplication'),
              leading: Icon(CupertinoIcons.multiply),
            ),
            ListTile(
              title: Text('Division'),
              leading: Icon(CupertinoIcons.divide),
            ),
          ],
        ),
      ),
    );
  }
}
