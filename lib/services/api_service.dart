import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final http.Client client;

  ApiService({required this.client});

  Future<List<Map<String, dynamic>>> fetchData() async {
    final response = await client.get(Uri.parse('https://api.restful-api.dev/objects'));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return List<Map<String, dynamic>>.from(jsonResponse);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
