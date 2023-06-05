import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WordDescription {
  final String word;
  final String reading;

  const WordDescription({
    required this.word,
    required this.reading,
  });

  @override
  String toString() {
    return 'WordDescription{word: $word, reading: $reading}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordDescription &&
          runtimeType == other.runtimeType &&
          word == other.word &&
          reading == other.reading;

  @override
  int get hashCode => word.hashCode ^ reading.hashCode;
}

class Goo {
  static final String? _apiUrl = dotenv.env['GOO_URL'];
  static final String? _appId = dotenv.env['GOO_API_KEY'];

  static Future<List<WordDescription>> splitText(String text) async {
    if (_apiUrl == null) {
      throw Exception('GOO_URL is not set');
    }
    if (_appId == null) {
      throw Exception('GOO_API_KEY is not set');
    }

    final response = await http.post(Uri.parse(_apiUrl!), body: {
      'app_id': _appId,
      'sentence': text,
    });

    final jsonResponse = jsonDecode(response.body);
    final result = <WordDescription>[];

    for (final sentence in jsonResponse['word_list']) {
      for (final w in sentence) {
        result.add(WordDescription(word: w[0], reading: w[2]));
      }
    }

    return result;
  }
}
