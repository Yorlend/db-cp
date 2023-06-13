import 'package:kango/data/entities/user.dart';

abstract class UserRepository {
  Future<User> register(User u);
  Future<User> findByAccountName(String accountName);
  Future<List<User>> findAll();
  Future<List<User>> findRegularUsers();
  Future<void> updateUser(String oldLogin, User newUser);
  Future<void> deleteUser(String login);
}
