import 'package:flutter_test/flutter_test.dart';

import 'package:unit_testing/calculator.dart';

void main() {
  test('The calculator return 5 when adding 1 and 4', () {
    // Arrange (Setup) -> create the calculator object.
    // Создается и настраивается тестируемый модуль.
    final calculator = Calculator();

    // Act (Action) -> collect the result you want to test.
    // Запускается модуль с некоторым состоянием.
    final result = calculator.add(1, 4);

    // Assert (Result) -> compare the result against and expected value.
    // Убеждаемся, что модуль ведет себя так, как ожидалось.
    expect(result, 5, reason: 'It should be exactly 5');
  });
}
