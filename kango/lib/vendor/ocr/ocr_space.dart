import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OCRSpace {
  static final String? _apiUrl = dotenv.env['OCR_API_URL'];
  static final String? _apiKey = dotenv.env['OCR_API_KEY'];

  Future<OCRAnalysisResult> analyzeImage(File imageFile) async {
    final bytes = base64Encode(await imageFile.readAsBytes());
    final format = imageFile.path.split('.').last;

    final apiResult = await http.post(
      Uri.parse(_apiUrl!),
      headers: {
        'apikey': _apiKey!,
      },
      body: {
        'language': 'jpn',
        'base64Image': 'data:image/$format;base64,$bytes',
      },
    );

    final apiResultJson = jsonDecode(apiResult.body);
    bool exitCodeOk = !apiResultJson['IsErroredOnProcessing'];
    String parsedText = apiResultJson['ParsedResults'][0]['ParsedText'];
    String errorMessage = apiResultJson['ParsedResults'][0]['ErrorMessage'];

    // remove \r\n
    parsedText = parsedText.replaceAll('\r\n', '');

    return OCRAnalysisResult(
      ok: exitCodeOk,
      parsedText: parsedText,
      error: errorMessage,
    );
  }
}

class OCRAnalysisResult {
  final bool ok;
  final String parsedText;
  final String error;

  const OCRAnalysisResult({
    required this.ok,
    required this.parsedText,
    required this.error,
  });
}
