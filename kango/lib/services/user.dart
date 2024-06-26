import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/user.dart';
import 'package:kango/services/auth.dart';

class UserService {
  final UserRepository _userRepository;
  final IAuthService _authService;

  const UserService(this._authService, this._userRepository);

  Future<User> register(
    String login,
    String password,
    UserRole role,
  ) async {
    if (!_authService.isAdmin) {
      throw 'Пользователь не администратор';
    } else {
      return _userRepository.register(
        User(
          login: login,
          password: password,
          role: role,
        ),
      );
    }
  }

  Future<List<User>> getUsers() async {
    if (!_authService.isAdmin) {
      throw 'Пользователь не администратор';
    } else {
      return _userRepository.findAll();
    }
  }

  Future<List<User>> getRegularUsers() async {
    if (!_authService.isModerator) {
      throw 'Пользователь не модератор';
    } else {
      return _userRepository.findRegularUsers();
    }
  }

  Future<void> updateUser(String oldLogin, User newUser) async {
    if (!_authService.isAdmin) {
      throw 'Пользователь не администратор';
    } else {
      await _userRepository.updateUser(oldLogin, newUser);
    }
  }

  Future<void> deleteUser(String login) async {
    if (!_authService.isAdmin) {
      throw 'Пользователь не администратор';
    } else {
      await _userRepository.deleteUser(login);
    }
  }
}
