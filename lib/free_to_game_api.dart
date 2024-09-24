import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> juegos() async {
  final response = await http.get(Uri.parse('https://www.freetogame.com/api/games'));

  if (response.statusCode == 200) {

    return json.decode(response.body);
    
  } else { 
    throw Exception('Failed to load data');
  }
}