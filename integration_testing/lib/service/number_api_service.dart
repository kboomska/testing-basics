import 'package:http/http.dart' as http;

import 'package:integration_testing/models/number.dart';

class NumberApiService {
  final http.Client client;

  NumberApiService({required this.client});

  Future<Number> getNumberFact(int number) async {
    final response = await client.get(
      Uri.parse('http://numbersapi.com/$number'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return Number.fromJson(response.body);
    } else {
      throw Exception('Failed to loas number');
    }
  }
}
