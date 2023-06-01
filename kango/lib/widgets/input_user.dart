import 'package:flutter/material.dart';
import 'package:kango/data/entities/user.dart';

class InputUserWidget extends StatefulWidget {
  final Function(String, String, UserRole) onSubmit;

  const InputUserWidget(this.onSubmit, {super.key});

  @override
  State<InputUserWidget> createState() => _InputUserWidgetState();
}

class _InputUserWidgetState extends State<InputUserWidget> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  UserRole? _role;

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
          DropdownButton(
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
            onChanged: (value) => setState(() => _role = value),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate() && _role != null) {
                final login = _loginController.text;
                final password = _passwordController.text;
                widget.onSubmit(login, password, _role!);
                Navigator.of(context).pop();
              }
            },
            child: const Text('Сохранить'),
          ),
        ],
      ),
    );
  }
}
