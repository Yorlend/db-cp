import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kango/data/entities/user.dart';
import 'package:kango/services/user.dart';

class EditUserWidget extends StatefulWidget {
  final User user;
  final void Function() onSubmit;
  final void Function() onDelete;

  const EditUserWidget({
    required this.user,
    required this.onSubmit,
    required this.onDelete,
    super.key,
  });

  @override
  State<EditUserWidget> createState() => EditUserWidgetState();
}

class EditUserWidgetState extends State<EditUserWidget> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  late UserRole _role;

  @override
  void initState() {
    super.initState();

    _loginController.text = widget.user.login;
    _passwordController.text = widget.user.password;
    _role = widget.user.role;
  }

  Future<void> _saveUser(BuildContext context) async {
    final user = User(
      login: _loginController.text,
      password: _passwordController.text,
      role: _role,
    );
    final userService = GetIt.I.get<UserService>();
    try {
      await userService.updateUser(widget.user.login, user);
      widget.onSubmit();
      Navigator.pop(context);
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(err.toString())),
      );
    }
  }

  void _confirmDeleteUser() {
    final userService = GetIt.I.get<UserService>();
    userService.deleteUser(widget.user.login).catchError(
          (err) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(err.toString())),
          ),
        );
  }

  Future<void> _deleteUser(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Удалить пользователя?'),
          content: Text(
              'Действительно удалить пользователя с логином "${widget.user.login}"?'),
          actions: [
            MaterialButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text('Отмена'),
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.error,
              textColor: Colors.white,
              onPressed: () {
                _confirmDeleteUser();
                widget.onDelete();
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text('Удалить'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _loginController,
              decoration: const InputDecoration(
                labelText: 'Логин',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите логин';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Пароль',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите пароль';
                }
                return null;
              },
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Роль:'),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    value: _role,
                    items: const [
                      DropdownMenuItem(
                        value: UserRole.user,
                        child: Text('Пользователь'),
                      ),
                      DropdownMenuItem(
                        value: UserRole.moderator,
                        child: Text('Модератор'),
                      ),
                      DropdownMenuItem(
                        value: UserRole.admin,
                        child: Text('Администратор'),
                      ),
                    ],
                    onChanged: (value) => setState(() => _role = value!),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () => _saveUser(context),
                    child: const Text('Сохранить'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Theme.of(context).colorScheme.error,
                    textColor: Colors.white,
                    onPressed: () => _deleteUser(context),
                    child: const Text('Удалить'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
