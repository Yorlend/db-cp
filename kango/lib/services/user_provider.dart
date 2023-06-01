import 'package:flutter/material.dart';

import 'package:kango/data/entities/user.dart';

class UserProvider extends ChangeNotifier {
  User? _currentUser;

  User? get currentUser => _currentUser;

  set currentUser(User? user) {
    _currentUser = user;
    notifyListeners();
  }
}
