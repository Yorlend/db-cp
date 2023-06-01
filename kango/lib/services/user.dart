import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/user.dart';

class UserService {
  final UserRepository _userRepository;

  const UserService(this._userRepository);

  Future<User> register(
    String accountName,
    String password,
    UserRole role,
  ) async {
    return _userRepository.register(
      User(
        login: accountName,
        password: password,
        role: role,
      ),
    );
  }

  Future<List<User>> getUsers() async {
    return _userRepository.findAll();
  }
}
