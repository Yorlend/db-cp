import 'package:kango/data/entities/word.dart';
import 'package:kango/data/repositories/word.dart';

class WordService {
  final WordRepository _wordRepository;

  WordService(this._wordRepository);

  Future<List<String>> getWordDefinitions(Word word) async {
    word = await _wordRepository.findByWord(word.word);
    return word.meaning.split('\n');
  }
}
