import 'package:flutter_test/flutter_test.dart';

import 'package:unit_testing/calculator.dart';

void main() {
  test('The calculator return 5 when adding 1 and 4', () {
    final calculator = Calculator();
    expect(calculator.add(1, 4), 5);
  });
}
