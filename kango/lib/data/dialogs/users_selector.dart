import 'package:flutter/material.dart';
import 'package:kango/data/entities/user.dart';

class UsersSelectorDialog extends StatefulWidget {
  final Future<List<User>> allUsersFuture;
  final Future<List<User>> selectedUsersFuture;
  final void Function(List<User>) onConfirmed;

  const UsersSelectorDialog({
    required this.allUsersFuture,
    required this.selectedUsersFuture,
    required this.onConfirmed,
    super.key,
  });

  @override
  State<UsersSelectorDialog> createState() => UsersSelectorDialogState();
}

class UsersSelectorDialogState extends State<UsersSelectorDialog> {
  List<User>? _allUsers;
  List<User>? _selectedUsers;

  @override
  void initState() {
    super.initState();
    Future.wait([widget.allUsersFuture, widget.selectedUsersFuture])
        .then((values) {
      setState(() {
        _allUsers = values[0].toList();
        _selectedUsers = values[1].toList();
      });
    });
  }

  bool _userSelected(User user) {
    return _selectedUsers!.any((u) => u.login == user.login);
  }

  void _selectUser(User user) {
    _selectedUsers!.add(user);
  }

  void _deselectUser(User user) {
    final index = _selectedUsers!.indexWhere((u) => u.login == user.login);
    _selectedUsers!.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Выберите пользователей'),
      actions: [
        MaterialButton(
          color: Theme.of(context).colorScheme.error,
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Отмена',
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            widget.onConfirmed(_selectedUsers!);
            Navigator.of(context).pop();
          },
          child: const Text(
            'Сохранить',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      content: _allUsers == null || _selectedUsers == null
          ? const SizedBox(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            )
          : SingleChildScrollView(
              child: ListBody(
                children: _allUsers!
                    .map(
                      (u) => CheckboxListTile(
                        title: Text(u.login),
                        value: _userSelected(u),
                        onChanged: (bool? newValue) {
                          setState(
                            () {
                              if (newValue!) {
                                _selectUser(u);
                              } else {
                                _deselectUser(u);
                              }
                            },
                          );
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
    );
  }
}
