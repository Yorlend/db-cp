import 'package:kango/data/entities/text.dart';
import 'package:kango/data/entities/user.dart';

abstract class TextRepository {
  Future<List<Text>> findAll();
  Future<List<Text>> findAccessibleByUser(String userLogin);
  Future<List<User>> findAccecients(String textId);
  Future<Text> findByID(String id);
  Future<String> insertText(Text text);
  Future<void> deleteById(String id);
  Future<void> updateText(String id, String newTitle, String newContent);
  Future<void> updateAccecients(String textId, List<User> newReaders);
}
