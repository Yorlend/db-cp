import 'package:kango/data/entities/user.dart';

class AuthService {
  static final _baseUser =
      User(login: '12345', password: '123456', role: 'user');

  static final _modUser =
      User(login: 'moderator', password: 'moderator', role: 'mod');

  static final _adminUser =
      User(login: 'admin', password: 'admin123', role: 'admin');

  static Future<User?> login(String username, String password) async {
    if (username == _baseUser.login && password == _baseUser.password) {
      return _baseUser;
    } else if (username == _modUser.login && password == _modUser.password) {
      return _modUser;
    } else if (username == _adminUser.login &&
        password == _adminUser.password) {
      return _adminUser;
    } else {
      return null;
    }
  }
}
