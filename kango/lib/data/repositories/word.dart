import 'package:kango/data/entities/user.dart';
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

  Future<bool> hasWordInUserDictionary(Word word, User user) async {
    final userId = await _prisma.usersDAO
        .findUnique(
          where: UsersDAOWhereUniqueInput(
            accountName: user.login,
          ),
        )
        .then((u) => u!.id);

    final result = await _prisma.wordsDAO.findMany(
      where: WordsDAOWhereInput(
        word: StringFilter(equals: word.word),
        dicts: DictionariesDAOListRelationFilter(
          some: DictionariesDAOWhereInput(
            ownerId: StringFilter(equals: userId),
          ),
        ),
      ),
    );

    return result.isNotEmpty;
  }

  Future<void> addWordToDictionaryForUser(Word word, User user) async {
    final dbUser = await _prisma.usersDAO.findUnique(
      where: UsersDAOWhereUniqueInput(accountName: user.login),
    );

    final connectOrCreate = [
      WordsDAOCreateOrConnectWithoutDictsInput(
        where: WordsDAOWhereUniqueInput(word: word.word),
        create: WordsDAOCreateWithoutDictsInput(
          word: word.word,
          reading: word.reading,
          translation: word.meaning,
        ),
      ),
    ];

    await _prisma.dictionariesDAO.upsert(
      where: DictionariesDAOWhereUniqueInput(ownerId: dbUser!.id),
      create: DictionariesDAOCreateInput(
        title: '${user.login}\'s dictionary',
        owner: UsersDAOCreateNestedOneWithoutDictionaryInput(
          connect: UsersDAOWhereUniqueInput(accountName: user.login),
        ),
        words: WordsDAOCreateNestedManyWithoutDictsInput(
          connectOrCreate: connectOrCreate,
        ),
      ),
      update: DictionariesDAOUpdateInput(
        words: WordsDAOUpdateManyWithoutDictsNestedInput(
          connectOrCreate: connectOrCreate,
        ),
      ),
    );
  }

  Future<void> removeWordFromDictionaryForUser(Word word, User user) async {
    final userId = await _prisma.usersDAO
        .findUnique(
          where: UsersDAOWhereUniqueInput(
            accountName: user.login,
          ),
        )
        .then((u) => u!.id);
    await _prisma.wordsDAO.update(
      where: WordsDAOWhereUniqueInput(word: word.word),
      data: WordsDAOUpdateInput(
        dicts: DictionariesDAOUpdateManyWithoutWordsNestedInput(
          disconnect: [
            DictionariesDAOWhereUniqueInput(ownerId: userId),
          ],
        ),
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
