enum UserRole {
  admin('ADMIN', 'Администратор'),
  moderator('MODERATOR', 'Модератор'),
  user('USER', 'Пользователь');

  const UserRole(this.name, this.localizedName);
  final String name;
  final String localizedName;
}

class User {
  final String login;
  final String password;
  final UserRole role;

  User({
    required this.login,
    required this.password,
    required this.role,
  });
}
