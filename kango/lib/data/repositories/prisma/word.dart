import 'package:kango/data/entities/word.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/word.dart';

class PrismaWordRepository extends WordRepository {
  final PrismaClient _prisma;

  PrismaWordRepository({required PrismaClient prisma}) : _prisma = prisma;

  @override
  Future<List<Word>> findAll() async {
    final result = await _prisma.wordsDAO.findMany();
    return result.map(toModel).toList();
  }

  @override
  Future<Word> findByWord(String word) async {
    final result = await _prisma.wordsDAO.findUnique(
      where: WordsDAOWhereUniqueInput(word: word),
    );
    return toModel(result!);
  }

  @override
  Future<void> insertWord(Word word) async {
    await _prisma.wordsDAO.upsert(
      where: WordsDAOWhereUniqueInput(word: word.word),
      create: WordsDAOCreateInput(
        word: word.word,
        translation: word.meaning,
        reading: word.reading,
      ),
      update: const WordsDAOUpdateInput(),
    );
  }

  @override
  Future<void> updateMeaning(Word word, String newMeaning) async {
    await _prisma.wordsDAO.upsert(
      where: WordsDAOWhereUniqueInput(word: word.word),
      create: WordsDAOCreateInput(
        word: word.word,
        reading: word.reading,
        translation: word.meaning,
      ),
      update: WordsDAOUpdateInput(
        translation: StringFieldUpdateOperationsInput(set: newMeaning),
      ),
    );
  }

  static Word toModel(WordsDAO word) {
    return Word(
      word: word.word,
      meaning: word.translation,
      reading: word.reading,
    );
  }
}
