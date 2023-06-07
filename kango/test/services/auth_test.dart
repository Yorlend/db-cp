import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/prisma/user.dart';
import 'package:kango/services/auth.dart';
import 'package:test/test.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  final prisma = PrismaClient(
    datasources: Datasources(
      db: dotenv.env['DATABASE_URL'],
    ),
  );

  final userRepo = PrismaUserRepository(
    prisma: prisma,
  );
  final service = AuthService(userRepo);

  test('should login as admin', () async {
    final user = await service.login('admin', 'admin123');

    expect(user, isNotNull);
    expect(user!.login, equals('admin'));
    expect(user.role, equals(Role.admin.toString()));
  });
}
