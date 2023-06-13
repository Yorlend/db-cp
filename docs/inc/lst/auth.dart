import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/user.dart';

abstract class IAuthService {
  Future<User?> login(String username, String password);
  void logout();

  User get currentUser;

  bool get isModerator;
  bool get isAdmin;
}

class AuthService extends IAuthService {
  final UserRepository _userRepository;

  User? _currentUser;

  AuthService(this._userRepository);

  @override
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

  @override
  void logout() {
    _currentUser = null;
  }

  @override
  User get currentUser {
    if (_currentUser == null) {
      throw Exception('user is not logged in');
    } else {
      return _currentUser!;
    }
  }

  @override
  bool get isModerator {
    return currentUser.role == UserRole.moderator;
  }

  @override
  bool get isAdmin {
    return currentUser.role == UserRole.admin;
  }
}
