import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kango/vendor/jisho/jisho.dart';
import 'package:test/test.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  test('Jisho API works', () async {
    const word = "商品";
    const expectedDefinitions = [
      "commodity",
      "article of commerce",
      "goods",
      "stock",
      "merchandise"
    ];

    final actualDefinitions = await Jisho.getWordDefinitions(word);
    expect(actualDefinitions, expectedDefinitions);
  });
}
