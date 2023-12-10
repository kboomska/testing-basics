import 'package:flutter/material.dart';

import 'package:widget_testing/calculator.dart';
import 'package:widget_testing/operation.dart';

class OperationWidget extends StatefulWidget {
  final Operation operation;
  final Calculator calculator;

  const OperationWidget({
    super.key,
    required this.calculator,
    required this.operation,
  });

  @override
  State<OperationWidget> createState() => _OperationWidgetState();
}

class _OperationWidgetState extends State<OperationWidget> {
  final _topTextController = TextEditingController();
  final _bottomTextController = TextEditingController();

  String _operationResult = '';

  @override
  void initState() {
    _topTextController.addListener(_getResult);
    _bottomTextController.addListener(_getResult);
    super.initState();
  }

  @override
  void dispose() {
    _topTextController.dispose();
    _bottomTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Operation',
        style: TextStyle(fontSize: 20),
      ),
      leading: const Icon(Icons.access_time_outlined),
      subtitle: Column(
        children: [
          TextField(
            controller: _topTextController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Enter 1st number'),
          ),
          TextField(
            controller: _bottomTextController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Enter 2nd number'),
          ),
          const SizedBox(height: 20),
          Text(
            'Result: $_operationResult',
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }

  void _getResult() {
    try {
      final result = _calculate(
        double.tryParse(_topTextController.text)!,
        double.tryParse(_bottomTextController.text)!,
      );
      setState(() {
        _operationResult = result.toString();
      });
    } catch (_) {
      setState(() {
        _operationResult = '';
      });
    }
  }

  double _calculate(double top, double bottom) {
    double result;

    switch (widget.operation) {
      case Operation.add:
        result = widget.calculator.add(top, bottom);
      case Operation.subtract:
        result = widget.calculator.subtract(top, bottom);
      case Operation.multiply:
        result = widget.calculator.multiply(top, bottom);
      case Operation.divide:
        result = widget.calculator.divide(top, bottom);
    }

    return result;
  }
}
