import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/user.dart';

class PrismaUserRepository extends UserRepository {
  final PrismaClient _prisma;

  PrismaUserRepository({required PrismaClient prisma}) : _prisma = prisma;

  @override
  Future<User> register(User u) async {
    final result = await _prisma.usersDAO.create(
      data: UsersDAOCreateInput(
        accountName: u.login,
        password: u.password,
        role: _roleFromString(u.role.name),
      ),
    );

    return toModel(result);
  }

  @override
  Future<User> findByAccountName(String accountName) async {
    final result = await _prisma.usersDAO.findUnique(
      where: UsersDAOWhereUniqueInput(
        accountName: accountName,
      ),
    );
    if (result == null) {
      throw Exception('User not found');
    }
    return toModel(result);
  }

  @override
  Future<List<User>> findAll() async {
    final result = await _prisma.usersDAO.findMany();
    return result.map(toModel).toList();
  }

  @override
  Future<List<User>> findRegularUsers() async {
    final result = await _prisma.usersDAO.findMany(
      where: const UsersDAOWhereInput(
        role: EnumRoleFilter(equals: Role.user),
      ),
    );
    return result.map(toModel).toList();
  }

  @override
  Future<void> updateUser(String oldLogin, User newUser) async {
    await _prisma.usersDAO.update(
      where: UsersDAOWhereUniqueInput(accountName: oldLogin),
      data: UsersDAOUpdateInput(
        accountName: StringFieldUpdateOperationsInput(
          set: newUser.login,
        ),
        password: StringFieldUpdateOperationsInput(
          set: newUser.password,
        ),
        role: _roleFromUserRole(newUser.role),
      ),
    );
  }

  @override
  Future<void> deleteUser(String login) async {
    await _prisma.dictionariesDAO.deleteMany(
      where: DictionariesDAOWhereInput(
        owner: UsersDAORelationFilter(
          $is: UsersDAOWhereInput(accountName: StringFilter(equals: login)),
        ),
      ),
    );
    await _prisma.usersDAO.delete(
      where: UsersDAOWhereUniqueInput(accountName: login),
    );
  }

  static Role _roleFromString(String role) {
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

  static Role _roleFromUserRole(UserRole role) {
    switch (role) {
      case UserRole.admin:
        return Role.admin;
      case UserRole.moderator:
        return Role.moderator;
      case UserRole.user:
        return Role.user;
      default:
        throw Exception('invalid role value: $role');
    }
  }

  static UserRole _userRoleFromString(String role) {
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

  static User toModel(UsersDAO u) {
    return User(
      login: u.accountName,
      password: u.password,
      role: _userRoleFromString(u.role.originalName!),
    );
  }
}
