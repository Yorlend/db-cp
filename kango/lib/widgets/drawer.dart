import 'package:flutter/material.dart';
import 'package:kango/data/entities/user.dart';
import 'package:kango/services/user_provider.dart';
import 'package:provider/provider.dart';

class KangoDrawer extends StatelessWidget {
  const KangoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, value, child) {
        if (value.currentUser == null) {
          throw Exception('User is not logged in');
        } else {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  child: Text(
                    'Kango',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times',
                    ),
                  ),
                ),
                ..._chooseOptions(value.currentUser!.role).map((e) {
                  return ListTile(
                    title: Text(e.title),
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed(e.pageName),
                  );
                }).toList(),
                ListTile(
                  title: const Text('Выйти'),
                  onTap: () {
                    value.currentUser = null;
                    Navigator.of(context).pushReplacementNamed('/auth');
                  },
                ),
              ],
            ),
          );
        }
      },
    );
  }

  List<ListOption> _chooseOptions(UserRole userRole) {
    if (userRole == UserRole.admin) {
      return _adminOptions();
    } else if (userRole == UserRole.moderator) {
      return _modOptions();
    } else if (userRole == UserRole.user) {
      return _userOptions();
    } else {
      throw Exception('Unknown role: $userRole');
    }
  }

  List<ListOption> _userOptions() {
    return [
      ListOption(
        title: 'Тексты для чтения',
        pageName: '/home',
      ),
    ];
  }

  List<ListOption> _modOptions() {
    return [
      ListOption(
        title: 'Тексты',
        pageName: '/home',
      ),
    ];
  }

  List<ListOption> _adminOptions() {
    return [
      ListOption(
        title: 'Пользователи',
        pageName: '/users',
      ),
    ];
  }
}

class ListOption {
  final String title;
  final String pageName;

  ListOption({required this.title, required this.pageName});
}
