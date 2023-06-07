import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:kango/data/repositories/prisma/dict.dart';
import 'package:kango/data/repositories/prisma/text.dart';
import 'package:kango/data/repositories/prisma/user.dart';
import 'package:kango/data/repositories/prisma/word.dart';
import 'package:kango/services/dict.dart';
import 'package:provider/provider.dart';

import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/pages/admin/user_add.dart';
import 'package:kango/pages/admin/users.dart';
import 'package:kango/pages/auth.dart';
import 'package:kango/pages/mod/texts.dart';
import 'package:kango/pages/mod/text_upload_page.dart';
import 'package:kango/pages/user/dict_viewer.dart';
import 'package:kango/pages/user/text_viewer.dart';
import 'package:kango/pages/user/texts.dart';
import 'package:kango/services/auth.dart';
import 'package:kango/services/text_provider.dart';
import 'package:kango/services/user.dart';
import 'package:kango/services/word.dart';
import 'package:kango/services/user_provider.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  final prisma = PrismaClient(
    datasources: Datasources(
      db: dotenv.env['DATABASE_URL'],
    ),
  );

  final userRepo = PrismaUserRepository(prisma: prisma);
  final textRepo = PrismaTextRepository(prisma: prisma);
  final wordRepo = PrismaWordRepository(prisma: prisma);
  final dictRepo = PrismaDictionaryRepository(prisma: prisma);

  final authService = AuthService(userRepo);
  final userService = UserService(authService, userRepo);
  final wordService = WordService(wordRepo);
  final dictService = DictService(authService, dictRepo);

  GetIt.I.registerSingleton<AuthService>(authService);
  GetIt.I.registerSingleton<UserService>(userService);
  GetIt.I.registerSingleton<WordService>(wordService);
  GetIt.I.registerSingleton<DictService>(dictService);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => UserProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => TextsProvider(authService, textRepo, wordRepo),
      ),
    ],
    child: const App(),
  ));
}

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
                  if (role == UserRole.admin) {
                    return const UsersPage();
                  } else if (role == UserRole.moderator) {
                    return const ModTextsPage();
                  } else if (role == UserRole.user) {
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
        '/dictionary': (context) => const DictViewerPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const AuthPage(),
    );
  }
}
