import 'package:kango/data/entities/word.dart';
import 'package:kango/data/repositories/dict.dart';
import 'package:kango/services/auth.dart';

class DictService {
  final IAuthService _authService;
  final DictionaryRepository _dictRepository;

  DictService(this._authService, this._dictRepository);

  Future<List<Word>> getAllWords() async {
    final user = _authService.currentUser;
    return await _dictRepository.findAllWordsForUser(user);
  }

  Future<bool> hasWordInDictionary(Word word) async {
    final user = _authService.currentUser;
    return await _dictRepository.hasWordInUserDictionary(word, user);
  }

  Future<void> addWordToDictionary(Word word) async {
    final user = _authService.currentUser;
    await _dictRepository.addWordToDictionaryForUser(word, user);
  }

  Future<void> removeWordFromDictionary(Word word) async {
    final user = _authService.currentUser;
    await _dictRepository.removeWordFromDictionaryForUser(word, user);
  }
}
