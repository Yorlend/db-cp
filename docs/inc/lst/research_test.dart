import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/prisma/text.dart';
import 'package:kango/data/repositories/prisma/word.dart';

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
  final wordRepo = PrismaWordRepository(prisma: prisma);

  final textProvider = WrappedTextsProvider(textRepo, wordRepo);

  await prisma.textsDAO.deleteMany(
    where: const TextsDAOWhereInput(
      title: StringFilter(startsWith: '__research_text_'),
    ),
  );

  final resultList = <TimestampTuple>[];
  for (var i in [1, 2, 3, 4, 5]) {
    final imageFilename = 'lib/assets/research/img_$i.png';
    File file = await loadAssetFile(imageFilename);

    final result =
        await textProvider.uploadTextFromFile('__research_text_$i', file);

    resultList.add(result);
    print('done $i');
  }

  await prisma.textsDAO.deleteMany(
    where: const TextsDAOWhereInput(
      title: StringFilter(startsWith: '__research_text_'),
    ),
  );

  serializeTimeTuple(resultList);
}

void serializeTimeTuple(List<TimestampTuple> tuples) {
  final file = File('test/research/results.csv');
  final sink = file.openWrite();

  sink.writeln('start,ocrPerformed,textInserted,wordSplit,
    wordTranslated,end');

  for (final tuple in tuples) {
    sink.writeln(
        '${tuple.start.microsecondsSinceEpoch},${tuple
          .ocrPerformed.microsecondsSinceEpoch},${tuple
          .textInserted.microsecondsSinceEpoch},${tuple
          .wordSplit.microsecondsSinceEpoch},${tuple
          .end.microsecondsSinceEpoch}');
  }

  sink.close();
}
