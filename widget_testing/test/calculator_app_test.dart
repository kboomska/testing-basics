import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_testing/main.dart';
import 'package:widget_testing/operation_widget.dart';

void main() {
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

      await widgetTester.pump(); // Trigger a frame.

      expect(textResultFinder, findsOneWidget);
    });
  });
}
