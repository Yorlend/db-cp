import 'package:kango/data/entities/word.dart';
import 'package:kango/data/repositories/word.dart';
import 'package:kango/services/auth.dart';
import 'package:kango/vendor/jisho/jisho.dart';

class WordService {
  final Map<String, List<String>> _wordDefinitionCache = {};

  final AuthService _authService;
  final WordRepository _wordRepository;

  WordService(this._authService, this._wordRepository);

  Future<List<Word>> getAllWords() async {
    final user = _authService.currentUser;
    return await _wordRepository.findAllWordsForUser(user);
  }

  Future<List<String>> getWordDefinitions(String word) async {
    if (_wordDefinitionCache.containsKey(word)) {
      return _wordDefinitionCache[word]!;
    } else {
      final definitions = await Jisho.getWordDefinitions(word);
      _wordDefinitionCache[word] = definitions;
      return definitions;
    }
  }

  Future<bool> hasWordInDictionary(Word word) async {
    final user = _authService.currentUser;
    return await _wordRepository.hasWordInUserDictionary(word, user);
  }

  Future<void> addWordToDictionary(Word word) async {
    final user = _authService.currentUser;
    await _wordRepository.addWordToDictionaryForUser(word, user);
  }

  Future<void> removeWordFromDictionary(Word word) async {
    final user = _authService.currentUser;
    await _wordRepository.removeWordFromDictionaryForUser(word, user);
  }
}
