import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String mainUrl = 'http://localhost:3001';

  String get baseUrl => '$mainUrl/api/app';

  Future<void> login(String email, String password) async {
    final String loginUrl = '$baseUrl/login';

    try {
      final response = await http.post(
        Uri.parse(loginUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        print('Login successful');
      } else {
        print('Failed to login: ${response.body}');
        throw Exception('Failed to login');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> signUp(String username, String email, String password) async {
    final String signUpUrl = '$baseUrl/sign_up';

    try {
      final response = await http.post(
        Uri.parse(signUpUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        print('Sign-up successful');
      } else {
        print('Failed to sign up: ${response.body}');
        throw Exception('Failed to sign up');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
