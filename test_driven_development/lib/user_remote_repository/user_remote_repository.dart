import 'package:dio/dio.dart';
import 'package:test_driven_development/entities/user.dart';

class UserRemoteRepository {
  late Dio dio;

  UserRemoteRepository({Dio? dio}) {
    this.dio = dio ?? Dio();
  }

  Future<User?> getUser(int id) async {
    try {
      final response = await dio.get('https://reqres.in/api/users/2');
      if (response.statusCode == 200) {
        return User(
          id: response.data['data']['id'],
          name: response.data['data']['first_name'] +
              ' ' +
              response.data['data']['last_name'],
        );
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
