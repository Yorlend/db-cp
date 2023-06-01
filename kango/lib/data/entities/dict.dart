import 'package:flutter/material.dart';
import 'package:kango/data/entities/word.dart';

class Dictionary extends ChangeNotifier {
  final List<Word> words = [];

  void addWord(Word word) {
    words.add(word);
    notifyListeners();
  }

  void removeWord(Word word) {
    words.remove(word);
    notifyListeners();
  }
}
