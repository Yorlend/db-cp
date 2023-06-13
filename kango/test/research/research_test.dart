import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kango/data/entities/text.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/prisma/text.dart';
// import 'package:kango/data/repositories/prisma/word.dart';
import 'package:kango/data/repositories/text.dart';

import '../vendor/ocr/ocr_space_test.dart';
import 'wrappers/service/text_provider.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  final prisma = PrismaClient(
    datasources: Datasources(
      db: dotenv.env['DATABASE_URL'],
    ),
  );

  // 1 инициализация репозиториев
  final textRepo = PrismaTextRepository(prisma: prisma);
  // final wordRepo = PrismaWordRepository(prisma: prisma);

  // final textProvider = WrappedTextsProvider(textRepo, wordRepo);

  await prisma.textsDAO.deleteMany(
    where: const TextsDAOWhereInput(
      title: StringFilter(startsWith: '__research_text_'),
    ),
  );

  // await makeOCRResearch(textProvider);
  await makeScaleResearch(textRepo);

  await prisma.textsDAO.deleteMany(
    where: const TextsDAOWhereInput(
      title: StringFilter(startsWith: '__research_text_'),
    ),
  );
}

class ScaleTimeTuple {
  final int time;
  final int count;

  ScaleTimeTuple({
    required this.time,
    required this.count,
  });
}

Future<void> makeScaleResearch(TextRepository textRepo) async {
  final File dataFile =
      await loadAssetFile('lib/assets/research/sentences.txt');

  final sentences = dataFile.readAsLinesSync();

  final results = <ScaleTimeTuple>[];

  for (var n = 100; n <= 2000; n += 100) {
    final content = sentences.sublist(0, n).join('');

    final startTime = DateTime.timestamp().microsecondsSinceEpoch;

    await textRepo.insertText(Text(
      title: '__research_text_$n',
      content: content,
    ));

    final endTime = DateTime.timestamp().microsecondsSinceEpoch;

    results.add(ScaleTimeTuple(
      time: endTime - startTime,
      count: n,
    ));
  }

  serializeScaleTimeTuple(results);
}

Future<void> makeOCRResearch(WrappedTextsProvider textProvider) async {
  final resultList = <OCRTimestampTuple>[];
  for (var i in [1, 2, 3, 4, 5]) {
    final imageFilename = 'lib/assets/research/img_$i.png';
    File file = await loadAssetFile(imageFilename);

    final result =
        await textProvider.uploadTextFromFile('__research_text_OCR_$i', file);

    resultList.add(result);
    print('done $i');
  }
  serializeOCRTimeTuple(resultList);
}

void serializeOCRTimeTuple(List<OCRTimestampTuple> tuples) {
  final file = File('test/research/results.csv');
  final sink = file.openWrite();

  sink.writeln('start,ocrPerformed,textInserted,wordSplit,wordTranslated,end');

  for (final tuple in tuples) {
    sink.writeln(
        '${tuple.start.microsecondsSinceEpoch},${tuple.ocrPerformed.microsecondsSinceEpoch},${tuple.textInserted.microsecondsSinceEpoch},${tuple.wordSplit.microsecondsSinceEpoch},${tuple.end.microsecondsSinceEpoch}');
  }

  sink.close();
}

void serializeScaleTimeTuple(List<ScaleTimeTuple> tuples) {
  final file = File('test/research/results_scale.csv');
  final sink = file.openWrite();

  sink.writeln('n,time');

  for (final tuple in tuples) {
    sink.writeln('${tuple.count},${tuple.time}');
  }

  sink.close();
}
