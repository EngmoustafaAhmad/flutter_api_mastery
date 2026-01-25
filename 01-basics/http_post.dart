import 'dart:convert';
import 'package:http/http.dart' as http;

class PostService {
  static Future<Map<String, dynamic>> createPost() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'title': 'Flutter API',
        'body': 'Learning HTTP POST',
        'userId': 1,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to create post');
    }
  }
}
