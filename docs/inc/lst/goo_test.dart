import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test/test.dart';

import 'package:kango/vendor/goo/goo.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  test('Goo API works', () async {
    const text = 'この商品はデザインが斬新だ';
    const expectedWordList = [
      WordDescription(word: "この", reading: "コノ"),
      WordDescription(word: "商品", reading: "ショウヒン"),
      WordDescription(word: "は", reading: "ハ"),
      WordDescription(word: "デザイン", reading: "デザイン"),
      WordDescription(word: "が", reading: "ガ"),
      WordDescription(word: "斬新", reading: "ザンシン"),
      WordDescription(word: "だ", reading: "ダ"),
    ];

    final actual = await Goo.splitText(text);

    expect(actual, expectedWordList);
  });
}
