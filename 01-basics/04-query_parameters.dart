import 'dart:convert';
import 'package:http/http.dart' as http;

class QueryService {
  static Future<List<dynamic>> fetchUsers({int page = 1}) async {
    final url = Uri.https(
      'reqres.in',
      '/api/users',
      {
        'page': page.toString(),
      },
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['data'];
    } else {
      throw Exception('Failed to load users');
    }
  }
}
