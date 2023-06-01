import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/user.dart';

class AuthService {
  final UserRepository _userRepository;

  AuthService(this._userRepository);

  Future<User?> login(String username, String password) async {
    try {
      final user = await _userRepository.findByAccountName(username);
      if (user.password == password) {
        return user;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
