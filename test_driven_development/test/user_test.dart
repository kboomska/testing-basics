import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven_development/entities/user.dart';

void main() {
  group('Default User test', () {
    User user = User();

    test('User has an id with type int', () {
      expect(user.id, isA<int>());
    });

    test('User has a name with type String', () {
      expect(user.name, isA<String>());
    });

    test('Default id = 0. Default name = "No name"', () {
      expect(user.id, equals(0));
      expect(user.name, equals('No name'));
    });
  });
}
