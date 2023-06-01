import 'package:flutter/material.dart';

import 'package:kango/data/entities/user.dart';
import 'package:kango/widgets/drawer.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  Future<List<User>> _getUsers() async {
    return [
      User(
        login: 'admin',
        role: 'admin',
        password: 'admin',
      ),
      User(
        login: 'mod',
        role: 'mod',
        password: 'mod',
      ),
      User(
        login: 'user',
        role: 'user',
        password: 'user',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пользователи'),
      ),
      drawer: const KangoDrawer(),
      body: FutureBuilder(
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
      ),
    );
  }

  Widget _userWidget(BuildContext context, User user) {
    return ListTile(
      title: Text(user.login),
      subtitle: Text(user.role),
    );
  }
}
