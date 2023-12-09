class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) throw ArgumentError('Cannot divide by zero!');
    return a / b;
  }

  Future<double> powerOfTwo(double a) {
    return Future.delayed(const Duration(seconds: 1), () => a * a);
  }
}
