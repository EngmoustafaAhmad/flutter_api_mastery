import 'dart:convert';
import 'package:http/http.dart' as http;
import '../token_storage/token_storage.dart';

class RefreshTokenApi {
  final TokenStorage tokenStorage;

  RefreshTokenApi(this.tokenStorage);

  Future<String> refreshAccessToken() async {
    final refreshToken = await tokenStorage.getRefreshToken();

    final response = await http.post(
      Uri.parse('https://api.example.com/refresh'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'refresh_token': refreshToken,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await tokenStorage.saveTokens(
        accessToken: data['access_token'],
        refreshToken: data['refresh_token'],
      );
      return data['access_token'];
    } else {
      throw Exception('Token refresh failed');
    }
  }
}
