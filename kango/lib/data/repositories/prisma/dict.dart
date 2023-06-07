import 'package:kango/data/entities/user.dart';
import 'package:kango/data/entities/word.dart';
import 'package:kango/data/repositories/dict.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/prisma/word.dart';

class PrismaDictionaryRepository extends DictionaryRepository {
  final PrismaClient _prisma;

  PrismaDictionaryRepository({required PrismaClient prisma}) : _prisma = prisma;

  @override
  Future<List<Word>> findAllWordsForUser(User user) async {
    final result = await _prisma.wordsDAO.findMany(
      where: WordsDAOWhereInput(
        dicts: DictionariesDAOListRelationFilter(
          some: DictionariesDAOWhereInput(
            owner: UsersDAORelationFilter(
              $is: UsersDAOWhereInput(
                accountName: StringFilter(equals: user.login),
              ),
            ),
          ),
        ),
      ),
    );

    return result.map(PrismaWordRepository.toModel).toList();
  }

  @override
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

  @override
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

  @override
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
}
