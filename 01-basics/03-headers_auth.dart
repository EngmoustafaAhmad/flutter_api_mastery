import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static Future<Map<String, dynamic>> getProfile() async {
    final url = Uri.parse('https://api.example.com/profile');

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer YOUR_TOKEN_HERE',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Unauthorized');
    }
  }
}
