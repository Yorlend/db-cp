enum UserRole {
  admin('ADMIN'),
  moderator('MODERATOR'),
  user('USER');

  const UserRole(this.name);
  final String name;
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
