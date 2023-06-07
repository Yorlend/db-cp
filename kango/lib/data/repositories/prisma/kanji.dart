import 'package:kango/data/entities/kanji.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';

class KanjiRepository {
  final PrismaClient _prisma;

  KanjiRepository({required PrismaClient prisma}) : _prisma = prisma;

  Future<List<Kanji>> findAll() async {
    final result = await _prisma.kanjiDAO.findMany();
    return result.map(_toModel).toList();
  }

  Future<Kanji> findByGlyph(String glyph) async {
    final result = await _prisma.kanjiDAO.findUnique(
      where: KanjiDAOWhereUniqueInput(
        glyph: glyph,
      ),
    );
    if (result == null) {
      throw Exception('Kanji not found');
    }
    return _toModel(result);
  }

  Future<void> insertGlyph(Kanji kanji) async {
    await _prisma.kanjiDAO.create(
      data: KanjiDAOCreateInput(
        glyph: kanji.glyph,
        meaning: kanji.meaning,
        onyoumi: kanji.on,
        kunyoumi: kanji.kun,
      ),
    );
  }

  Kanji _toModel(KanjiDAO kanji) {
    return Kanji(
      glyph: kanji.glyph,
      meaning: kanji.meaning,
      on: kanji.onyoumi,
      kun: kanji.kunyoumi,
    );
  }
}
