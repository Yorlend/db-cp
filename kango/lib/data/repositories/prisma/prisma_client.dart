// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum DictionariesDAOScalarFieldEnum implements _i1.PrismaEnum {
  id,
  title,
  @JsonValue('owner_id')
  ownerId(r'owner_id');

  const DictionariesDAOScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum KanjiDAOScalarFieldEnum implements _i1.PrismaEnum {
  glyph,
  onyoumi,
  kunyoumi,
  meaning;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum TextsDAOScalarFieldEnum implements _i1.PrismaEnum {
  id,
  title,
  text;

  @override
  String? get originalName => null;
}

enum UsersDAOScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('account_name')
  accountName(r'account_name'),
  password,
  role;

  const UsersDAOScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum WordsDAOScalarFieldEnum implements _i1.PrismaEnum {
  word,
  translation,
  reading;

  @override
  String? get originalName => null;
}

enum Role implements _i1.PrismaEnum {
  @JsonValue('USER')
  user(r'USER'),
  @JsonValue('MODERATOR')
  moderator(r'MODERATOR'),
  @JsonValue('ADMIN')
  admin(r'ADMIN');

  const Role([this.originalName]);

  @override
  final String? originalName;
}

@_i1.jsonSerializable
class UsersDAOWhereInput implements _i1.JsonSerializable {
  const UsersDAOWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.dictionary,
    this.texts,
  });

  factory UsersDAOWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOWhereInputFromJson(json);

  final Iterable<UsersDAOWhereInput>? AND;

  final Iterable<UsersDAOWhereInput>? OR;

  final Iterable<UsersDAOWhereInput>? NOT;

  final StringFilter? id;

  @JsonKey(name: r'account_name')
  final StringFilter? accountName;

  final StringFilter? password;

  final EnumRoleFilter? role;

  final DictionariesDAORelationFilter? dictionary;

  final TextsDAOListRelationFilter? texts;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOWhereInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOOrderByWithRelationInput implements _i1.JsonSerializable {
  const UsersDAOOrderByWithRelationInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.dictionary,
    this.texts,
  });

  factory UsersDAOOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_name')
  final SortOrder? accountName;

  final SortOrder? password;

  final SortOrder? role;

  final DictionariesDAOOrderByWithRelationInput? dictionary;

  final TextsDAOOrderByRelationAggregateInput? texts;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOWhereUniqueInput implements _i1.JsonSerializable {
  const UsersDAOWhereUniqueInput({
    this.id,
    this.accountName,
  });

  factory UsersDAOWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOWhereUniqueInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String? accountName;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UsersDAOOrderByWithAggregationInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.$count,
    this.$max,
    this.$min,
  });

  factory UsersDAOOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_name')
  final SortOrder? accountName;

  final SortOrder? password;

  final SortOrder? role;

  @JsonKey(name: r'_count')
  final UsersDAOCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final UsersDAOMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UsersDAOMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UsersDAOScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UsersDAOScalarWhereWithAggregatesInput>? AND;

  final Iterable<UsersDAOScalarWhereWithAggregatesInput>? OR;

  final Iterable<UsersDAOScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  @JsonKey(name: r'account_name')
  final StringWithAggregatesFilter? accountName;

  final StringWithAggregatesFilter? password;

  final EnumRoleWithAggregatesFilter? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOWhereInput implements _i1.JsonSerializable {
  const KanjiDAOWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
    this.words,
  });

  factory KanjiDAOWhereInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOWhereInputFromJson(json);

  final Iterable<KanjiDAOWhereInput>? AND;

  final Iterable<KanjiDAOWhereInput>? OR;

  final Iterable<KanjiDAOWhereInput>? NOT;

  final StringFilter? glyph;

  final StringFilter? onyoumi;

  final StringFilter? kunyoumi;

  final StringFilter? meaning;

  final WordsDAOListRelationFilter? words;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOWhereInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOOrderByWithRelationInput implements _i1.JsonSerializable {
  const KanjiDAOOrderByWithRelationInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
    this.words,
  });

  factory KanjiDAOOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOOrderByWithRelationInputFromJson(json);

  final SortOrder? glyph;

  final SortOrder? onyoumi;

  final SortOrder? kunyoumi;

  final SortOrder? meaning;

  final WordsDAOOrderByRelationAggregateInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOWhereUniqueInput implements _i1.JsonSerializable {
  const KanjiDAOWhereUniqueInput({this.glyph});

  factory KanjiDAOWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOWhereUniqueInputFromJson(json);

  final String? glyph;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOOrderByWithAggregationInput implements _i1.JsonSerializable {
  const KanjiDAOOrderByWithAggregationInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
    this.$count,
    this.$max,
    this.$min,
  });

  factory KanjiDAOOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOOrderByWithAggregationInputFromJson(json);

  final SortOrder? glyph;

  final SortOrder? onyoumi;

  final SortOrder? kunyoumi;

  final SortOrder? meaning;

  @JsonKey(name: r'_count')
  final KanjiDAOCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final KanjiDAOMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final KanjiDAOMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const KanjiDAOScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<KanjiDAOScalarWhereWithAggregatesInput>? AND;

  final Iterable<KanjiDAOScalarWhereWithAggregatesInput>? OR;

  final Iterable<KanjiDAOScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? glyph;

  final StringWithAggregatesFilter? onyoumi;

  final StringWithAggregatesFilter? kunyoumi;

  final StringWithAggregatesFilter? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOWhereInput implements _i1.JsonSerializable {
  const DictionariesDAOWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.ownerId,
    this.owner,
    this.words,
  });

  factory DictionariesDAOWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOWhereInputFromJson(json);

  final Iterable<DictionariesDAOWhereInput>? AND;

  final Iterable<DictionariesDAOWhereInput>? OR;

  final Iterable<DictionariesDAOWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? title;

  @JsonKey(name: r'owner_id')
  final StringFilter? ownerId;

  final UsersDAORelationFilter? owner;

  final WordsDAOListRelationFilter? words;

  @override
  Map<String, dynamic> toJson() => _$DictionariesDAOWhereInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOOrderByWithRelationInput implements _i1.JsonSerializable {
  const DictionariesDAOOrderByWithRelationInput({
    this.id,
    this.title,
    this.ownerId,
    this.owner,
    this.words,
  });

  factory DictionariesDAOOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  @JsonKey(name: r'owner_id')
  final SortOrder? ownerId;

  final UsersDAOOrderByWithRelationInput? owner;

  final WordsDAOOrderByRelationAggregateInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOWhereUniqueInput implements _i1.JsonSerializable {
  const DictionariesDAOWhereUniqueInput({
    this.id,
    this.ownerId,
  });

  factory DictionariesDAOWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOWhereUniqueInputFromJson(json);

  final String? id;

  @JsonKey(name: r'owner_id')
  final String? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const DictionariesDAOOrderByWithAggregationInput({
    this.id,
    this.title,
    this.ownerId,
    this.$count,
    this.$max,
    this.$min,
  });

  factory DictionariesDAOOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  @JsonKey(name: r'owner_id')
  final SortOrder? ownerId;

  @JsonKey(name: r'_count')
  final DictionariesDAOCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final DictionariesDAOMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final DictionariesDAOMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const DictionariesDAOScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<DictionariesDAOScalarWhereWithAggregatesInput>? AND;

  final Iterable<DictionariesDAOScalarWhereWithAggregatesInput>? OR;

  final Iterable<DictionariesDAOScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? title;

  @JsonKey(name: r'owner_id')
  final StringWithAggregatesFilter? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOWhereInput implements _i1.JsonSerializable {
  const WordsDAOWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.word,
    this.translation,
    this.reading,
    this.dicts,
    this.kanjis,
  });

  factory WordsDAOWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOWhereInputFromJson(json);

  final Iterable<WordsDAOWhereInput>? AND;

  final Iterable<WordsDAOWhereInput>? OR;

  final Iterable<WordsDAOWhereInput>? NOT;

  final StringFilter? word;

  final StringFilter? translation;

  final StringFilter? reading;

  final DictionariesDAOListRelationFilter? dicts;

  final KanjiDAOListRelationFilter? kanjis;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOWhereInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOOrderByWithRelationInput implements _i1.JsonSerializable {
  const WordsDAOOrderByWithRelationInput({
    this.word,
    this.translation,
    this.reading,
    this.dicts,
    this.kanjis,
  });

  factory WordsDAOOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOOrderByWithRelationInputFromJson(json);

  final SortOrder? word;

  final SortOrder? translation;

  final SortOrder? reading;

  final DictionariesDAOOrderByRelationAggregateInput? dicts;

  final KanjiDAOOrderByRelationAggregateInput? kanjis;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOWhereUniqueInput implements _i1.JsonSerializable {
  const WordsDAOWhereUniqueInput({this.word});

  factory WordsDAOWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOWhereUniqueInputFromJson(json);

  final String? word;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOOrderByWithAggregationInput implements _i1.JsonSerializable {
  const WordsDAOOrderByWithAggregationInput({
    this.word,
    this.translation,
    this.reading,
    this.$count,
    this.$max,
    this.$min,
  });

  factory WordsDAOOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOOrderByWithAggregationInputFromJson(json);

  final SortOrder? word;

  final SortOrder? translation;

  final SortOrder? reading;

  @JsonKey(name: r'_count')
  final WordsDAOCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final WordsDAOMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final WordsDAOMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const WordsDAOScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<WordsDAOScalarWhereWithAggregatesInput>? AND;

  final Iterable<WordsDAOScalarWhereWithAggregatesInput>? OR;

  final Iterable<WordsDAOScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? word;

  final StringWithAggregatesFilter? translation;

  final StringWithAggregatesFilter? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOWhereInput implements _i1.JsonSerializable {
  const TextsDAOWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.text,
    this.readers,
  });

  factory TextsDAOWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOWhereInputFromJson(json);

  final Iterable<TextsDAOWhereInput>? AND;

  final Iterable<TextsDAOWhereInput>? OR;

  final Iterable<TextsDAOWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? title;

  final StringFilter? text;

  final UsersDAOListRelationFilter? readers;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOWhereInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOOrderByWithRelationInput implements _i1.JsonSerializable {
  const TextsDAOOrderByWithRelationInput({
    this.id,
    this.title,
    this.text,
    this.readers,
  });

  factory TextsDAOOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? text;

  final UsersDAOOrderByRelationAggregateInput? readers;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOWhereUniqueInput implements _i1.JsonSerializable {
  const TextsDAOWhereUniqueInput({this.id});

  factory TextsDAOWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOWhereUniqueInputFromJson(json);

  final String? id;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TextsDAOOrderByWithAggregationInput({
    this.id,
    this.title,
    this.text,
    this.$count,
    this.$max,
    this.$min,
  });

  factory TextsDAOOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? text;

  @JsonKey(name: r'_count')
  final TextsDAOCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final TextsDAOMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TextsDAOMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TextsDAOScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TextsDAOScalarWhereWithAggregatesInput>? AND;

  final Iterable<TextsDAOScalarWhereWithAggregatesInput>? OR;

  final Iterable<TextsDAOScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? title;

  final StringWithAggregatesFilter? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateInput implements _i1.JsonSerializable {
  const UsersDAOCreateInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
    this.dictionary,
    this.texts,
  });

  factory UsersDAOCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOCreateInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  final DictionariesDAOCreateNestedOneWithoutOwnerInput? dictionary;

  final TextsDAOCreateNestedManyWithoutReadersInput? texts;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOCreateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedCreateInput implements _i1.JsonSerializable {
  const UsersDAOUncheckedCreateInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
    this.dictionary,
    this.texts,
  });

  factory UsersDAOUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOUncheckedCreateInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  final DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput? dictionary;

  final TextsDAOUncheckedCreateNestedManyWithoutReadersInput? texts;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateInput implements _i1.JsonSerializable {
  const UsersDAOUpdateInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.dictionary,
    this.texts,
  });

  factory UsersDAOUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  final DictionariesDAOUpdateOneWithoutOwnerNestedInput? dictionary;

  final TextsDAOUpdateManyWithoutReadersNestedInput? texts;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedUpdateInput implements _i1.JsonSerializable {
  const UsersDAOUncheckedUpdateInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.dictionary,
    this.texts,
  });

  factory UsersDAOUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  final DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput? dictionary;

  final TextsDAOUncheckedUpdateManyWithoutReadersNestedInput? texts;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateManyInput implements _i1.JsonSerializable {
  const UsersDAOCreateManyInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
  });

  factory UsersDAOCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOCreateManyInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateManyMutationInput implements _i1.JsonSerializable {
  const UsersDAOUpdateManyMutationInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UsersDAOUncheckedUpdateManyInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOCreateInput implements _i1.JsonSerializable {
  const KanjiDAOCreateInput({
    required this.glyph,
    required this.onyoumi,
    required this.kunyoumi,
    required this.meaning,
    this.words,
  });

  factory KanjiDAOCreateInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOCreateInputFromJson(json);

  final String glyph;

  final String onyoumi;

  final String kunyoumi;

  final String meaning;

  final WordsDAOCreateNestedManyWithoutKanjisInput? words;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOCreateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedCreateInput implements _i1.JsonSerializable {
  const KanjiDAOUncheckedCreateInput({
    required this.glyph,
    required this.onyoumi,
    required this.kunyoumi,
    required this.meaning,
    this.words,
  });

  factory KanjiDAOUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedCreateInputFromJson(json);

  final String glyph;

  final String onyoumi;

  final String kunyoumi;

  final String meaning;

  final WordsDAOUncheckedCreateNestedManyWithoutKanjisInput? words;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpdateInput implements _i1.JsonSerializable {
  const KanjiDAOUpdateInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
    this.words,
  });

  factory KanjiDAOUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  final WordsDAOUpdateManyWithoutKanjisNestedInput? words;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOUpdateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedUpdateInput implements _i1.JsonSerializable {
  const KanjiDAOUncheckedUpdateInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
    this.words,
  });

  factory KanjiDAOUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  final WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput? words;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOCreateManyInput implements _i1.JsonSerializable {
  const KanjiDAOCreateManyInput({
    required this.glyph,
    required this.onyoumi,
    required this.kunyoumi,
    required this.meaning,
  });

  factory KanjiDAOCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOCreateManyInputFromJson(json);

  final String glyph;

  final String onyoumi;

  final String kunyoumi;

  final String meaning;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpdateManyMutationInput implements _i1.JsonSerializable {
  const KanjiDAOUpdateManyMutationInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const KanjiDAOUncheckedUpdateManyInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateInput implements _i1.JsonSerializable {
  const DictionariesDAOCreateInput({
    this.id,
    required this.title,
    required this.owner,
    this.words,
  });

  factory DictionariesDAOCreateInput.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOCreateInputFromJson(json);

  final String? id;

  final String title;

  final UsersDAOCreateNestedOneWithoutDictionaryInput owner;

  final WordsDAOCreateNestedManyWithoutDictsInput? words;

  @override
  Map<String, dynamic> toJson() => _$DictionariesDAOCreateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedCreateInput implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedCreateInput({
    this.id,
    required this.title,
    required this.ownerId,
    this.words,
  });

  factory DictionariesDAOUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedCreateInputFromJson(json);

  final String? id;

  final String title;

  @JsonKey(name: r'owner_id')
  final String ownerId;

  final WordsDAOUncheckedCreateNestedManyWithoutDictsInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateInput implements _i1.JsonSerializable {
  const DictionariesDAOUpdateInput({
    this.id,
    this.title,
    this.owner,
    this.words,
  });

  factory DictionariesDAOUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput? owner;

  final WordsDAOUpdateManyWithoutDictsNestedInput? words;

  @override
  Map<String, dynamic> toJson() => _$DictionariesDAOUpdateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateInput implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateInput({
    this.id,
    this.title,
    this.ownerId,
    this.words,
  });

  factory DictionariesDAOUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'owner_id')
  final StringFieldUpdateOperationsInput? ownerId;

  final WordsDAOUncheckedUpdateManyWithoutDictsNestedInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateManyInput implements _i1.JsonSerializable {
  const DictionariesDAOCreateManyInput({
    this.id,
    required this.title,
    required this.ownerId,
  });

  factory DictionariesDAOCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOCreateManyInputFromJson(json);

  final String? id;

  final String title;

  @JsonKey(name: r'owner_id')
  final String ownerId;

  @override
  Map<String, dynamic> toJson() => _$DictionariesDAOCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateManyMutationInput implements _i1.JsonSerializable {
  const DictionariesDAOUpdateManyMutationInput({
    this.id,
    this.title,
  });

  factory DictionariesDAOUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'owner_id')
  final StringFieldUpdateOperationsInput? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateInput implements _i1.JsonSerializable {
  const WordsDAOCreateInput({
    required this.word,
    required this.translation,
    required this.reading,
    this.dicts,
    this.kanjis,
  });

  factory WordsDAOCreateInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOCreateInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  final DictionariesDAOCreateNestedManyWithoutWordsInput? dicts;

  final KanjiDAOCreateNestedManyWithoutWordsInput? kanjis;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOCreateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedCreateInput implements _i1.JsonSerializable {
  const WordsDAOUncheckedCreateInput({
    required this.word,
    required this.translation,
    required this.reading,
    this.dicts,
    this.kanjis,
  });

  factory WordsDAOUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOUncheckedCreateInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  final DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput? dicts;

  final KanjiDAOUncheckedCreateNestedManyWithoutWordsInput? kanjis;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateInput implements _i1.JsonSerializable {
  const WordsDAOUpdateInput({
    this.word,
    this.translation,
    this.reading,
    this.dicts,
    this.kanjis,
  });

  factory WordsDAOUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  final DictionariesDAOUpdateManyWithoutWordsNestedInput? dicts;

  final KanjiDAOUpdateManyWithoutWordsNestedInput? kanjis;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOUpdateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateInput implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateInput({
    this.word,
    this.translation,
    this.reading,
    this.dicts,
    this.kanjis,
  });

  factory WordsDAOUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  final DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput? dicts;

  final KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput? kanjis;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateManyInput implements _i1.JsonSerializable {
  const WordsDAOCreateManyInput({
    required this.word,
    required this.translation,
    required this.reading,
  });

  factory WordsDAOCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOCreateManyInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateManyMutationInput implements _i1.JsonSerializable {
  const WordsDAOUpdateManyMutationInput({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateManyInput({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOCreateInput implements _i1.JsonSerializable {
  const TextsDAOCreateInput({
    this.id,
    required this.title,
    required this.text,
    this.readers,
  });

  factory TextsDAOCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOCreateInputFromJson(json);

  final String? id;

  final String title;

  final String text;

  final UsersDAOCreateNestedManyWithoutTextsInput? readers;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOCreateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedCreateInput implements _i1.JsonSerializable {
  const TextsDAOUncheckedCreateInput({
    this.id,
    required this.title,
    required this.text,
    this.readers,
  });

  factory TextsDAOUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOUncheckedCreateInputFromJson(json);

  final String? id;

  final String title;

  final String text;

  final UsersDAOUncheckedCreateNestedManyWithoutTextsInput? readers;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpdateInput implements _i1.JsonSerializable {
  const TextsDAOUpdateInput({
    this.id,
    this.title,
    this.text,
    this.readers,
  });

  factory TextsDAOUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  final UsersDAOUpdateManyWithoutTextsNestedInput? readers;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedUpdateInput implements _i1.JsonSerializable {
  const TextsDAOUncheckedUpdateInput({
    this.id,
    this.title,
    this.text,
    this.readers,
  });

  factory TextsDAOUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  final UsersDAOUncheckedUpdateManyWithoutTextsNestedInput? readers;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOCreateManyInput implements _i1.JsonSerializable {
  const TextsDAOCreateManyInput({
    this.id,
    required this.title,
    required this.text,
  });

  factory TextsDAOCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOCreateManyInputFromJson(json);

  final String? id;

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpdateManyMutationInput implements _i1.JsonSerializable {
  const TextsDAOUpdateManyMutationInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TextsDAOUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class EnumRoleFilter implements _i1.JsonSerializable {
  const EnumRoleFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  factory EnumRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$EnumRoleFilterFromJson(json);

  final Role? equals;

  @JsonKey(name: r'in')
  final Iterable<Role>? $in;

  final Iterable<Role>? notIn;

  final Role? not;

  @override
  Map<String, dynamic> toJson() => _$EnumRoleFilterToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAORelationFilter implements _i1.JsonSerializable {
  const DictionariesDAORelationFilter({
    this.$is,
    this.isNot,
  });

  factory DictionariesDAORelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAORelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final DictionariesDAOWhereInput? $is;

  final DictionariesDAOWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$DictionariesDAORelationFilterToJson(this);
}

@_i1.jsonSerializable
class TextsDAOListRelationFilter implements _i1.JsonSerializable {
  const TextsDAOListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory TextsDAOListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOListRelationFilterFromJson(json);

  final TextsDAOWhereInput? every;

  final TextsDAOWhereInput? some;

  final TextsDAOWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class TextsDAOOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const TextsDAOOrderByRelationAggregateInput({this.$count});

  factory TextsDAOOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersDAOCountOrderByAggregateInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_name')
  final SortOrder? accountName;

  final SortOrder? password;

  final SortOrder? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersDAOMaxOrderByAggregateInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_name')
  final SortOrder? accountName;

  final SortOrder? password;

  final SortOrder? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersDAOMinOrderByAggregateInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'account_name')
  final SortOrder? accountName;

  final SortOrder? password;

  final SortOrder? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class EnumRoleWithAggregatesFilter implements _i1.JsonSerializable {
  const EnumRoleWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory EnumRoleWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$EnumRoleWithAggregatesFilterFromJson(json);

  final Role? equals;

  @JsonKey(name: r'in')
  final Iterable<Role>? $in;

  final Iterable<Role>? notIn;

  final Role? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedEnumRoleFilter? $min;

  @JsonKey(name: r'_max')
  final NestedEnumRoleFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$EnumRoleWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class WordsDAOListRelationFilter implements _i1.JsonSerializable {
  const WordsDAOListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory WordsDAOListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOListRelationFilterFromJson(json);

  final WordsDAOWhereInput? every;

  final WordsDAOWhereInput? some;

  final WordsDAOWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class WordsDAOOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const WordsDAOOrderByRelationAggregateInput({this.$count});

  factory WordsDAOOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOCountOrderByAggregateInput implements _i1.JsonSerializable {
  const KanjiDAOCountOrderByAggregateInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOCountOrderByAggregateInputFromJson(json);

  final SortOrder? glyph;

  final SortOrder? onyoumi;

  final SortOrder? kunyoumi;

  final SortOrder? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const KanjiDAOMaxOrderByAggregateInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOMaxOrderByAggregateInputFromJson(json);

  final SortOrder? glyph;

  final SortOrder? onyoumi;

  final SortOrder? kunyoumi;

  final SortOrder? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOMinOrderByAggregateInput implements _i1.JsonSerializable {
  const KanjiDAOMinOrderByAggregateInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOMinOrderByAggregateInputFromJson(json);

  final SortOrder? glyph;

  final SortOrder? onyoumi;

  final SortOrder? kunyoumi;

  final SortOrder? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAORelationFilter implements _i1.JsonSerializable {
  const UsersDAORelationFilter({
    this.$is,
    this.isNot,
  });

  factory UsersDAORelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UsersDAORelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UsersDAOWhereInput? $is;

  final UsersDAOWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UsersDAORelationFilterToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCountOrderByAggregateInput
    implements _i1.JsonSerializable {
  const DictionariesDAOCountOrderByAggregateInput({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  @JsonKey(name: r'owner_id')
  final SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const DictionariesDAOMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  @JsonKey(name: r'owner_id')
  final SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOMinOrderByAggregateInput implements _i1.JsonSerializable {
  const DictionariesDAOMinOrderByAggregateInput({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  @JsonKey(name: r'owner_id')
  final SortOrder? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOListRelationFilter implements _i1.JsonSerializable {
  const DictionariesDAOListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory DictionariesDAOListRelationFilter.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOListRelationFilterFromJson(json);

  final DictionariesDAOWhereInput? every;

  final DictionariesDAOWhereInput? some;

  final DictionariesDAOWhereInput? none;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOListRelationFilter implements _i1.JsonSerializable {
  const KanjiDAOListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory KanjiDAOListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOListRelationFilterFromJson(json);

  final KanjiDAOWhereInput? every;

  final KanjiDAOWhereInput? some;

  final KanjiDAOWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOOrderByRelationAggregateInput
    implements _i1.JsonSerializable {
  const DictionariesDAOOrderByRelationAggregateInput({this.$count});

  factory DictionariesDAOOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const KanjiDAOOrderByRelationAggregateInput({this.$count});

  factory KanjiDAOOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCountOrderByAggregateInput implements _i1.JsonSerializable {
  const WordsDAOCountOrderByAggregateInput({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOCountOrderByAggregateInputFromJson(json);

  final SortOrder? word;

  final SortOrder? translation;

  final SortOrder? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const WordsDAOMaxOrderByAggregateInput({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOMaxOrderByAggregateInputFromJson(json);

  final SortOrder? word;

  final SortOrder? translation;

  final SortOrder? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOMinOrderByAggregateInput implements _i1.JsonSerializable {
  const WordsDAOMinOrderByAggregateInput({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOMinOrderByAggregateInputFromJson(json);

  final SortOrder? word;

  final SortOrder? translation;

  final SortOrder? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOListRelationFilter implements _i1.JsonSerializable {
  const UsersDAOListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory UsersDAOListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOListRelationFilterFromJson(json);

  final UsersDAOWhereInput? every;

  final UsersDAOWhereInput? some;

  final UsersDAOWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class UsersDAOOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const UsersDAOOrderByRelationAggregateInput({this.$count});

  factory UsersDAOOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TextsDAOCountOrderByAggregateInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TextsDAOMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TextsDAOMinOrderByAggregateInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateNestedOneWithoutOwnerInput
    implements _i1.JsonSerializable {
  const DictionariesDAOCreateNestedOneWithoutOwnerInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory DictionariesDAOCreateNestedOneWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCreateNestedOneWithoutOwnerInputFromJson(json);

  final DictionariesDAOCreateWithoutOwnerInput? create;

  final DictionariesDAOCreateOrConnectWithoutOwnerInput? connectOrCreate;

  final DictionariesDAOWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCreateNestedOneWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOCreateNestedManyWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOCreateNestedManyWithoutReadersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TextsDAOCreateNestedManyWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOCreateNestedManyWithoutReadersInputFromJson(json);

  final Iterable<TextsDAOCreateWithoutReadersInput>? create;

  final Iterable<TextsDAOCreateOrConnectWithoutReadersInput>? connectOrCreate;

  final Iterable<TextsDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOCreateNestedManyWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInputFromJson(json);

  final DictionariesDAOCreateWithoutOwnerInput? create;

  final DictionariesDAOCreateOrConnectWithoutOwnerInput? connectOrCreate;

  final DictionariesDAOWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedCreateNestedManyWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOUncheckedCreateNestedManyWithoutReadersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TextsDAOUncheckedCreateNestedManyWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUncheckedCreateNestedManyWithoutReadersInputFromJson(json);

  final Iterable<TextsDAOCreateWithoutReadersInput>? create;

  final Iterable<TextsDAOCreateOrConnectWithoutReadersInput>? connectOrCreate;

  final Iterable<TextsDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUncheckedCreateNestedManyWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class EnumRoleFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const EnumRoleFieldUpdateOperationsInput({this.set});

  factory EnumRoleFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$EnumRoleFieldUpdateOperationsInputFromJson(json);

  final Role? set;

  @override
  Map<String, dynamic> toJson() =>
      _$EnumRoleFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateOneWithoutOwnerNestedInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUpdateOneWithoutOwnerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory DictionariesDAOUpdateOneWithoutOwnerNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateOneWithoutOwnerNestedInputFromJson(json);

  final DictionariesDAOCreateWithoutOwnerInput? create;

  final DictionariesDAOCreateOrConnectWithoutOwnerInput? connectOrCreate;

  final DictionariesDAOUpsertWithoutOwnerInput? upsert;

  final bool? disconnect;

  final bool? delete;

  final DictionariesDAOWhereUniqueInput? connect;

  final DictionariesDAOUpdateWithoutOwnerInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateOneWithoutOwnerNestedInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpdateManyWithoutReadersNestedInput
    implements _i1.JsonSerializable {
  const TextsDAOUpdateManyWithoutReadersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TextsDAOUpdateManyWithoutReadersNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUpdateManyWithoutReadersNestedInputFromJson(json);

  final Iterable<TextsDAOCreateWithoutReadersInput>? create;

  final Iterable<TextsDAOCreateOrConnectWithoutReadersInput>? connectOrCreate;

  final Iterable<TextsDAOUpsertWithWhereUniqueWithoutReadersInput>? upsert;

  final Iterable<TextsDAOWhereUniqueInput>? set;

  final Iterable<TextsDAOWhereUniqueInput>? disconnect;

  final Iterable<TextsDAOWhereUniqueInput>? delete;

  final Iterable<TextsDAOWhereUniqueInput>? connect;

  final Iterable<TextsDAOUpdateWithWhereUniqueWithoutReadersInput>? update;

  final Iterable<TextsDAOUpdateManyWithWhereWithoutReadersInput>? updateMany;

  final Iterable<TextsDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUpdateManyWithoutReadersNestedInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInputFromJson(json);

  final DictionariesDAOCreateWithoutOwnerInput? create;

  final DictionariesDAOCreateOrConnectWithoutOwnerInput? connectOrCreate;

  final DictionariesDAOUpsertWithoutOwnerInput? upsert;

  final bool? disconnect;

  final bool? delete;

  final DictionariesDAOWhereUniqueInput? connect;

  final DictionariesDAOUpdateWithoutOwnerInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedUpdateManyWithoutReadersNestedInput
    implements _i1.JsonSerializable {
  const TextsDAOUncheckedUpdateManyWithoutReadersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TextsDAOUncheckedUpdateManyWithoutReadersNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUncheckedUpdateManyWithoutReadersNestedInputFromJson(json);

  final Iterable<TextsDAOCreateWithoutReadersInput>? create;

  final Iterable<TextsDAOCreateOrConnectWithoutReadersInput>? connectOrCreate;

  final Iterable<TextsDAOUpsertWithWhereUniqueWithoutReadersInput>? upsert;

  final Iterable<TextsDAOWhereUniqueInput>? set;

  final Iterable<TextsDAOWhereUniqueInput>? disconnect;

  final Iterable<TextsDAOWhereUniqueInput>? delete;

  final Iterable<TextsDAOWhereUniqueInput>? connect;

  final Iterable<TextsDAOUpdateWithWhereUniqueWithoutReadersInput>? update;

  final Iterable<TextsDAOUpdateManyWithWhereWithoutReadersInput>? updateMany;

  final Iterable<TextsDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUncheckedUpdateManyWithoutReadersNestedInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateNestedManyWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOCreateNestedManyWithoutKanjisInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory WordsDAOCreateNestedManyWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOCreateNestedManyWithoutKanjisInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutKanjisInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutKanjisInput>? connectOrCreate;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCreateNestedManyWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedCreateNestedManyWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedCreateNestedManyWithoutKanjisInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory WordsDAOUncheckedCreateNestedManyWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedCreateNestedManyWithoutKanjisInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutKanjisInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutKanjisInput>? connectOrCreate;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedCreateNestedManyWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateManyWithoutKanjisNestedInput
    implements _i1.JsonSerializable {
  const WordsDAOUpdateManyWithoutKanjisNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory WordsDAOUpdateManyWithoutKanjisNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateManyWithoutKanjisNestedInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutKanjisInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutKanjisInput>? connectOrCreate;

  final Iterable<WordsDAOUpsertWithWhereUniqueWithoutKanjisInput>? upsert;

  final Iterable<WordsDAOWhereUniqueInput>? set;

  final Iterable<WordsDAOWhereUniqueInput>? disconnect;

  final Iterable<WordsDAOWhereUniqueInput>? delete;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  final Iterable<WordsDAOUpdateWithWhereUniqueWithoutKanjisInput>? update;

  final Iterable<WordsDAOUpdateManyWithWhereWithoutKanjisInput>? updateMany;

  final Iterable<WordsDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateManyWithoutKanjisNestedInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateManyWithoutKanjisNestedInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutKanjisInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutKanjisInput>? connectOrCreate;

  final Iterable<WordsDAOUpsertWithWhereUniqueWithoutKanjisInput>? upsert;

  final Iterable<WordsDAOWhereUniqueInput>? set;

  final Iterable<WordsDAOWhereUniqueInput>? disconnect;

  final Iterable<WordsDAOWhereUniqueInput>? delete;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  final Iterable<WordsDAOUpdateWithWhereUniqueWithoutKanjisInput>? update;

  final Iterable<WordsDAOUpdateManyWithWhereWithoutKanjisInput>? updateMany;

  final Iterable<WordsDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedUpdateManyWithoutKanjisNestedInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateNestedOneWithoutDictionaryInput
    implements _i1.JsonSerializable {
  const UsersDAOCreateNestedOneWithoutDictionaryInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UsersDAOCreateNestedOneWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOCreateNestedOneWithoutDictionaryInputFromJson(json);

  final UsersDAOCreateWithoutDictionaryInput? create;

  final UsersDAOCreateOrConnectWithoutDictionaryInput? connectOrCreate;

  final UsersDAOWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCreateNestedOneWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateNestedManyWithoutDictsInput
    implements _i1.JsonSerializable {
  const WordsDAOCreateNestedManyWithoutDictsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory WordsDAOCreateNestedManyWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOCreateNestedManyWithoutDictsInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutDictsInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutDictsInput>? connectOrCreate;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCreateNestedManyWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedCreateNestedManyWithoutDictsInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedCreateNestedManyWithoutDictsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory WordsDAOUncheckedCreateNestedManyWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedCreateNestedManyWithoutDictsInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutDictsInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutDictsInput>? connectOrCreate;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedCreateNestedManyWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput
    implements _i1.JsonSerializable {
  const UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpdateOneRequiredWithoutDictionaryNestedInputFromJson(json);

  final UsersDAOCreateWithoutDictionaryInput? create;

  final UsersDAOCreateOrConnectWithoutDictionaryInput? connectOrCreate;

  final UsersDAOUpsertWithoutDictionaryInput? upsert;

  final UsersDAOWhereUniqueInput? connect;

  final UsersDAOUpdateWithoutDictionaryInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateOneRequiredWithoutDictionaryNestedInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateManyWithoutDictsNestedInput
    implements _i1.JsonSerializable {
  const WordsDAOUpdateManyWithoutDictsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory WordsDAOUpdateManyWithoutDictsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateManyWithoutDictsNestedInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutDictsInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutDictsInput>? connectOrCreate;

  final Iterable<WordsDAOUpsertWithWhereUniqueWithoutDictsInput>? upsert;

  final Iterable<WordsDAOWhereUniqueInput>? set;

  final Iterable<WordsDAOWhereUniqueInput>? disconnect;

  final Iterable<WordsDAOWhereUniqueInput>? delete;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  final Iterable<WordsDAOUpdateWithWhereUniqueWithoutDictsInput>? update;

  final Iterable<WordsDAOUpdateManyWithWhereWithoutDictsInput>? updateMany;

  final Iterable<WordsDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateManyWithoutDictsNestedInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateManyWithoutDictsNestedInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateManyWithoutDictsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory WordsDAOUncheckedUpdateManyWithoutDictsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateManyWithoutDictsNestedInputFromJson(json);

  final Iterable<WordsDAOCreateWithoutDictsInput>? create;

  final Iterable<WordsDAOCreateOrConnectWithoutDictsInput>? connectOrCreate;

  final Iterable<WordsDAOUpsertWithWhereUniqueWithoutDictsInput>? upsert;

  final Iterable<WordsDAOWhereUniqueInput>? set;

  final Iterable<WordsDAOWhereUniqueInput>? disconnect;

  final Iterable<WordsDAOWhereUniqueInput>? delete;

  final Iterable<WordsDAOWhereUniqueInput>? connect;

  final Iterable<WordsDAOUpdateWithWhereUniqueWithoutDictsInput>? update;

  final Iterable<WordsDAOUpdateManyWithWhereWithoutDictsInput>? updateMany;

  final Iterable<WordsDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedUpdateManyWithoutDictsNestedInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateNestedManyWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOCreateNestedManyWithoutWordsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory DictionariesDAOCreateNestedManyWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCreateNestedManyWithoutWordsInputFromJson(json);

  final Iterable<DictionariesDAOCreateWithoutWordsInput>? create;

  final Iterable<DictionariesDAOCreateOrConnectWithoutWordsInput>?
      connectOrCreate;

  final Iterable<DictionariesDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCreateNestedManyWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOCreateNestedManyWithoutWordsInput
    implements _i1.JsonSerializable {
  const KanjiDAOCreateNestedManyWithoutWordsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory KanjiDAOCreateNestedManyWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOCreateNestedManyWithoutWordsInputFromJson(json);

  final Iterable<KanjiDAOCreateWithoutWordsInput>? create;

  final Iterable<KanjiDAOCreateOrConnectWithoutWordsInput>? connectOrCreate;

  final Iterable<KanjiDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOCreateNestedManyWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedCreateNestedManyWithoutWordsInputFromJson(json);

  final Iterable<DictionariesDAOCreateWithoutWordsInput>? create;

  final Iterable<DictionariesDAOCreateOrConnectWithoutWordsInput>?
      connectOrCreate;

  final Iterable<DictionariesDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedCreateNestedManyWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedCreateNestedManyWithoutWordsInput
    implements _i1.JsonSerializable {
  const KanjiDAOUncheckedCreateNestedManyWithoutWordsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory KanjiDAOUncheckedCreateNestedManyWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedCreateNestedManyWithoutWordsInputFromJson(json);

  final Iterable<KanjiDAOCreateWithoutWordsInput>? create;

  final Iterable<KanjiDAOCreateOrConnectWithoutWordsInput>? connectOrCreate;

  final Iterable<KanjiDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUncheckedCreateNestedManyWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateManyWithoutWordsNestedInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUpdateManyWithoutWordsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory DictionariesDAOUpdateManyWithoutWordsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateManyWithoutWordsNestedInputFromJson(json);

  final Iterable<DictionariesDAOCreateWithoutWordsInput>? create;

  final Iterable<DictionariesDAOCreateOrConnectWithoutWordsInput>?
      connectOrCreate;

  final Iterable<DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput>? upsert;

  final Iterable<DictionariesDAOWhereUniqueInput>? set;

  final Iterable<DictionariesDAOWhereUniqueInput>? disconnect;

  final Iterable<DictionariesDAOWhereUniqueInput>? delete;

  final Iterable<DictionariesDAOWhereUniqueInput>? connect;

  final Iterable<DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput>? update;

  final Iterable<DictionariesDAOUpdateManyWithWhereWithoutWordsInput>?
      updateMany;

  final Iterable<DictionariesDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateManyWithoutWordsNestedInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpdateManyWithoutWordsNestedInput
    implements _i1.JsonSerializable {
  const KanjiDAOUpdateManyWithoutWordsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory KanjiDAOUpdateManyWithoutWordsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUpdateManyWithoutWordsNestedInputFromJson(json);

  final Iterable<KanjiDAOCreateWithoutWordsInput>? create;

  final Iterable<KanjiDAOCreateOrConnectWithoutWordsInput>? connectOrCreate;

  final Iterable<KanjiDAOUpsertWithWhereUniqueWithoutWordsInput>? upsert;

  final Iterable<KanjiDAOWhereUniqueInput>? set;

  final Iterable<KanjiDAOWhereUniqueInput>? disconnect;

  final Iterable<KanjiDAOWhereUniqueInput>? delete;

  final Iterable<KanjiDAOWhereUniqueInput>? connect;

  final Iterable<KanjiDAOUpdateWithWhereUniqueWithoutWordsInput>? update;

  final Iterable<KanjiDAOUpdateManyWithWhereWithoutWordsInput>? updateMany;

  final Iterable<KanjiDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUpdateManyWithoutWordsNestedInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInputFromJson(json);

  final Iterable<DictionariesDAOCreateWithoutWordsInput>? create;

  final Iterable<DictionariesDAOCreateOrConnectWithoutWordsInput>?
      connectOrCreate;

  final Iterable<DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput>? upsert;

  final Iterable<DictionariesDAOWhereUniqueInput>? set;

  final Iterable<DictionariesDAOWhereUniqueInput>? disconnect;

  final Iterable<DictionariesDAOWhereUniqueInput>? delete;

  final Iterable<DictionariesDAOWhereUniqueInput>? connect;

  final Iterable<DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput>? update;

  final Iterable<DictionariesDAOUpdateManyWithWhereWithoutWordsInput>?
      updateMany;

  final Iterable<DictionariesDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput
    implements _i1.JsonSerializable {
  const KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedUpdateManyWithoutWordsNestedInputFromJson(json);

  final Iterable<KanjiDAOCreateWithoutWordsInput>? create;

  final Iterable<KanjiDAOCreateOrConnectWithoutWordsInput>? connectOrCreate;

  final Iterable<KanjiDAOUpsertWithWhereUniqueWithoutWordsInput>? upsert;

  final Iterable<KanjiDAOWhereUniqueInput>? set;

  final Iterable<KanjiDAOWhereUniqueInput>? disconnect;

  final Iterable<KanjiDAOWhereUniqueInput>? delete;

  final Iterable<KanjiDAOWhereUniqueInput>? connect;

  final Iterable<KanjiDAOUpdateWithWhereUniqueWithoutWordsInput>? update;

  final Iterable<KanjiDAOUpdateManyWithWhereWithoutWordsInput>? updateMany;

  final Iterable<KanjiDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUncheckedUpdateManyWithoutWordsNestedInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateNestedManyWithoutTextsInput
    implements _i1.JsonSerializable {
  const UsersDAOCreateNestedManyWithoutTextsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UsersDAOCreateNestedManyWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOCreateNestedManyWithoutTextsInputFromJson(json);

  final Iterable<UsersDAOCreateWithoutTextsInput>? create;

  final Iterable<UsersDAOCreateOrConnectWithoutTextsInput>? connectOrCreate;

  final Iterable<UsersDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCreateNestedManyWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedCreateNestedManyWithoutTextsInput
    implements _i1.JsonSerializable {
  const UsersDAOUncheckedCreateNestedManyWithoutTextsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UsersDAOUncheckedCreateNestedManyWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedCreateNestedManyWithoutTextsInputFromJson(json);

  final Iterable<UsersDAOCreateWithoutTextsInput>? create;

  final Iterable<UsersDAOCreateOrConnectWithoutTextsInput>? connectOrCreate;

  final Iterable<UsersDAOWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedCreateNestedManyWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateManyWithoutTextsNestedInput
    implements _i1.JsonSerializable {
  const UsersDAOUpdateManyWithoutTextsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory UsersDAOUpdateManyWithoutTextsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpdateManyWithoutTextsNestedInputFromJson(json);

  final Iterable<UsersDAOCreateWithoutTextsInput>? create;

  final Iterable<UsersDAOCreateOrConnectWithoutTextsInput>? connectOrCreate;

  final Iterable<UsersDAOUpsertWithWhereUniqueWithoutTextsInput>? upsert;

  final Iterable<UsersDAOWhereUniqueInput>? set;

  final Iterable<UsersDAOWhereUniqueInput>? disconnect;

  final Iterable<UsersDAOWhereUniqueInput>? delete;

  final Iterable<UsersDAOWhereUniqueInput>? connect;

  final Iterable<UsersDAOUpdateWithWhereUniqueWithoutTextsInput>? update;

  final Iterable<UsersDAOUpdateManyWithWhereWithoutTextsInput>? updateMany;

  final Iterable<UsersDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateManyWithoutTextsNestedInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedUpdateManyWithoutTextsNestedInput
    implements _i1.JsonSerializable {
  const UsersDAOUncheckedUpdateManyWithoutTextsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory UsersDAOUncheckedUpdateManyWithoutTextsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedUpdateManyWithoutTextsNestedInputFromJson(json);

  final Iterable<UsersDAOCreateWithoutTextsInput>? create;

  final Iterable<UsersDAOCreateOrConnectWithoutTextsInput>? connectOrCreate;

  final Iterable<UsersDAOUpsertWithWhereUniqueWithoutTextsInput>? upsert;

  final Iterable<UsersDAOWhereUniqueInput>? set;

  final Iterable<UsersDAOWhereUniqueInput>? disconnect;

  final Iterable<UsersDAOWhereUniqueInput>? delete;

  final Iterable<UsersDAOWhereUniqueInput>? connect;

  final Iterable<UsersDAOUpdateWithWhereUniqueWithoutTextsInput>? update;

  final Iterable<UsersDAOUpdateManyWithWhereWithoutTextsInput>? updateMany;

  final Iterable<UsersDAOScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedUpdateManyWithoutTextsNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedEnumRoleFilter implements _i1.JsonSerializable {
  const NestedEnumRoleFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  factory NestedEnumRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedEnumRoleFilterFromJson(json);

  final Role? equals;

  @JsonKey(name: r'in')
  final Iterable<Role>? $in;

  final Iterable<Role>? notIn;

  final Role? not;

  @override
  Map<String, dynamic> toJson() => _$NestedEnumRoleFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedEnumRoleWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedEnumRoleWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedEnumRoleWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedEnumRoleWithAggregatesFilterFromJson(json);

  final Role? equals;

  @JsonKey(name: r'in')
  final Iterable<Role>? $in;

  final Iterable<Role>? notIn;

  final Role? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedEnumRoleFilter? $min;

  @JsonKey(name: r'_max')
  final NestedEnumRoleFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedEnumRoleWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateWithoutOwnerInput implements _i1.JsonSerializable {
  const DictionariesDAOCreateWithoutOwnerInput({
    this.id,
    required this.title,
    this.words,
  });

  factory DictionariesDAOCreateWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCreateWithoutOwnerInputFromJson(json);

  final String? id;

  final String title;

  final WordsDAOCreateNestedManyWithoutDictsInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCreateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedCreateWithoutOwnerInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedCreateWithoutOwnerInput({
    this.id,
    required this.title,
    this.words,
  });

  factory DictionariesDAOUncheckedCreateWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedCreateWithoutOwnerInputFromJson(json);

  final String? id;

  final String title;

  final WordsDAOUncheckedCreateNestedManyWithoutDictsInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedCreateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateOrConnectWithoutOwnerInput
    implements _i1.JsonSerializable {
  const DictionariesDAOCreateOrConnectWithoutOwnerInput({
    required this.where,
    required this.create,
  });

  factory DictionariesDAOCreateOrConnectWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCreateOrConnectWithoutOwnerInputFromJson(json);

  final DictionariesDAOWhereUniqueInput where;

  final DictionariesDAOCreateWithoutOwnerInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCreateOrConnectWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOCreateWithoutReadersInput implements _i1.JsonSerializable {
  const TextsDAOCreateWithoutReadersInput({
    this.id,
    required this.title,
    required this.text,
  });

  factory TextsDAOCreateWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOCreateWithoutReadersInputFromJson(json);

  final String? id;

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOCreateWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedCreateWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOUncheckedCreateWithoutReadersInput({
    this.id,
    required this.title,
    required this.text,
  });

  factory TextsDAOUncheckedCreateWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUncheckedCreateWithoutReadersInputFromJson(json);

  final String? id;

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUncheckedCreateWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOCreateOrConnectWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOCreateOrConnectWithoutReadersInput({
    required this.where,
    required this.create,
  });

  factory TextsDAOCreateOrConnectWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOCreateOrConnectWithoutReadersInputFromJson(json);

  final TextsDAOWhereUniqueInput where;

  final TextsDAOCreateWithoutReadersInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOCreateOrConnectWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpsertWithoutOwnerInput implements _i1.JsonSerializable {
  const DictionariesDAOUpsertWithoutOwnerInput({
    required this.update,
    required this.create,
  });

  factory DictionariesDAOUpsertWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpsertWithoutOwnerInputFromJson(json);

  final DictionariesDAOUpdateWithoutOwnerInput update;

  final DictionariesDAOCreateWithoutOwnerInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpsertWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateWithoutOwnerInput implements _i1.JsonSerializable {
  const DictionariesDAOUpdateWithoutOwnerInput({
    this.id,
    this.title,
    this.words,
  });

  factory DictionariesDAOUpdateWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateWithoutOwnerInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final WordsDAOUpdateManyWithoutDictsNestedInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateWithoutOwnerInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateWithoutOwnerInput({
    this.id,
    this.title,
    this.words,
  });

  factory DictionariesDAOUncheckedUpdateWithoutOwnerInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateWithoutOwnerInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final WordsDAOUncheckedUpdateManyWithoutDictsNestedInput? words;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateWithoutOwnerInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpsertWithWhereUniqueWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOUpsertWithWhereUniqueWithoutReadersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory TextsDAOUpsertWithWhereUniqueWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUpsertWithWhereUniqueWithoutReadersInputFromJson(json);

  final TextsDAOWhereUniqueInput where;

  final TextsDAOUpdateWithoutReadersInput update;

  final TextsDAOCreateWithoutReadersInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUpsertWithWhereUniqueWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpdateWithWhereUniqueWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOUpdateWithWhereUniqueWithoutReadersInput({
    required this.where,
    required this.data,
  });

  factory TextsDAOUpdateWithWhereUniqueWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUpdateWithWhereUniqueWithoutReadersInputFromJson(json);

  final TextsDAOWhereUniqueInput where;

  final TextsDAOUpdateWithoutReadersInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUpdateWithWhereUniqueWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpdateManyWithWhereWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOUpdateManyWithWhereWithoutReadersInput({
    required this.where,
    required this.data,
  });

  factory TextsDAOUpdateManyWithWhereWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUpdateManyWithWhereWithoutReadersInputFromJson(json);

  final TextsDAOScalarWhereInput where;

  final TextsDAOUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUpdateManyWithWhereWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOScalarWhereInput implements _i1.JsonSerializable {
  const TextsDAOScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOScalarWhereInputFromJson(json);

  final Iterable<TextsDAOScalarWhereInput>? AND;

  final Iterable<TextsDAOScalarWhereInput>? OR;

  final Iterable<TextsDAOScalarWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? title;

  final StringFilter? text;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateWithoutKanjisInput implements _i1.JsonSerializable {
  const WordsDAOCreateWithoutKanjisInput({
    required this.word,
    required this.translation,
    required this.reading,
    this.dicts,
  });

  factory WordsDAOCreateWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOCreateWithoutKanjisInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  final DictionariesDAOCreateNestedManyWithoutWordsInput? dicts;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCreateWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedCreateWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedCreateWithoutKanjisInput({
    required this.word,
    required this.translation,
    required this.reading,
    this.dicts,
  });

  factory WordsDAOUncheckedCreateWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedCreateWithoutKanjisInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  final DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput? dicts;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedCreateWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateOrConnectWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOCreateOrConnectWithoutKanjisInput({
    required this.where,
    required this.create,
  });

  factory WordsDAOCreateOrConnectWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOCreateOrConnectWithoutKanjisInputFromJson(json);

  final WordsDAOWhereUniqueInput where;

  final WordsDAOCreateWithoutKanjisInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCreateOrConnectWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpsertWithWhereUniqueWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOUpsertWithWhereUniqueWithoutKanjisInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory WordsDAOUpsertWithWhereUniqueWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpsertWithWhereUniqueWithoutKanjisInputFromJson(json);

  final WordsDAOWhereUniqueInput where;

  final WordsDAOUpdateWithoutKanjisInput update;

  final WordsDAOCreateWithoutKanjisInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpsertWithWhereUniqueWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateWithWhereUniqueWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOUpdateWithWhereUniqueWithoutKanjisInput({
    required this.where,
    required this.data,
  });

  factory WordsDAOUpdateWithWhereUniqueWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateWithWhereUniqueWithoutKanjisInputFromJson(json);

  final WordsDAOWhereUniqueInput where;

  final WordsDAOUpdateWithoutKanjisInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateWithWhereUniqueWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateManyWithWhereWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOUpdateManyWithWhereWithoutKanjisInput({
    required this.where,
    required this.data,
  });

  factory WordsDAOUpdateManyWithWhereWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateManyWithWhereWithoutKanjisInputFromJson(json);

  final WordsDAOScalarWhereInput where;

  final WordsDAOUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateManyWithWhereWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOScalarWhereInput implements _i1.JsonSerializable {
  const WordsDAOScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOScalarWhereInputFromJson(json);

  final Iterable<WordsDAOScalarWhereInput>? AND;

  final Iterable<WordsDAOScalarWhereInput>? OR;

  final Iterable<WordsDAOScalarWhereInput>? NOT;

  final StringFilter? word;

  final StringFilter? translation;

  final StringFilter? reading;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateWithoutDictionaryInput implements _i1.JsonSerializable {
  const UsersDAOCreateWithoutDictionaryInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
    this.texts,
  });

  factory UsersDAOCreateWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOCreateWithoutDictionaryInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  final TextsDAOCreateNestedManyWithoutReadersInput? texts;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCreateWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedCreateWithoutDictionaryInput
    implements _i1.JsonSerializable {
  const UsersDAOUncheckedCreateWithoutDictionaryInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
    this.texts,
  });

  factory UsersDAOUncheckedCreateWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedCreateWithoutDictionaryInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  final TextsDAOUncheckedCreateNestedManyWithoutReadersInput? texts;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedCreateWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateOrConnectWithoutDictionaryInput
    implements _i1.JsonSerializable {
  const UsersDAOCreateOrConnectWithoutDictionaryInput({
    required this.where,
    required this.create,
  });

  factory UsersDAOCreateOrConnectWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOCreateOrConnectWithoutDictionaryInputFromJson(json);

  final UsersDAOWhereUniqueInput where;

  final UsersDAOCreateWithoutDictionaryInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCreateOrConnectWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateWithoutDictsInput implements _i1.JsonSerializable {
  const WordsDAOCreateWithoutDictsInput({
    required this.word,
    required this.translation,
    required this.reading,
    this.kanjis,
  });

  factory WordsDAOCreateWithoutDictsInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOCreateWithoutDictsInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  final KanjiDAOCreateNestedManyWithoutWordsInput? kanjis;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCreateWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedCreateWithoutDictsInput implements _i1.JsonSerializable {
  const WordsDAOUncheckedCreateWithoutDictsInput({
    required this.word,
    required this.translation,
    required this.reading,
    this.kanjis,
  });

  factory WordsDAOUncheckedCreateWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedCreateWithoutDictsInputFromJson(json);

  final String word;

  final String translation;

  final String reading;

  final KanjiDAOUncheckedCreateNestedManyWithoutWordsInput? kanjis;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedCreateWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOCreateOrConnectWithoutDictsInput implements _i1.JsonSerializable {
  const WordsDAOCreateOrConnectWithoutDictsInput({
    required this.where,
    required this.create,
  });

  factory WordsDAOCreateOrConnectWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOCreateOrConnectWithoutDictsInputFromJson(json);

  final WordsDAOWhereUniqueInput where;

  final WordsDAOCreateWithoutDictsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOCreateOrConnectWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpsertWithoutDictionaryInput implements _i1.JsonSerializable {
  const UsersDAOUpsertWithoutDictionaryInput({
    required this.update,
    required this.create,
  });

  factory UsersDAOUpsertWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpsertWithoutDictionaryInputFromJson(json);

  final UsersDAOUpdateWithoutDictionaryInput update;

  final UsersDAOCreateWithoutDictionaryInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpsertWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateWithoutDictionaryInput implements _i1.JsonSerializable {
  const UsersDAOUpdateWithoutDictionaryInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.texts,
  });

  factory UsersDAOUpdateWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpdateWithoutDictionaryInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  final TextsDAOUpdateManyWithoutReadersNestedInput? texts;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedUpdateWithoutDictionaryInput
    implements _i1.JsonSerializable {
  const UsersDAOUncheckedUpdateWithoutDictionaryInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.texts,
  });

  factory UsersDAOUncheckedUpdateWithoutDictionaryInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedUpdateWithoutDictionaryInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  final TextsDAOUncheckedUpdateManyWithoutReadersNestedInput? texts;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedUpdateWithoutDictionaryInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpsertWithWhereUniqueWithoutDictsInput
    implements _i1.JsonSerializable {
  const WordsDAOUpsertWithWhereUniqueWithoutDictsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory WordsDAOUpsertWithWhereUniqueWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpsertWithWhereUniqueWithoutDictsInputFromJson(json);

  final WordsDAOWhereUniqueInput where;

  final WordsDAOUpdateWithoutDictsInput update;

  final WordsDAOCreateWithoutDictsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpsertWithWhereUniqueWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateWithWhereUniqueWithoutDictsInput
    implements _i1.JsonSerializable {
  const WordsDAOUpdateWithWhereUniqueWithoutDictsInput({
    required this.where,
    required this.data,
  });

  factory WordsDAOUpdateWithWhereUniqueWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateWithWhereUniqueWithoutDictsInputFromJson(json);

  final WordsDAOWhereUniqueInput where;

  final WordsDAOUpdateWithoutDictsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateWithWhereUniqueWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateManyWithWhereWithoutDictsInput
    implements _i1.JsonSerializable {
  const WordsDAOUpdateManyWithWhereWithoutDictsInput({
    required this.where,
    required this.data,
  });

  factory WordsDAOUpdateManyWithWhereWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateManyWithWhereWithoutDictsInputFromJson(json);

  final WordsDAOScalarWhereInput where;

  final WordsDAOUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateManyWithWhereWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateWithoutWordsInput implements _i1.JsonSerializable {
  const DictionariesDAOCreateWithoutWordsInput({
    this.id,
    required this.title,
    required this.owner,
  });

  factory DictionariesDAOCreateWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCreateWithoutWordsInputFromJson(json);

  final String? id;

  final String title;

  final UsersDAOCreateNestedOneWithoutDictionaryInput owner;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCreateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedCreateWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedCreateWithoutWordsInput({
    this.id,
    required this.title,
    required this.ownerId,
  });

  factory DictionariesDAOUncheckedCreateWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedCreateWithoutWordsInputFromJson(json);

  final String? id;

  final String title;

  @JsonKey(name: r'owner_id')
  final String ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedCreateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOCreateOrConnectWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOCreateOrConnectWithoutWordsInput({
    required this.where,
    required this.create,
  });

  factory DictionariesDAOCreateOrConnectWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOCreateOrConnectWithoutWordsInputFromJson(json);

  final DictionariesDAOWhereUniqueInput where;

  final DictionariesDAOCreateWithoutWordsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOCreateOrConnectWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOCreateWithoutWordsInput implements _i1.JsonSerializable {
  const KanjiDAOCreateWithoutWordsInput({
    required this.glyph,
    required this.onyoumi,
    required this.kunyoumi,
    required this.meaning,
  });

  factory KanjiDAOCreateWithoutWordsInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOCreateWithoutWordsInputFromJson(json);

  final String glyph;

  final String onyoumi;

  final String kunyoumi;

  final String meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOCreateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedCreateWithoutWordsInput implements _i1.JsonSerializable {
  const KanjiDAOUncheckedCreateWithoutWordsInput({
    required this.glyph,
    required this.onyoumi,
    required this.kunyoumi,
    required this.meaning,
  });

  factory KanjiDAOUncheckedCreateWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedCreateWithoutWordsInputFromJson(json);

  final String glyph;

  final String onyoumi;

  final String kunyoumi;

  final String meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUncheckedCreateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOCreateOrConnectWithoutWordsInput implements _i1.JsonSerializable {
  const KanjiDAOCreateOrConnectWithoutWordsInput({
    required this.where,
    required this.create,
  });

  factory KanjiDAOCreateOrConnectWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOCreateOrConnectWithoutWordsInputFromJson(json);

  final KanjiDAOWhereUniqueInput where;

  final KanjiDAOCreateWithoutWordsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOCreateOrConnectWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpsertWithWhereUniqueWithoutWordsInputFromJson(json);

  final DictionariesDAOWhereUniqueInput where;

  final DictionariesDAOUpdateWithoutWordsInput update;

  final DictionariesDAOCreateWithoutWordsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpsertWithWhereUniqueWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput({
    required this.where,
    required this.data,
  });

  factory DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateWithWhereUniqueWithoutWordsInputFromJson(json);

  final DictionariesDAOWhereUniqueInput where;

  final DictionariesDAOUpdateWithoutWordsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateWithWhereUniqueWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateManyWithWhereWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUpdateManyWithWhereWithoutWordsInput({
    required this.where,
    required this.data,
  });

  factory DictionariesDAOUpdateManyWithWhereWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateManyWithWhereWithoutWordsInputFromJson(json);

  final DictionariesDAOScalarWhereInput where;

  final DictionariesDAOUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateManyWithWhereWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOScalarWhereInput implements _i1.JsonSerializable {
  const DictionariesDAOScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOScalarWhereInputFromJson(json);

  final Iterable<DictionariesDAOScalarWhereInput>? AND;

  final Iterable<DictionariesDAOScalarWhereInput>? OR;

  final Iterable<DictionariesDAOScalarWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? title;

  @JsonKey(name: r'owner_id')
  final StringFilter? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpsertWithWhereUniqueWithoutWordsInput
    implements _i1.JsonSerializable {
  const KanjiDAOUpsertWithWhereUniqueWithoutWordsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory KanjiDAOUpsertWithWhereUniqueWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUpsertWithWhereUniqueWithoutWordsInputFromJson(json);

  final KanjiDAOWhereUniqueInput where;

  final KanjiDAOUpdateWithoutWordsInput update;

  final KanjiDAOCreateWithoutWordsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUpsertWithWhereUniqueWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpdateWithWhereUniqueWithoutWordsInput
    implements _i1.JsonSerializable {
  const KanjiDAOUpdateWithWhereUniqueWithoutWordsInput({
    required this.where,
    required this.data,
  });

  factory KanjiDAOUpdateWithWhereUniqueWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUpdateWithWhereUniqueWithoutWordsInputFromJson(json);

  final KanjiDAOWhereUniqueInput where;

  final KanjiDAOUpdateWithoutWordsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUpdateWithWhereUniqueWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpdateManyWithWhereWithoutWordsInput
    implements _i1.JsonSerializable {
  const KanjiDAOUpdateManyWithWhereWithoutWordsInput({
    required this.where,
    required this.data,
  });

  factory KanjiDAOUpdateManyWithWhereWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUpdateManyWithWhereWithoutWordsInputFromJson(json);

  final KanjiDAOScalarWhereInput where;

  final KanjiDAOUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUpdateManyWithWhereWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOScalarWhereInput implements _i1.JsonSerializable {
  const KanjiDAOScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOScalarWhereInputFromJson(json);

  final Iterable<KanjiDAOScalarWhereInput>? AND;

  final Iterable<KanjiDAOScalarWhereInput>? OR;

  final Iterable<KanjiDAOScalarWhereInput>? NOT;

  final StringFilter? glyph;

  final StringFilter? onyoumi;

  final StringFilter? kunyoumi;

  final StringFilter? meaning;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateWithoutTextsInput implements _i1.JsonSerializable {
  const UsersDAOCreateWithoutTextsInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
    this.dictionary,
  });

  factory UsersDAOCreateWithoutTextsInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOCreateWithoutTextsInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  final DictionariesDAOCreateNestedOneWithoutOwnerInput? dictionary;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCreateWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedCreateWithoutTextsInput implements _i1.JsonSerializable {
  const UsersDAOUncheckedCreateWithoutTextsInput({
    this.id,
    required this.accountName,
    required this.password,
    required this.role,
    this.dictionary,
  });

  factory UsersDAOUncheckedCreateWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedCreateWithoutTextsInputFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  final DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput? dictionary;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedCreateWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOCreateOrConnectWithoutTextsInput implements _i1.JsonSerializable {
  const UsersDAOCreateOrConnectWithoutTextsInput({
    required this.where,
    required this.create,
  });

  factory UsersDAOCreateOrConnectWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOCreateOrConnectWithoutTextsInputFromJson(json);

  final UsersDAOWhereUniqueInput where;

  final UsersDAOCreateWithoutTextsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOCreateOrConnectWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpsertWithWhereUniqueWithoutTextsInput
    implements _i1.JsonSerializable {
  const UsersDAOUpsertWithWhereUniqueWithoutTextsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory UsersDAOUpsertWithWhereUniqueWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpsertWithWhereUniqueWithoutTextsInputFromJson(json);

  final UsersDAOWhereUniqueInput where;

  final UsersDAOUpdateWithoutTextsInput update;

  final UsersDAOCreateWithoutTextsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpsertWithWhereUniqueWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateWithWhereUniqueWithoutTextsInput
    implements _i1.JsonSerializable {
  const UsersDAOUpdateWithWhereUniqueWithoutTextsInput({
    required this.where,
    required this.data,
  });

  factory UsersDAOUpdateWithWhereUniqueWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpdateWithWhereUniqueWithoutTextsInputFromJson(json);

  final UsersDAOWhereUniqueInput where;

  final UsersDAOUpdateWithoutTextsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateWithWhereUniqueWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateManyWithWhereWithoutTextsInput
    implements _i1.JsonSerializable {
  const UsersDAOUpdateManyWithWhereWithoutTextsInput({
    required this.where,
    required this.data,
  });

  factory UsersDAOUpdateManyWithWhereWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUpdateManyWithWhereWithoutTextsInputFromJson(json);

  final UsersDAOScalarWhereInput where;

  final UsersDAOUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateManyWithWhereWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOScalarWhereInput implements _i1.JsonSerializable {
  const UsersDAOScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOScalarWhereInputFromJson(json);

  final Iterable<UsersDAOScalarWhereInput>? AND;

  final Iterable<UsersDAOScalarWhereInput>? OR;

  final Iterable<UsersDAOScalarWhereInput>? NOT;

  final StringFilter? id;

  @JsonKey(name: r'account_name')
  final StringFilter? accountName;

  final StringFilter? password;

  final EnumRoleFilter? role;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUpdateWithoutReadersInput implements _i1.JsonSerializable {
  const TextsDAOUpdateWithoutReadersInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOUpdateWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUpdateWithoutReadersInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUpdateWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedUpdateWithoutReadersInput
    implements _i1.JsonSerializable {
  const TextsDAOUncheckedUpdateWithoutReadersInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOUncheckedUpdateWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUncheckedUpdateWithoutReadersInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUncheckedUpdateWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class TextsDAOUncheckedUpdateManyWithoutTextsInput
    implements _i1.JsonSerializable {
  const TextsDAOUncheckedUpdateManyWithoutTextsInput({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOUncheckedUpdateManyWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TextsDAOUncheckedUpdateManyWithoutTextsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? text;

  @override
  Map<String, dynamic> toJson() =>
      _$TextsDAOUncheckedUpdateManyWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateWithoutKanjisInput implements _i1.JsonSerializable {
  const WordsDAOUpdateWithoutKanjisInput({
    this.word,
    this.translation,
    this.reading,
    this.dicts,
  });

  factory WordsDAOUpdateWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUpdateWithoutKanjisInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  final DictionariesDAOUpdateManyWithoutWordsNestedInput? dicts;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateWithoutKanjisInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateWithoutKanjisInput({
    this.word,
    this.translation,
    this.reading,
    this.dicts,
  });

  factory WordsDAOUncheckedUpdateWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateWithoutKanjisInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  final DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput? dicts;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedUpdateWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateManyWithoutWordsInput
    implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateManyWithoutWordsInput({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOUncheckedUpdateManyWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateManyWithoutWordsInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedUpdateManyWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUpdateWithoutDictsInput implements _i1.JsonSerializable {
  const WordsDAOUpdateWithoutDictsInput({
    this.word,
    this.translation,
    this.reading,
    this.kanjis,
  });

  factory WordsDAOUpdateWithoutDictsInput.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOUpdateWithoutDictsInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  final KanjiDAOUpdateManyWithoutWordsNestedInput? kanjis;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUpdateWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class WordsDAOUncheckedUpdateWithoutDictsInput implements _i1.JsonSerializable {
  const WordsDAOUncheckedUpdateWithoutDictsInput({
    this.word,
    this.translation,
    this.reading,
    this.kanjis,
  });

  factory WordsDAOUncheckedUpdateWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$WordsDAOUncheckedUpdateWithoutDictsInputFromJson(json);

  final StringFieldUpdateOperationsInput? word;

  final StringFieldUpdateOperationsInput? translation;

  final StringFieldUpdateOperationsInput? reading;

  final KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput? kanjis;

  @override
  Map<String, dynamic> toJson() =>
      _$WordsDAOUncheckedUpdateWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUpdateWithoutWordsInput implements _i1.JsonSerializable {
  const DictionariesDAOUpdateWithoutWordsInput({
    this.id,
    this.title,
    this.owner,
  });

  factory DictionariesDAOUpdateWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUpdateWithoutWordsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput? owner;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUpdateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateWithoutWordsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateWithoutWordsInput({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOUncheckedUpdateWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateWithoutWordsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'owner_id')
  final StringFieldUpdateOperationsInput? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOUncheckedUpdateManyWithoutDictsInput
    implements _i1.JsonSerializable {
  const DictionariesDAOUncheckedUpdateManyWithoutDictsInput({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOUncheckedUpdateManyWithoutDictsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOUncheckedUpdateManyWithoutDictsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  @JsonKey(name: r'owner_id')
  final StringFieldUpdateOperationsInput? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOUncheckedUpdateManyWithoutDictsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUpdateWithoutWordsInput implements _i1.JsonSerializable {
  const KanjiDAOUpdateWithoutWordsInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOUpdateWithoutWordsInput.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOUpdateWithoutWordsInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUpdateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedUpdateWithoutWordsInput implements _i1.JsonSerializable {
  const KanjiDAOUncheckedUpdateWithoutWordsInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOUncheckedUpdateWithoutWordsInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedUpdateWithoutWordsInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUncheckedUpdateWithoutWordsInputToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOUncheckedUpdateManyWithoutKanjisInput
    implements _i1.JsonSerializable {
  const KanjiDAOUncheckedUpdateManyWithoutKanjisInput({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOUncheckedUpdateManyWithoutKanjisInput.fromJson(
          Map<String, dynamic> json) =>
      _$KanjiDAOUncheckedUpdateManyWithoutKanjisInputFromJson(json);

  final StringFieldUpdateOperationsInput? glyph;

  final StringFieldUpdateOperationsInput? onyoumi;

  final StringFieldUpdateOperationsInput? kunyoumi;

  final StringFieldUpdateOperationsInput? meaning;

  @override
  Map<String, dynamic> toJson() =>
      _$KanjiDAOUncheckedUpdateManyWithoutKanjisInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUpdateWithoutTextsInput implements _i1.JsonSerializable {
  const UsersDAOUpdateWithoutTextsInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.dictionary,
  });

  factory UsersDAOUpdateWithoutTextsInput.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOUpdateWithoutTextsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  final DictionariesDAOUpdateOneWithoutOwnerNestedInput? dictionary;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUpdateWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedUpdateWithoutTextsInput implements _i1.JsonSerializable {
  const UsersDAOUncheckedUpdateWithoutTextsInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
    this.dictionary,
  });

  factory UsersDAOUncheckedUpdateWithoutTextsInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedUpdateWithoutTextsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  final DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput? dictionary;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedUpdateWithoutTextsInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAOUncheckedUpdateManyWithoutReadersInput
    implements _i1.JsonSerializable {
  const UsersDAOUncheckedUpdateManyWithoutReadersInput({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOUncheckedUpdateManyWithoutReadersInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersDAOUncheckedUpdateManyWithoutReadersInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  @JsonKey(name: r'account_name')
  final StringFieldUpdateOperationsInput? accountName;

  final StringFieldUpdateOperationsInput? password;

  final Role? role;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersDAOUncheckedUpdateManyWithoutReadersInputToJson(this);
}

@_i1.jsonSerializable
class UsersDAO implements _i1.JsonSerializable {
  const UsersDAO({
    required this.id,
    required this.accountName,
    required this.password,
    required this.role,
  });

  factory UsersDAO.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOFromJson(json);

  final String id;

  @JsonKey(name: r'account_name')
  final String accountName;

  final String password;

  final Role role;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOToJson(this);
}

@_i1.jsonSerializable
class KanjiDAO implements _i1.JsonSerializable {
  const KanjiDAO({
    required this.glyph,
    required this.onyoumi,
    required this.kunyoumi,
    required this.meaning,
  });

  factory KanjiDAO.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOFromJson(json);

  final String glyph;

  final String onyoumi;

  final String kunyoumi;

  final String meaning;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAO implements _i1.JsonSerializable {
  const DictionariesDAO({
    required this.id,
    required this.title,
    required this.ownerId,
  });

  factory DictionariesDAO.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDAOFromJson(json);

  final String id;

  final String title;

  @JsonKey(name: r'owner_id')
  final String ownerId;

  @override
  Map<String, dynamic> toJson() => _$DictionariesDAOToJson(this);
}

@_i1.jsonSerializable
class WordsDAO implements _i1.JsonSerializable {
  const WordsDAO({
    required this.word,
    required this.translation,
    required this.reading,
  });

  factory WordsDAO.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOFromJson(json);

  final String word;

  final String translation;

  final String reading;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOToJson(this);
}

@_i1.jsonSerializable
class TextsDAO implements _i1.JsonSerializable {
  const TextsDAO({
    required this.id,
    required this.title,
    required this.text,
  });

  factory TextsDAO.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOFromJson(json);

  final String id;

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOToJson(this);
}

class UsersDAOFluent<T> extends _i1.PrismaFluent<T> {
  const UsersDAOFluent(
    super.original,
    super.$query,
  );

  DictionariesDAOFluent<DictionariesDAO?> dictionary() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dictionary',
          fields: fields,
        )
      ]),
      key: r'dictionary',
    );
    final future =
        query(DictionariesDAOScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
                : null);
    return DictionariesDAOFluent<DictionariesDAO?>(
      future,
      query,
    );
  }

  Future<Iterable<TextsDAO>?> texts({
    TextsDAOWhereInput? where,
    Iterable<TextsDAOOrderByWithRelationInput>? orderBy,
    TextsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TextsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'texts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'texts',
    );
    final fields = TextsDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> texts) =>
        texts.map((Map texts) => TextsDAO.fromJson(texts.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UsersDAOCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UsersDAOCountOutputType(query);
  }
}

class KanjiDAOFluent<T> extends _i1.PrismaFluent<T> {
  const KanjiDAOFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<WordsDAO>?> words({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithRelationInput>? orderBy,
    WordsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<WordsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'words',
          fields: fields,
          args: args,
        )
      ]),
      key: r'words',
    );
    final fields = WordsDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> words) =>
        words.map((Map words) => WordsDAO.fromJson(words.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  KanjiDAOCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return KanjiDAOCountOutputType(query);
  }
}

class DictionariesDAOFluent<T> extends _i1.PrismaFluent<T> {
  const DictionariesDAOFluent(
    super.original,
    super.$query,
  );

  UsersDAOFluent<UsersDAO> owner() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'owner',
          fields: fields,
        )
      ]),
      key: r'owner',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: UsersDAO)'));
    return UsersDAOFluent<UsersDAO>(
      future,
      query,
    );
  }

  Future<Iterable<WordsDAO>?> words({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithRelationInput>? orderBy,
    WordsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<WordsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'words',
          fields: fields,
          args: args,
        )
      ]),
      key: r'words',
    );
    final fields = WordsDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> words) =>
        words.map((Map words) => WordsDAO.fromJson(words.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  DictionariesDAOCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return DictionariesDAOCountOutputType(query);
  }
}

class WordsDAOFluent<T> extends _i1.PrismaFluent<T> {
  const WordsDAOFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<DictionariesDAO>?> dicts({
    DictionariesDAOWhereInput? where,
    Iterable<DictionariesDAOOrderByWithRelationInput>? orderBy,
    DictionariesDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DictionariesDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dicts',
          fields: fields,
          args: args,
        )
      ]),
      key: r'dicts',
    );
    final fields = DictionariesDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> dicts) =>
        dicts.map((Map dicts) => DictionariesDAO.fromJson(dicts.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  Future<Iterable<KanjiDAO>?> kanjis({
    KanjiDAOWhereInput? where,
    Iterable<KanjiDAOOrderByWithRelationInput>? orderBy,
    KanjiDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<KanjiDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'kanjis',
          fields: fields,
          args: args,
        )
      ]),
      key: r'kanjis',
    );
    final fields = KanjiDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> kanjis) =>
        kanjis.map((Map kanjis) => KanjiDAO.fromJson(kanjis.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  WordsDAOCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return WordsDAOCountOutputType(query);
  }
}

class TextsDAOFluent<T> extends _i1.PrismaFluent<T> {
  const TextsDAOFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<UsersDAO>?> readers({
    UsersDAOWhereInput? where,
    Iterable<UsersDAOOrderByWithRelationInput>? orderBy,
    UsersDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'readers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'readers',
    );
    final fields = UsersDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> readers) =>
        readers.map((Map readers) => UsersDAO.fromJson(readers.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  TextsDAOCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TextsDAOCountOutputType(query);
  }
}

extension UsersDAOModelDelegateExtension on _i1.ModelDelegate<UsersDAO> {
  UsersDAOFluent<UsersDAO?> findUnique(
      {required UsersDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUsersDAO',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return UsersDAOFluent<UsersDAO?>(
      future,
      query,
    );
  }

  UsersDAOFluent<UsersDAO> findUniqueOrThrow(
      {required UsersDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUsersDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUsersDAOOrThrow',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: UsersDAO)'));
    return UsersDAOFluent<UsersDAO>(
      future,
      query,
    );
  }

  UsersDAOFluent<UsersDAO?> findFirst({
    UsersDAOWhereInput? where,
    Iterable<UsersDAOOrderByWithRelationInput>? orderBy,
    UsersDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUsersDAO',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return UsersDAOFluent<UsersDAO?>(
      future,
      query,
    );
  }

  UsersDAOFluent<UsersDAO> findFirstOrThrow({
    UsersDAOWhereInput? where,
    Iterable<UsersDAOOrderByWithRelationInput>? orderBy,
    UsersDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUsersDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUsersDAOOrThrow',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: UsersDAO)'));
    return UsersDAOFluent<UsersDAO>(
      future,
      query,
    );
  }

  Future<Iterable<UsersDAO>> findMany({
    UsersDAOWhereInput? where,
    Iterable<UsersDAOOrderByWithRelationInput>? orderBy,
    UsersDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUsersDAO',
    );
    final fields = UsersDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUsersDAO) => findManyUsersDAO.map(
        (Map findManyUsersDAO) => UsersDAO.fromJson(findManyUsersDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UsersDAOFluent<UsersDAO> create({required UsersDAOCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUsersDAO',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: UsersDAO)'));
    return UsersDAOFluent<UsersDAO>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UsersDAOCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUsersDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUsersDAO) =>
        AffectedRowsOutput.fromJson(createManyUsersDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UsersDAOFluent<UsersDAO?> update({
    required UsersDAOUpdateInput data,
    required UsersDAOWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUsersDAO',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return UsersDAOFluent<UsersDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UsersDAOUpdateManyMutationInput data,
    UsersDAOWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUsersDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUsersDAO) =>
        AffectedRowsOutput.fromJson(updateManyUsersDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UsersDAOFluent<UsersDAO> upsert({
    required UsersDAOWhereUniqueInput where,
    required UsersDAOCreateInput create,
    required UsersDAOUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUsersDAO',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: UsersDAO)'));
    return UsersDAOFluent<UsersDAO>(
      future,
      query,
    );
  }

  UsersDAOFluent<UsersDAO?> delete({required UsersDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUsersDAO',
    );
    final future = query(UsersDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? UsersDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return UsersDAOFluent<UsersDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UsersDAOWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUsersDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUsersDAO) =>
        AffectedRowsOutput.fromJson(deleteManyUsersDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUsersDAO aggregate({
    UsersDAOWhereInput? where,
    Iterable<UsersDAOOrderByWithRelationInput>? orderBy,
    UsersDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUsersDAO',
    );
    return AggregateUsersDAO(query);
  }

  Future<Iterable<UsersDAOGroupByOutputType>> groupBy({
    UsersDAOWhereInput? where,
    Iterable<UsersDAOOrderByWithAggregationInput>? orderBy,
    required Iterable<UsersDAOScalarFieldEnum> by,
    UsersDAOScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUsersDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUsersDAO',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUsersDAO) =>
        groupByUsersDAO.map((Map groupByUsersDAO) =>
            UsersDAOGroupByOutputType.fromJson(groupByUsersDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension KanjiDAOModelDelegateExtension on _i1.ModelDelegate<KanjiDAO> {
  KanjiDAOFluent<KanjiDAO?> findUnique(
      {required KanjiDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueKanjiDAO',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return KanjiDAOFluent<KanjiDAO?>(
      future,
      query,
    );
  }

  KanjiDAOFluent<KanjiDAO> findUniqueOrThrow(
      {required KanjiDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueKanjiDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueKanjiDAOOrThrow',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: KanjiDAO)'));
    return KanjiDAOFluent<KanjiDAO>(
      future,
      query,
    );
  }

  KanjiDAOFluent<KanjiDAO?> findFirst({
    KanjiDAOWhereInput? where,
    Iterable<KanjiDAOOrderByWithRelationInput>? orderBy,
    KanjiDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<KanjiDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstKanjiDAO',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return KanjiDAOFluent<KanjiDAO?>(
      future,
      query,
    );
  }

  KanjiDAOFluent<KanjiDAO> findFirstOrThrow({
    KanjiDAOWhereInput? where,
    Iterable<KanjiDAOOrderByWithRelationInput>? orderBy,
    KanjiDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<KanjiDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstKanjiDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstKanjiDAOOrThrow',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: KanjiDAO)'));
    return KanjiDAOFluent<KanjiDAO>(
      future,
      query,
    );
  }

  Future<Iterable<KanjiDAO>> findMany({
    KanjiDAOWhereInput? where,
    Iterable<KanjiDAOOrderByWithRelationInput>? orderBy,
    KanjiDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<KanjiDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyKanjiDAO',
    );
    final fields = KanjiDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyKanjiDAO) => findManyKanjiDAO.map(
        (Map findManyKanjiDAO) => KanjiDAO.fromJson(findManyKanjiDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  KanjiDAOFluent<KanjiDAO> create({required KanjiDAOCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneKanjiDAO',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: KanjiDAO)'));
    return KanjiDAOFluent<KanjiDAO>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<KanjiDAOCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyKanjiDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyKanjiDAO) =>
        AffectedRowsOutput.fromJson(createManyKanjiDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  KanjiDAOFluent<KanjiDAO?> update({
    required KanjiDAOUpdateInput data,
    required KanjiDAOWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneKanjiDAO',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return KanjiDAOFluent<KanjiDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required KanjiDAOUpdateManyMutationInput data,
    KanjiDAOWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyKanjiDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyKanjiDAO) =>
        AffectedRowsOutput.fromJson(updateManyKanjiDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  KanjiDAOFluent<KanjiDAO> upsert({
    required KanjiDAOWhereUniqueInput where,
    required KanjiDAOCreateInput create,
    required KanjiDAOUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneKanjiDAO',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: KanjiDAO)'));
    return KanjiDAOFluent<KanjiDAO>(
      future,
      query,
    );
  }

  KanjiDAOFluent<KanjiDAO?> delete({required KanjiDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneKanjiDAO',
    );
    final future = query(KanjiDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? KanjiDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return KanjiDAOFluent<KanjiDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({KanjiDAOWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyKanjiDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyKanjiDAO) =>
        AffectedRowsOutput.fromJson(deleteManyKanjiDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateKanjiDAO aggregate({
    KanjiDAOWhereInput? where,
    Iterable<KanjiDAOOrderByWithRelationInput>? orderBy,
    KanjiDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateKanjiDAO',
    );
    return AggregateKanjiDAO(query);
  }

  Future<Iterable<KanjiDAOGroupByOutputType>> groupBy({
    KanjiDAOWhereInput? where,
    Iterable<KanjiDAOOrderByWithAggregationInput>? orderBy,
    required Iterable<KanjiDAOScalarFieldEnum> by,
    KanjiDAOScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByKanjiDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByKanjiDAO',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByKanjiDAO) =>
        groupByKanjiDAO.map((Map groupByKanjiDAO) =>
            KanjiDAOGroupByOutputType.fromJson(groupByKanjiDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension DictionariesDAOModelDelegateExtension
    on _i1.ModelDelegate<DictionariesDAO> {
  DictionariesDAOFluent<DictionariesDAO?> findUnique(
      {required DictionariesDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueDictionariesDAO',
    );
    final future =
        query(DictionariesDAOScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
                : null);
    return DictionariesDAOFluent<DictionariesDAO?>(
      future,
      query,
    );
  }

  DictionariesDAOFluent<DictionariesDAO> findUniqueOrThrow(
      {required DictionariesDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueDictionariesDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueDictionariesDAOOrThrow',
    );
    final future = query(
            DictionariesDAOScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: DictionariesDAO)'));
    return DictionariesDAOFluent<DictionariesDAO>(
      future,
      query,
    );
  }

  DictionariesDAOFluent<DictionariesDAO?> findFirst({
    DictionariesDAOWhereInput? where,
    Iterable<DictionariesDAOOrderByWithRelationInput>? orderBy,
    DictionariesDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DictionariesDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstDictionariesDAO',
    );
    final future =
        query(DictionariesDAOScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
                : null);
    return DictionariesDAOFluent<DictionariesDAO?>(
      future,
      query,
    );
  }

  DictionariesDAOFluent<DictionariesDAO> findFirstOrThrow({
    DictionariesDAOWhereInput? where,
    Iterable<DictionariesDAOOrderByWithRelationInput>? orderBy,
    DictionariesDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DictionariesDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstDictionariesDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstDictionariesDAOOrThrow',
    );
    final future = query(
            DictionariesDAOScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: DictionariesDAO)'));
    return DictionariesDAOFluent<DictionariesDAO>(
      future,
      query,
    );
  }

  Future<Iterable<DictionariesDAO>> findMany({
    DictionariesDAOWhereInput? where,
    Iterable<DictionariesDAOOrderByWithRelationInput>? orderBy,
    DictionariesDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DictionariesDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyDictionariesDAO',
    );
    final fields = DictionariesDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyDictionariesDAO) =>
        findManyDictionariesDAO.map((Map findManyDictionariesDAO) =>
            DictionariesDAO.fromJson(findManyDictionariesDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  DictionariesDAOFluent<DictionariesDAO> create(
      {required DictionariesDAOCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneDictionariesDAO',
    );
    final future = query(
            DictionariesDAOScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: DictionariesDAO)'));
    return DictionariesDAOFluent<DictionariesDAO>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<DictionariesDAOCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyDictionariesDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyDictionariesDAO) =>
        AffectedRowsOutput.fromJson(createManyDictionariesDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  DictionariesDAOFluent<DictionariesDAO?> update({
    required DictionariesDAOUpdateInput data,
    required DictionariesDAOWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneDictionariesDAO',
    );
    final future =
        query(DictionariesDAOScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
                : null);
    return DictionariesDAOFluent<DictionariesDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required DictionariesDAOUpdateManyMutationInput data,
    DictionariesDAOWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyDictionariesDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyDictionariesDAO) =>
        AffectedRowsOutput.fromJson(updateManyDictionariesDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  DictionariesDAOFluent<DictionariesDAO> upsert({
    required DictionariesDAOWhereUniqueInput where,
    required DictionariesDAOCreateInput create,
    required DictionariesDAOUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneDictionariesDAO',
    );
    final future = query(
            DictionariesDAOScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: DictionariesDAO)'));
    return DictionariesDAOFluent<DictionariesDAO>(
      future,
      query,
    );
  }

  DictionariesDAOFluent<DictionariesDAO?> delete(
      {required DictionariesDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneDictionariesDAO',
    );
    final future =
        query(DictionariesDAOScalarFieldEnum.values.toGraphQLFields()).then(
            (json) => json is Map
                ? DictionariesDAO.fromJson(json.cast<String, dynamic>())
                : null);
    return DictionariesDAOFluent<DictionariesDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({DictionariesDAOWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyDictionariesDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyDictionariesDAO) =>
        AffectedRowsOutput.fromJson(deleteManyDictionariesDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateDictionariesDAO aggregate({
    DictionariesDAOWhereInput? where,
    Iterable<DictionariesDAOOrderByWithRelationInput>? orderBy,
    DictionariesDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateDictionariesDAO',
    );
    return AggregateDictionariesDAO(query);
  }

  Future<Iterable<DictionariesDAOGroupByOutputType>> groupBy({
    DictionariesDAOWhereInput? where,
    Iterable<DictionariesDAOOrderByWithAggregationInput>? orderBy,
    required Iterable<DictionariesDAOScalarFieldEnum> by,
    DictionariesDAOScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByDictionariesDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByDictionariesDAO',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByDictionariesDAO) =>
        groupByDictionariesDAO.map((Map groupByDictionariesDAO) =>
            DictionariesDAOGroupByOutputType.fromJson(
                groupByDictionariesDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension WordsDAOModelDelegateExtension on _i1.ModelDelegate<WordsDAO> {
  WordsDAOFluent<WordsDAO?> findUnique(
      {required WordsDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueWordsDAO',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return WordsDAOFluent<WordsDAO?>(
      future,
      query,
    );
  }

  WordsDAOFluent<WordsDAO> findUniqueOrThrow(
      {required WordsDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueWordsDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueWordsDAOOrThrow',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: WordsDAO)'));
    return WordsDAOFluent<WordsDAO>(
      future,
      query,
    );
  }

  WordsDAOFluent<WordsDAO?> findFirst({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithRelationInput>? orderBy,
    WordsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<WordsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstWordsDAO',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return WordsDAOFluent<WordsDAO?>(
      future,
      query,
    );
  }

  WordsDAOFluent<WordsDAO> findFirstOrThrow({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithRelationInput>? orderBy,
    WordsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<WordsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstWordsDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstWordsDAOOrThrow',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: WordsDAO)'));
    return WordsDAOFluent<WordsDAO>(
      future,
      query,
    );
  }

  Future<Iterable<WordsDAO>> findMany({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithRelationInput>? orderBy,
    WordsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<WordsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyWordsDAO',
    );
    final fields = WordsDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyWordsDAO) => findManyWordsDAO.map(
        (Map findManyWordsDAO) => WordsDAO.fromJson(findManyWordsDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  WordsDAOFluent<WordsDAO> create({required WordsDAOCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneWordsDAO',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: WordsDAO)'));
    return WordsDAOFluent<WordsDAO>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<WordsDAOCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyWordsDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyWordsDAO) =>
        AffectedRowsOutput.fromJson(createManyWordsDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  WordsDAOFluent<WordsDAO?> update({
    required WordsDAOUpdateInput data,
    required WordsDAOWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneWordsDAO',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return WordsDAOFluent<WordsDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required WordsDAOUpdateManyMutationInput data,
    WordsDAOWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyWordsDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyWordsDAO) =>
        AffectedRowsOutput.fromJson(updateManyWordsDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  WordsDAOFluent<WordsDAO> upsert({
    required WordsDAOWhereUniqueInput where,
    required WordsDAOCreateInput create,
    required WordsDAOUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneWordsDAO',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: WordsDAO)'));
    return WordsDAOFluent<WordsDAO>(
      future,
      query,
    );
  }

  WordsDAOFluent<WordsDAO?> delete({required WordsDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneWordsDAO',
    );
    final future = query(WordsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? WordsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return WordsDAOFluent<WordsDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({WordsDAOWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyWordsDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyWordsDAO) =>
        AffectedRowsOutput.fromJson(deleteManyWordsDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateWordsDAO aggregate({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithRelationInput>? orderBy,
    WordsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateWordsDAO',
    );
    return AggregateWordsDAO(query);
  }

  Future<Iterable<WordsDAOGroupByOutputType>> groupBy({
    WordsDAOWhereInput? where,
    Iterable<WordsDAOOrderByWithAggregationInput>? orderBy,
    required Iterable<WordsDAOScalarFieldEnum> by,
    WordsDAOScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByWordsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByWordsDAO',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByWordsDAO) =>
        groupByWordsDAO.map((Map groupByWordsDAO) =>
            WordsDAOGroupByOutputType.fromJson(groupByWordsDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension TextsDAOModelDelegateExtension on _i1.ModelDelegate<TextsDAO> {
  TextsDAOFluent<TextsDAO?> findUnique(
      {required TextsDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTextsDAO',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return TextsDAOFluent<TextsDAO?>(
      future,
      query,
    );
  }

  TextsDAOFluent<TextsDAO> findUniqueOrThrow(
      {required TextsDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTextsDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTextsDAOOrThrow',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: TextsDAO)'));
    return TextsDAOFluent<TextsDAO>(
      future,
      query,
    );
  }

  TextsDAOFluent<TextsDAO?> findFirst({
    TextsDAOWhereInput? where,
    Iterable<TextsDAOOrderByWithRelationInput>? orderBy,
    TextsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TextsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTextsDAO',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return TextsDAOFluent<TextsDAO?>(
      future,
      query,
    );
  }

  TextsDAOFluent<TextsDAO> findFirstOrThrow({
    TextsDAOWhereInput? where,
    Iterable<TextsDAOOrderByWithRelationInput>? orderBy,
    TextsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TextsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTextsDAOOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTextsDAOOrThrow',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: TextsDAO)'));
    return TextsDAOFluent<TextsDAO>(
      future,
      query,
    );
  }

  Future<Iterable<TextsDAO>> findMany({
    TextsDAOWhereInput? where,
    Iterable<TextsDAOOrderByWithRelationInput>? orderBy,
    TextsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TextsDAOScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyTextsDAO',
    );
    final fields = TextsDAOScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyTextsDAO) => findManyTextsDAO.map(
        (Map findManyTextsDAO) => TextsDAO.fromJson(findManyTextsDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TextsDAOFluent<TextsDAO> create({required TextsDAOCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneTextsDAO',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: TextsDAO)'));
    return TextsDAOFluent<TextsDAO>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TextsDAOCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyTextsDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyTextsDAO) =>
        AffectedRowsOutput.fromJson(createManyTextsDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TextsDAOFluent<TextsDAO?> update({
    required TextsDAOUpdateInput data,
    required TextsDAOWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneTextsDAO',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return TextsDAOFluent<TextsDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TextsDAOUpdateManyMutationInput data,
    TextsDAOWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyTextsDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyTextsDAO) =>
        AffectedRowsOutput.fromJson(updateManyTextsDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TextsDAOFluent<TextsDAO> upsert({
    required TextsDAOWhereUniqueInput where,
    required TextsDAOCreateInput create,
    required TextsDAOUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneTextsDAO',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: TextsDAO)'));
    return TextsDAOFluent<TextsDAO>(
      future,
      query,
    );
  }

  TextsDAOFluent<TextsDAO?> delete({required TextsDAOWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneTextsDAO',
    );
    final future = query(TextsDAOScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? TextsDAO.fromJson(json.cast<String, dynamic>())
            : null);
    return TextsDAOFluent<TextsDAO?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TextsDAOWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyTextsDAO',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyTextsDAO) =>
        AffectedRowsOutput.fromJson(deleteManyTextsDAO.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTextsDAO aggregate({
    TextsDAOWhereInput? where,
    Iterable<TextsDAOOrderByWithRelationInput>? orderBy,
    TextsDAOWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateTextsDAO',
    );
    return AggregateTextsDAO(query);
  }

  Future<Iterable<TextsDAOGroupByOutputType>> groupBy({
    TextsDAOWhereInput? where,
    Iterable<TextsDAOOrderByWithAggregationInput>? orderBy,
    required Iterable<TextsDAOScalarFieldEnum> by,
    TextsDAOScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByTextsDAO',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByTextsDAO',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByTextsDAO) =>
        groupByTextsDAO.map((Map groupByTextsDAO) =>
            TextsDAOGroupByOutputType.fromJson(groupByTextsDAO.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UsersDAOGroupByOutputType implements _i1.JsonSerializable {
  const UsersDAOGroupByOutputType({
    this.id,
    this.accountName,
    this.password,
    this.role,
  });

  factory UsersDAOGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UsersDAOGroupByOutputTypeFromJson(json);

  final String? id;

  @JsonKey(name: r'account_name')
  final String? accountName;

  final String? password;

  final Role? role;

  @override
  Map<String, dynamic> toJson() => _$UsersDAOGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class KanjiDAOGroupByOutputType implements _i1.JsonSerializable {
  const KanjiDAOGroupByOutputType({
    this.glyph,
    this.onyoumi,
    this.kunyoumi,
    this.meaning,
  });

  factory KanjiDAOGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$KanjiDAOGroupByOutputTypeFromJson(json);

  final String? glyph;

  final String? onyoumi;

  final String? kunyoumi;

  final String? meaning;

  @override
  Map<String, dynamic> toJson() => _$KanjiDAOGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class DictionariesDAOGroupByOutputType implements _i1.JsonSerializable {
  const DictionariesDAOGroupByOutputType({
    this.id,
    this.title,
    this.ownerId,
  });

  factory DictionariesDAOGroupByOutputType.fromJson(
          Map<String, dynamic> json) =>
      _$DictionariesDAOGroupByOutputTypeFromJson(json);

  final String? id;

  final String? title;

  @JsonKey(name: r'owner_id')
  final String? ownerId;

  @override
  Map<String, dynamic> toJson() =>
      _$DictionariesDAOGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class WordsDAOGroupByOutputType implements _i1.JsonSerializable {
  const WordsDAOGroupByOutputType({
    this.word,
    this.translation,
    this.reading,
  });

  factory WordsDAOGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$WordsDAOGroupByOutputTypeFromJson(json);

  final String? word;

  final String? translation;

  final String? reading;

  @override
  Map<String, dynamic> toJson() => _$WordsDAOGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class TextsDAOGroupByOutputType implements _i1.JsonSerializable {
  const TextsDAOGroupByOutputType({
    this.id,
    this.title,
    this.text,
  });

  factory TextsDAOGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TextsDAOGroupByOutputTypeFromJson(json);

  final String? id;

  final String? title;

  final String? text;

  @override
  Map<String, dynamic> toJson() => _$TextsDAOGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUsersDAO {
  const AggregateUsersDAO(this.$query);

  final _i1.PrismaFluentQuery $query;

  UsersDAOCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UsersDAOCountAggregateOutputType(query);
  }

  UsersDAOMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UsersDAOMinAggregateOutputType(query);
  }

  UsersDAOMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UsersDAOMaxAggregateOutputType(query);
  }
}

class AggregateKanjiDAO {
  const AggregateKanjiDAO(this.$query);

  final _i1.PrismaFluentQuery $query;

  KanjiDAOCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return KanjiDAOCountAggregateOutputType(query);
  }

  KanjiDAOMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return KanjiDAOMinAggregateOutputType(query);
  }

  KanjiDAOMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return KanjiDAOMaxAggregateOutputType(query);
  }
}

class AggregateDictionariesDAO {
  const AggregateDictionariesDAO(this.$query);

  final _i1.PrismaFluentQuery $query;

  DictionariesDAOCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return DictionariesDAOCountAggregateOutputType(query);
  }

  DictionariesDAOMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return DictionariesDAOMinAggregateOutputType(query);
  }

  DictionariesDAOMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return DictionariesDAOMaxAggregateOutputType(query);
  }
}

class AggregateWordsDAO {
  const AggregateWordsDAO(this.$query);

  final _i1.PrismaFluentQuery $query;

  WordsDAOCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return WordsDAOCountAggregateOutputType(query);
  }

  WordsDAOMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return WordsDAOMinAggregateOutputType(query);
  }

  WordsDAOMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return WordsDAOMaxAggregateOutputType(query);
  }
}

class AggregateTextsDAO {
  const AggregateTextsDAO(this.$query);

  final _i1.PrismaFluentQuery $query;

  TextsDAOCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TextsDAOCountAggregateOutputType(query);
  }

  TextsDAOMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TextsDAOMinAggregateOutputType(query);
  }

  TextsDAOMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TextsDAOMaxAggregateOutputType(query);
  }
}

class UsersDAOCountOutputType {
  const UsersDAOCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> texts() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'texts',
          fields: fields,
        )
      ]),
      key: r'texts',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UsersDAOCountAggregateOutputType {
  const UsersDAOCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> accountName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_name',
          fields: fields,
        )
      ]),
      key: r'account_name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> role() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'role',
          fields: fields,
        )
      ]),
      key: r'role',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UsersDAOMinAggregateOutputType {
  const UsersDAOMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> accountName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_name',
          fields: fields,
        )
      ]),
      key: r'account_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<Role?> role() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'role',
          fields: fields,
        )
      ]),
      key: r'role',
    );
    return query(const []).then((value) => $enumDecodeNullable(
          _$RoleEnumMap,
          value,
        ));
  }
}

class UsersDAOMaxAggregateOutputType {
  const UsersDAOMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> accountName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'account_name',
          fields: fields,
        )
      ]),
      key: r'account_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<Role?> role() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'role',
          fields: fields,
        )
      ]),
      key: r'role',
    );
    return query(const []).then((value) => $enumDecodeNullable(
          _$RoleEnumMap,
          value,
        ));
  }
}

class KanjiDAOCountOutputType {
  const KanjiDAOCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> words() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'words',
          fields: fields,
        )
      ]),
      key: r'words',
    );
    return query(const []).then((value) => (value as int));
  }
}

class KanjiDAOCountAggregateOutputType {
  const KanjiDAOCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> glyph() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'glyph',
          fields: fields,
        )
      ]),
      key: r'glyph',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> onyoumi() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'onyoumi',
          fields: fields,
        )
      ]),
      key: r'onyoumi',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> kunyoumi() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'kunyoumi',
          fields: fields,
        )
      ]),
      key: r'kunyoumi',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> meaning() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'meaning',
          fields: fields,
        )
      ]),
      key: r'meaning',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class KanjiDAOMinAggregateOutputType {
  const KanjiDAOMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> glyph() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'glyph',
          fields: fields,
        )
      ]),
      key: r'glyph',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> onyoumi() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'onyoumi',
          fields: fields,
        )
      ]),
      key: r'onyoumi',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> kunyoumi() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'kunyoumi',
          fields: fields,
        )
      ]),
      key: r'kunyoumi',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> meaning() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'meaning',
          fields: fields,
        )
      ]),
      key: r'meaning',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class KanjiDAOMaxAggregateOutputType {
  const KanjiDAOMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> glyph() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'glyph',
          fields: fields,
        )
      ]),
      key: r'glyph',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> onyoumi() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'onyoumi',
          fields: fields,
        )
      ]),
      key: r'onyoumi',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> kunyoumi() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'kunyoumi',
          fields: fields,
        )
      ]),
      key: r'kunyoumi',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> meaning() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'meaning',
          fields: fields,
        )
      ]),
      key: r'meaning',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class DictionariesDAOCountOutputType {
  const DictionariesDAOCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> words() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'words',
          fields: fields,
        )
      ]),
      key: r'words',
    );
    return query(const []).then((value) => (value as int));
  }
}

class DictionariesDAOCountAggregateOutputType {
  const DictionariesDAOCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'owner_id',
          fields: fields,
        )
      ]),
      key: r'owner_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class DictionariesDAOMinAggregateOutputType {
  const DictionariesDAOMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'owner_id',
          fields: fields,
        )
      ]),
      key: r'owner_id',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class DictionariesDAOMaxAggregateOutputType {
  const DictionariesDAOMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> ownerId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'owner_id',
          fields: fields,
        )
      ]),
      key: r'owner_id',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class WordsDAOCountOutputType {
  const WordsDAOCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> dicts() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'dicts',
          fields: fields,
        )
      ]),
      key: r'dicts',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> kanjis() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'kanjis',
          fields: fields,
        )
      ]),
      key: r'kanjis',
    );
    return query(const []).then((value) => (value as int));
  }
}

class WordsDAOCountAggregateOutputType {
  const WordsDAOCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> word() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'word',
          fields: fields,
        )
      ]),
      key: r'word',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> translation() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'translation',
          fields: fields,
        )
      ]),
      key: r'translation',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> reading() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'reading',
          fields: fields,
        )
      ]),
      key: r'reading',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class WordsDAOMinAggregateOutputType {
  const WordsDAOMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> word() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'word',
          fields: fields,
        )
      ]),
      key: r'word',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> translation() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'translation',
          fields: fields,
        )
      ]),
      key: r'translation',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> reading() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'reading',
          fields: fields,
        )
      ]),
      key: r'reading',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class WordsDAOMaxAggregateOutputType {
  const WordsDAOMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> word() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'word',
          fields: fields,
        )
      ]),
      key: r'word',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> translation() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'translation',
          fields: fields,
        )
      ]),
      key: r'translation',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> reading() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'reading',
          fields: fields,
        )
      ]),
      key: r'reading',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class TextsDAOCountOutputType {
  const TextsDAOCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> readers() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'readers',
          fields: fields,
        )
      ]),
      key: r'readers',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TextsDAOCountAggregateOutputType {
  const TextsDAOCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> text() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'text',
          fields: fields,
        )
      ]),
      key: r'text',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TextsDAOMinAggregateOutputType {
  const TextsDAOMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> text() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'text',
          fields: fields,
        )
      ]),
      key: r'text',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class TextsDAOMaxAggregateOutputType {
  const TextsDAOMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> text() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'text',
          fields: fields,
        )
      ]),
      key: r'text',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgogIG91dHB1dCAgID0gIi4uL2xpYi9kYXRhL3JlcG9zaXRvcmllcy9wcmlzbWEiCn0KCmRhdGFzb3VyY2UgZGIgewogIHByb3ZpZGVyID0gInBvc3RncmVzcWwiCiAgdXJsICAgICAgPSBlbnYoIkRBVEFCQVNFX1VSTCIpCn0KCmVudW0gUm9sZSB7CiAgVVNFUgogIE1PREVSQVRPUgogIEFETUlOCn0KCm1vZGVsIFVzZXJzREFPIHsKICBpZCAgICAgICAgICAgU3RyaW5nICAgICAgICAgICBAaWQgQGRlZmF1bHQodXVpZCgpKQogIGFjY291bnRfbmFtZSBTdHJpbmcgICAgICAgICAgIEB1bmlxdWUKICBwYXNzd29yZCAgICAgU3RyaW5nCiAgcm9sZSAgICAgICAgIFJvbGUKICBkaWN0aW9uYXJ5ICAgRGljdGlvbmFyaWVzREFPPwogIHRleHRzICAgICAgICBUZXh0c0RBT1tdCn0KCm1vZGVsIEthbmppREFPIHsKICBnbHlwaCAgICBTdHJpbmcgQGlkCiAgb255b3VtaSAgU3RyaW5nCiAga3VueW91bWkgU3RyaW5nCiAgbWVhbmluZyAgU3RyaW5nCiAgd29yZHMgICAgV29yZHNEQU9bXQp9Cgptb2RlbCBEaWN0aW9uYXJpZXNEQU8gewogIGlkICAgICAgIFN0cmluZyAgICAgQGlkIEBkZWZhdWx0KHV1aWQoKSkKICB0aXRsZSAgICBTdHJpbmcKICBvd25lcl9pZCBTdHJpbmcgICAgIEB1bmlxdWUKICBvd25lciAgICBVc2Vyc0RBTyAgIEByZWxhdGlvbihmaWVsZHM6IFtvd25lcl9pZF0sIHJlZmVyZW5jZXM6IFtpZF0pCiAgd29yZHMgICAgV29yZHNEQU9bXQp9Cgptb2RlbCBXb3Jkc0RBTyB7CiAgd29yZCAgICAgICAgU3RyaW5nICAgICAgICAgICAgQGlkCiAgdHJhbnNsYXRpb24gU3RyaW5nCiAgcmVhZGluZyAgICAgU3RyaW5nCiAgZGljdHMgICAgICAgRGljdGlvbmFyaWVzREFPW10KICBrYW5qaXMgICAgICBLYW5qaURBT1tdCn0KCm1vZGVsIFRleHRzREFPIHsKICBpZCAgICAgIFN0cmluZyAgICAgQGlkIEBkZWZhdWx0KHV1aWQoKSkKICB0aXRsZSAgIFN0cmluZwogIHRleHQgICAgU3RyaW5nCiAgcmVhZGVycyBVc2Vyc0RBT1tdCn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/home/yorlend/prog/db-cp/kango/node_modules/prisma/query-engine-debian-openssl-3.0.x',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<UsersDAO> get usersDAO => _i1.ModelDelegate<UsersDAO>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<KanjiDAO> get kanjiDAO => _i1.ModelDelegate<KanjiDAO>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<DictionariesDAO> get dictionariesDAO =>
      _i1.ModelDelegate<DictionariesDAO>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<WordsDAO> get wordsDAO => _i1.ModelDelegate<WordsDAO>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<TextsDAO> get textsDAO => _i1.ModelDelegate<TextsDAO>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
