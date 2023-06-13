import 'dart:io';

import 'package:kango/data/entities/text.dart';
import 'package:kango/data/entities/word.dart';
import 'package:kango/data/repositories/text.dart';
import 'package:kango/data/repositories/word.dart';
import 'package:kango/vendor/goo/goo.dart';
import 'package:kango/vendor/ocr/ocr_space.dart';

class OCRTimestampTuple {
  final DateTime start;
  final DateTime ocrPerformed;
  final DateTime textInserted;
  final DateTime wordSplit;
  final List<DateTime> wordTranslated;
  final DateTime end;

  OCRTimestampTuple({
    required this.start,
    required this.ocrPerformed,
    required this.textInserted,
    required this.wordSplit,
    required this.wordTranslated,
    required this.end,
  });
}

class WrappedTextsProvider {
  final TextRepository _textRepository;
  final WordRepository _wordRepository;

  WrappedTextsProvider(this._textRepository, this._wordRepository);

  Future<OCRTimestampTuple> uploadTextFromFile(String title, File file) async {
    final startTime = DateTime.timestamp();

    final ocrResult = await OCRSpace().analyzeImage(file);
    final content = ocrResult.parsedText;

    final ocrPerformedTime = DateTime.timestamp();

    final text = Text(title: title, content: content);
    await _textRepository.insertText(text);

    final textInsertedTime = DateTime.timestamp();

    final wordDescrs = await Goo.splitText(content);

    final textSplitTime = DateTime.timestamp();

    final wordTranslatedTimes = <DateTime>[];

    for (final wordDescr in wordDescrs) {
      final meanings = [];

      final word = Word(
        word: wordDescr.word,
        reading: wordDescr.reading,
        meaning: meanings.join('\n'),
      );

      await _wordRepository.insertWord(word);
      wordTranslatedTimes.add(DateTime.timestamp());
    }

    final endTime = DateTime.timestamp();

    return OCRTimestampTuple(
      start: startTime,
      ocrPerformed: ocrPerformedTime,
      textInserted: textInsertedTime,
      wordSplit: textSplitTime,
      wordTranslated: wordTranslatedTimes,
      end: endTime,
    );
  }
}
