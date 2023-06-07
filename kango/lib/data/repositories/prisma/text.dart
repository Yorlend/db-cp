import 'package:kango/data/entities/text.dart';
import 'package:kango/data/entities/user.dart';
import 'package:kango/data/repositories/prisma/prisma_client.dart';
import 'package:kango/data/repositories/prisma/user.dart';
import 'package:kango/data/repositories/text.dart';

class PrismaTextRepository extends TextRepository {
  final PrismaClient _prisma;

  PrismaTextRepository({required PrismaClient prisma}) : _prisma = prisma;

  @override
  Future<List<Text>> findAll() async {
    final result = await _prisma.textsDAO.findMany();
    return result.map(_toModel).toList();
  }

  @override
  Future<List<Text>> findAccessibleByUser(String userLogin) async {
    final result = await _prisma.textsDAO.findMany(
      where: TextsDAOWhereInput(
        readers: UsersDAOListRelationFilter(
          some: UsersDAOWhereInput(
            accountName: StringFilter(equals: userLogin),
          ),
        ),
      ),
    );
    return result.map(_toModel).toList();
  }

  @override
  Future<List<User>> findAccecients(String textId) async {
    final result = await _prisma.usersDAO.findMany(
      where: UsersDAOWhereInput(
        texts: TextsDAOListRelationFilter(
          some: TextsDAOWhereInput(
            id: StringFilter(equals: textId),
          ),
        ),
      ),
    );

    return result.map(PrismaUserRepository.toModel).toList();
  }

  @override
  Future<Text> findByID(String id) async {
    final result = await _prisma.textsDAO.findUnique(
      where: TextsDAOWhereUniqueInput(id: id),
    );
    if (result == null) {
      throw Exception('Text not found');
    }
    return _toModel(result);
  }

  @override
  Future<String> insertText(Text text) async {
    final result = await _prisma.textsDAO.create(
      data: TextsDAOCreateInput(
        text: text.content,
        title: text.title,
      ),
    );

    return result.id;
  }

  @override
  Future<void> deleteById(String id) async {
    await _prisma.textsDAO.delete(
      where: TextsDAOWhereUniqueInput(id: id),
    );
  }

  @override
  Future<void> updateText(String id, String newTitle, String newContent) async {
    await _prisma.textsDAO.update(
      where: TextsDAOWhereUniqueInput(id: id),
      data: TextsDAOUpdateInput(
        title: StringFieldUpdateOperationsInput(set: newTitle),
        text: StringFieldUpdateOperationsInput(set: newContent),
      ),
    );
  }

  @override
  Future<void> updateAccecients(String textId, List<User> newReaders) async {
    await _prisma.textsDAO.update(
      where: TextsDAOWhereUniqueInput(id: textId),
      data: const TextsDAOUpdateInput(
        readers: UsersDAOUpdateManyWithoutTextsNestedInput(
          set: [],
        ),
      ),
    );
    await _prisma.textsDAO.update(
      where: TextsDAOWhereUniqueInput(id: textId),
      data: TextsDAOUpdateInput(
        readers: UsersDAOUpdateManyWithoutTextsNestedInput(
          connect: newReaders.map(
            (e) => UsersDAOWhereUniqueInput(
              accountName: e.login,
            ),
          ),
        ),
      ),
    );
  }

  Text _toModel(TextsDAO text) {
    return Text.withID(
      text.id,
      content: text.text,
      title: text.title,
    );
  }
}
