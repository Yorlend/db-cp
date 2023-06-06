import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:kango/data/entities/user.dart';
import 'package:kango/services/user.dart';
import 'package:kango/widgets/drawer.dart';
import 'package:kango/widgets/edit_user.dart';
import 'package:kango/widgets/input_user.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => UsersPageState();
}

class UsersPageState extends State<UsersPage> {
  Future<List<User>> _getUsers() async {
    final userService = GetIt.I.get<UserService>();
    return await userService.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пользователи'),
      ),
      drawer: const KangoDrawer(),
      body: _usersListWidget(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return InputUserWidget((accountName, password, role) {
                final userService = GetIt.I.get<UserService>();
                userService
                    .register(accountName, password, role)
                    .then((u) => setState(() {}))
                    .catchError(
                      (err) => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(err.toString()))),
                    );
              });
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _usersListWidget(BuildContext context) {
    return FutureBuilder(
      future: _getUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children:
                snapshot.data!.map((e) => _userWidget(context, e)).toList(),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _userWidget(BuildContext context, User user) {
    return ListTile(
      title: Text(user.login),
      subtitle: Text(user.role.localizedName),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => EditUserWidget(
            user: user,
            onSubmit: () => setState(() {}),
            onDelete: () => setState(() {}),
          ),
        ),
      ),
    );
  }
}
