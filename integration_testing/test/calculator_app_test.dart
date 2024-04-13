import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:integration_testing/calculator.dart';
import 'package:integration_testing/main.dart';
import 'package:integration_testing/operation.dart';
import 'package:integration_testing/operation_widget.dart';

void main() {
  late Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group('CalculatorApp', () {
    testWidgets('Render 4 widgets of Type OperationWidget', (widgetTester) async {
      // Create the widget - CalculatorApp()
      await widgetTester.pumpWidget(const CalculatorApp());

      // Create the Finders
      final listTileFinder = find.byType(OperationWidget);

      // Comparing finder with matcher
      expect(listTileFinder, findsNWidgets(4));
    });
  });

  group('add', () {
    testWidgets('Show result when gives two numbers', (widgetTester) async {
      await widgetTester.pumpWidget(const CalculatorApp());

      final topTextFieldFinder = find.byKey(const Key('textField_top_Addition'));
      final bottomTextFieldFinder = find.byKey(const Key('textField_bottom_Addition'));

      await widgetTester.enterText(topTextFieldFinder, '3');
      await widgetTester.enterText(bottomTextFieldFinder, '7');

      final textResultFinder = find.text('Result: 10.0');

      // await widgetTester.pump(); // Trigger a frame.

      // Repeat pump() until there are no longer any frames scheduled.
      await widgetTester.pumpAndSettle();

      expect(textResultFinder, findsOneWidget);
    });
  });

  group('Operation Widget', () {
    testWidgets('Render 10 when 3 and 7 added', (widgetTester) async {
      // OperationWidget testing only. But MaterialApp is required!
      await widgetTester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OperationWidget(
              operation: Operation.add,
              calculator: calculator,
            ),
          ),
        ),
      );

      final topTextFieldFinder = find.byKey(const Key('textField_top_Addition'));
      final bottomTextFieldFinder = find.byKey(const Key('textField_bottom_Addition'));

      await widgetTester.enterText(topTextFieldFinder, '3');
      await widgetTester.enterText(bottomTextFieldFinder, '7');

      final textResultFinder = find.text('Result: 10.0');

      await widgetTester.pumpAndSettle();

      expect(textResultFinder, findsOneWidget);
    });
  });
}
