import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  final String login;
  final String password;
  final String role;

  User({
    required this.login,
    required this.password,
    required this.role,
  });
}
