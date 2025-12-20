import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchUsers() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/users'),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data);
  } else {
    throw Exception("Failed to load data");
  }
}
