import 'package:kango/data/entities/user.dart';
import 'package:kango/data/prisma/prisma_client.dart';

class UserRepository {
  final PrismaClient prisma;

  UserRepository({required this.prisma});

  Future<User> register(User u) async {
    final result = await prisma.usersDAO.create(
      data: UsersDAOCreateInput(
        accountName: u.login,
        password: u.password,
        role: _roleFromString(u.role.name),
      ),
    );

    return _toModel(result);
  }

  Future<User> findByAccountName(String accountName) async {
    final result = await prisma.usersDAO.findUnique(
      where: UsersDAOWhereUniqueInput(
        accountName: accountName,
      ),
    );
    if (result == null) {
      throw Exception('User not found');
    }
    return _toModel(result);
  }

  Future<List<User>> findAll() async {
    final result = await prisma.usersDAO.findMany();
    return result.map(_toModel).toList();
  }

  Role _roleFromString(String role) {
    switch (role) {
      case 'ADMIN':
        return Role.admin;
      case 'MODERATOR':
        return Role.moderator;
      case 'USER':
        return Role.user;
      default:
        throw Exception('invalid role value: $role');
    }
  }

  UserRole _userRoleFromString(String role) {
    switch (role) {
      case 'ADMIN':
        return UserRole.admin;
      case 'MODERATOR':
        return UserRole.moderator;
      case 'USER':
        return UserRole.user;
      default:
        throw Exception('invalid role value: $role');
    }
  }

  User _toModel(UsersDAO u) {
    return User(
      login: u.accountName,
      password: u.password,
      role: _userRoleFromString(u.role.originalName!),
    );
  }
}
