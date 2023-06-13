import 'package:kango/data/entities/word.dart';

abstract class WordRepository {
  Future<List<Word>> findAll();
  Future<Word> findByWord(String word);
  Future<void> insertWord(Word word);
  Future<void> updateMeaning(Word word, String newMeaning);
}
