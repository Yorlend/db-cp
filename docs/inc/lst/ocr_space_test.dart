import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kango/vendor/ocr/ocr_space.dart';
import 'package:test/test.dart';

Future<File> loadAssetFile(String path) async {
  final data = await rootBundle.load(path);
  final buffer = data.buffer;
  return File('/tmp/flutter_ocr/$path')
    ..createSync(recursive: true)
    ..writeAsBytesSync(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
}

void main() async {
  await dotenv.load(fileName: '.env');

  test('OCR API works', () async {
    File file = await loadAssetFile('lib/assets/test/img.png');

    final result = await OCRSpace().analyzeImage(file);

    const expected =
        "浅草の仁王門の中に吊った、火のともらない大提灯。提灯は次第に上へあ\r\nがり、雑沓した仲店を見渡すようになる。たたし大提灯の下部たけは消え失\r\nせない。門の前に飛びかう無数の鳩。\r\n";

    expect(result.ok, true);
    expect(result.parsedText, expected);
    expect(result.error, "");
  });
}
