import 'package:flutter_test/flutter_test.dart';

import 'package:unit_testing/calculator.dart';

void main() {
  setUpAll(() => print('Runs BEFORE any test is executed'));

  setUp(() => print('Runs BEFORE EVERY any test is executed'));

  tearDown(() => print('Runs AFTER EVERY any test is executed'));

  tearDownAll(() => print('Runs AFTER any test is executed'));

  group('add', () {
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

    test('The calculator creates a non null object', () {
      // Assert (Result) -> compare the result against and expected value.
      // Убеждаемся, что модуль ведет себя так, как ожидалось.
      expect(Calculator(), isNotNull);
    });

    test('The calculator returns a double number when adding 1 and 4', () {
      // Arrange (Setup) -> create the calculator object.
      // Создается и настраивается тестируемый модуль.
      final calculator = Calculator();

      // Act (Action) -> collect the result you want to test.
      // Запускается модуль с некоторым состоянием.
      final result = calculator.add(1, 4);

      // Assert (Result) -> compare the result against and expected value.
      // Убеждаемся, что модуль ведет себя так, как ожидалось.
      expect(result, isA<double>());
    });
  });

  group('substract', () {
    test('The calculator return 5 when substracting 6 and 1', () {
      // Arrange (Setup) -> create the calculator object.
      // Создается и настраивается тестируемый модуль.
      final calculator = Calculator();

      // Act (Action) -> collect the result you want to test.
      // Запускается модуль с некоторым состоянием.
      final result = calculator.subtract(6, 1);

      // Assert (Result) -> compare the result against and expected value.
      // Убеждаемся, что модуль ведет себя так, как ожидалось.
      expect(result, 5, reason: 'It should be exactly 5');
    });
  });

  group('multiple', () {
    test('The calculator return 10 when multiplying 2 and 5', () {
      // Arrange (Setup) -> create the calculator object.
      // Создается и настраивается тестируемый модуль.
      final calculator = Calculator();

      // Act (Action) -> collect the result you want to test.
      // Запускается модуль с некоторым состоянием.
      final result = calculator.multiply(2, 5);

      // Assert (Result) -> compare the result against and expected value.
      // Убеждаемся, что модуль ведет себя так, как ожидалось.
      expect(result, 10, reason: 'It should be exactly 10');
    });
  });

  group('divide', () {
    test('The calculator return 5 when dividing 10 and 2', () {
      // Arrange (Setup) -> create the calculator object.
      // Создается и настраивается тестируемый модуль.
      final calculator = Calculator();

      // Act (Action) -> collect the result you want to test.
      // Запускается модуль с некоторым состоянием.
      final result = calculator.divide(10, 2);

      // Assert (Result) -> compare the result against and expected value.
      // Убеждаемся, что модуль ведет себя так, как ожидалось.
      expect(result, 5, reason: 'It should be exactly 5');
    });

    test('The calculator throws an ArgumentError when dividing by zero', () {
      // Arrange (Setup) -> create the calculator object.
      // Создается и настраивается тестируемый модуль.
      final calculator = Calculator();

      // Act (Action) -> collect the result you want to test.
      // Запускается модуль с некоторым состоянием.
      // final result = calculator.divide(10, 0);

      // Assert (Result) -> compare the result against and expected value.
      // Убеждаемся, что модуль ведет себя так, как ожидалось.
      // Для корректного сравнения будем передавать анонимную функцию.
      expect(() => calculator.divide(10, 0), throwsArgumentError);
    });
  });
}
