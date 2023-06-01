import 'package:flutter/material.dart';
import 'package:kango/pages/mod_texts.dart';
import 'package:kango/pages/text_upload_page.dart';
import 'package:kango/pages/text_viewer.dart';
import 'package:kango/pages/texts.dart';
import 'package:kango/pages/user_add.dart';
import 'package:kango/pages/users.dart';
import 'package:provider/provider.dart';

import 'package:kango/pages/auth.dart';
import 'package:kango/services/user_provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: const App(),
    ));

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kango',
      routes: {
        '/auth': (context) => const AuthPage(),
        '/logout': (context) => const AuthPage(),
        '/home': (context) => Consumer<UserProvider>(
              builder: (context, value, child) {
                if (value.currentUser == null) {
                  return const AuthPage();
                } else {
                  final role = value.currentUser!.role;
                  if (role == 'admin') {
                    return const UsersPage();
                  } else if (role == 'mod') {
                    return const ModTextsPage();
                  } else if (role == 'user') {
                    return const TextsPage();
                  } else {
                    throw Exception('Unknown role: $role');
                  }
                }
              },
            ),
        '/text': (context) => const TextViewerPage(),
        '/texts/upload': (context) => const TextUploadPage(),
        '/users': (context) => const UsersPage(),
        '/users/add': (context) => const UserAddPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const AuthPage(),
    );
  }
}
