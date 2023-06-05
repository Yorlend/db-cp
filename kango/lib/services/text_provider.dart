import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/text.dart';
import 'package:kango/services/auth.dart';

class TextsProvider extends ChangeNotifier {
  final TextRepository _textRepository;
  final AuthService _authService;

  List<entity.Text> _texts = [];

  TextsProvider(this._authService, this._textRepository) {
    _reloadTexts();
  }

  List<entity.Text> get texts {
    _reloadTexts();
    return _texts;
  }

  Future<void> uploadText(String title, String content) async {
    if (!_authService.isModerator) {
      throw 'Пользователь не модератор';
    } else {
      final text = entity.Text(title: title, content: content);
      await _textRepository.insertText(text);
      await _reloadTexts();
    }
  }

  Future<void> deleteText(String id) async {
    if (!_authService.isModerator) {
      throw 'Пользователь не модератор';
    } else {
      await _textRepository.deleteById(id);
      await _reloadTexts();
    }
  }

  Future<void> updateText(String id, String newTitle, String newContent) async {
    if (!_authService.isModerator) {
      throw 'Пользователь не модератор';
    } else {
      await _textRepository.updateText(id, newTitle, newContent);
      await _reloadTexts();
    }
  }

  Future<List<User>> getAccecients(String textId) async {
    if (!_authService.isModerator) {
      throw 'Пользователь не модератор';
    } else {
      return await _textRepository.findAccecients(textId);
    }
  }

  Future<void> updateAccecients(String textId, List<User> newReaders) async {
    if (!_authService.isModerator) {
      throw 'Пользователь не модератор';
    } else {
      await _textRepository.updateAccecients(textId, newReaders);
    }
  }

  Future<void> _reloadTexts() async {
    if (_authService.isModerator) {
      _texts = await _textRepository.findAll();
    } else {
      // regular user
      _texts = await _textRepository
          .findAccessibleByUser(_authService.currentUser.login);
    }
    notifyListeners();
  }
}
