import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/main.dart';

void main() {
  group('CalculatorApp', () {
    testWidgets('Render 4 widgets of Type ListTile', (widgetTester) async {
      // Create the widget - CalculatorApp()
      await widgetTester.pumpWidget(const CalculatorApp());

      // Create the Finders
      final listTileFinder = find.byType(ListTile);

      // Comparing finder with matcher
      expect(listTileFinder, findsNWidgets(4));
    });
  });
}
