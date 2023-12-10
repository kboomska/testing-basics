import 'package:flutter/material.dart';

import 'package:widget_testing/calculator.dart';
import 'package:widget_testing/operation.dart';
import 'package:widget_testing/operation_widget.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Calculator();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.add,
                ),
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.subtract,
                ),
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.multiply,
                ),
                OperationWidget(
                  calculator: calculator,
                  operation: Operation.divide,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
