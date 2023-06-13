import 'package:kango/data/entities/user.dart';
import 'package:kango/data/entities/word.dart';

abstract class DictionaryRepository {
  Future<List<Word>> findAllWordsForUser(User user);
  Future<bool> hasWordInUserDictionary(Word word, User user);
  Future<void> addWordToDictionaryForUser(Word word, User user);
  Future<void> removeWordFromDictionaryForUser(Word word, User user);
}
