import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Jisho {
  static final String? _apiUrl = dotenv.env['JISHO_API_URL'];

  static Future<List<String>> getWordDefinitions(String word) async {
    if (_apiUrl == null) {
      throw Exception('JISHO_API_URL is not set');
    }

    final uri = Uri.parse('${_apiUrl!}?keyword=$word');
    final response = await http.get(uri);

    final jsonResponse = jsonDecode(response.body);
    final result = <String>[];

    for (var w in jsonResponse['data'][0]['senses'][0]['english_definitions']) {
      result.add(w);
    }

    return result;
  }
}
