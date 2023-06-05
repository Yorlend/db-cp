import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/user.dart';

class AuthService {
  final UserRepository _userRepository;

  User? _currentUser;

  AuthService(this._userRepository);

  Future<User?> login(String username, String password) async {
    try {
      final user = await _userRepository.findByAccountName(username);
      if (user.password == password) {
        _currentUser = user;
        return user;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  void logout() {
    _currentUser = null;
  }

  User get currentUser {
    if (_currentUser == null) {
      throw Exception('user is not logged in');
    } else {
      return _currentUser!;
    }
  }

  bool get isModerator {
    return currentUser.role == UserRole.moderator;
  }

  bool get isAdmin {
    return currentUser.role == UserRole.admin;
  }
}
