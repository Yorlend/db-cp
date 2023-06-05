import 'package:kango/data/entities/word.dart';
import 'package:kango/data/prisma/prisma_client.dart';

class WordRepository {
  final PrismaClient _prisma;

  WordRepository({required PrismaClient prisma}) : _prisma = prisma;

  Future<List<Word>> findAll() async {
    final result = await _prisma.wordsDAO.findMany();
    return result.map(_toModel).toList(); 
  }

  Future<Word> findByWord(String word) async {
    final result = await _prisma.wordsDAO.findUnique(
      where: WordsDAOWhereUniqueInput(
        word: word,
      ),
    );
    if (result == null) {
      throw Exception('Word not found');
    }
    return _toModel(result);
  }

  Future<void> insertWord(Word word) async {
    await _prisma.wordsDAO.create(
      data: WordsDAOCreateInput(
        word: word.word,
        translation: word.meaning,
        reading: word.reading,
      ),
    );
  }

  Word _toModel(WordsDAO word) {
    return Word(
      word: word.word,
      meaning: word.translation,
      reading: word.reading,
    );
  }
}