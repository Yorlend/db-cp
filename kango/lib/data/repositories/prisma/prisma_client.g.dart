// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersDAOWhereInput _$UsersDAOWhereInputFromJson(Map<String, dynamic> json) =>
    UsersDAOWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UsersDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UsersDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UsersDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFilter.fromJson(json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : EnumRoleFilter.fromJson(json['role'] as Map<String, dynamic>),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAORelationFilter.fromJson(
              json['dictionary'] as Map<String, dynamic>),
      texts: json['texts'] == null
          ? null
          : TextsDAOListRelationFilter.fromJson(
              json['texts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOWhereInputToJson(UsersDAOWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('dictionary', instance.dictionary?.toJson());
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOOrderByWithRelationInput _$UsersDAOOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      accountName:
          $enumDecodeNullable(_$SortOrderEnumMap, json['account_name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOOrderByWithRelationInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
      texts: json['texts'] == null
          ? null
          : TextsDAOOrderByRelationAggregateInput.fromJson(
              json['texts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOOrderByWithRelationInputToJson(
    UsersDAOOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_name', _$SortOrderEnumMap[instance.accountName]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('dictionary', instance.dictionary?.toJson());
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UsersDAOWhereUniqueInput _$UsersDAOWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOWhereUniqueInput(
      id: json['id'] as String?,
      accountName: json['account_name'] as String?,
    );

Map<String, dynamic> _$UsersDAOWhereUniqueInputToJson(
    UsersDAOWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('account_name', instance.accountName);
  return val;
}

UsersDAOOrderByWithAggregationInput
    _$UsersDAOOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        UsersDAOOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          accountName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['account_name']),
          password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
          role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
          $count: json['_count'] == null
              ? null
              : UsersDAOCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : UsersDAOMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : UsersDAOMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOOrderByWithAggregationInputToJson(
    UsersDAOOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_name', _$SortOrderEnumMap[instance.accountName]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

UsersDAOScalarWhereWithAggregatesInput
    _$UsersDAOScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              UsersDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              UsersDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              UsersDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          accountName: json['account_name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['account_name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['password'] as Map<String, dynamic>),
          role: json['role'] == null
              ? null
              : EnumRoleWithAggregatesFilter.fromJson(
                  json['role'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOScalarWhereWithAggregatesInputToJson(
    UsersDAOScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  return val;
}

KanjiDAOWhereInput _$KanjiDAOWhereInputFromJson(Map<String, dynamic> json) =>
    KanjiDAOWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => KanjiDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => KanjiDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => KanjiDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      glyph: json['glyph'] == null
          ? null
          : StringFilter.fromJson(json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFilter.fromJson(json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFilter.fromJson(json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFilter.fromJson(json['meaning'] as Map<String, dynamic>),
      words: json['words'] == null
          ? null
          : WordsDAOListRelationFilter.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOWhereInputToJson(KanjiDAOWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

KanjiDAOOrderByWithRelationInput _$KanjiDAOOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOOrderByWithRelationInput(
      glyph: $enumDecodeNullable(_$SortOrderEnumMap, json['glyph']),
      onyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['onyoumi']),
      kunyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['kunyoumi']),
      meaning: $enumDecodeNullable(_$SortOrderEnumMap, json['meaning']),
      words: json['words'] == null
          ? null
          : WordsDAOOrderByRelationAggregateInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOOrderByWithRelationInputToJson(
    KanjiDAOOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', _$SortOrderEnumMap[instance.glyph]);
  writeNotNull('onyoumi', _$SortOrderEnumMap[instance.onyoumi]);
  writeNotNull('kunyoumi', _$SortOrderEnumMap[instance.kunyoumi]);
  writeNotNull('meaning', _$SortOrderEnumMap[instance.meaning]);
  writeNotNull('words', instance.words?.toJson());
  return val;
}

KanjiDAOWhereUniqueInput _$KanjiDAOWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOWhereUniqueInput(
      glyph: json['glyph'] as String?,
    );

Map<String, dynamic> _$KanjiDAOWhereUniqueInputToJson(
    KanjiDAOWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph);
  return val;
}

KanjiDAOOrderByWithAggregationInput
    _$KanjiDAOOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        KanjiDAOOrderByWithAggregationInput(
          glyph: $enumDecodeNullable(_$SortOrderEnumMap, json['glyph']),
          onyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['onyoumi']),
          kunyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['kunyoumi']),
          meaning: $enumDecodeNullable(_$SortOrderEnumMap, json['meaning']),
          $count: json['_count'] == null
              ? null
              : KanjiDAOCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : KanjiDAOMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : KanjiDAOMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOOrderByWithAggregationInputToJson(
    KanjiDAOOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', _$SortOrderEnumMap[instance.glyph]);
  writeNotNull('onyoumi', _$SortOrderEnumMap[instance.onyoumi]);
  writeNotNull('kunyoumi', _$SortOrderEnumMap[instance.kunyoumi]);
  writeNotNull('meaning', _$SortOrderEnumMap[instance.meaning]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

KanjiDAOScalarWhereWithAggregatesInput
    _$KanjiDAOScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              KanjiDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              KanjiDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              KanjiDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          glyph: json['glyph'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['glyph'] as Map<String, dynamic>),
          onyoumi: json['onyoumi'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['onyoumi'] as Map<String, dynamic>),
          kunyoumi: json['kunyoumi'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['kunyoumi'] as Map<String, dynamic>),
          meaning: json['meaning'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['meaning'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOScalarWhereWithAggregatesInputToJson(
    KanjiDAOScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

DictionariesDAOWhereInput _$DictionariesDAOWhereInputFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => DictionariesDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => DictionariesDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => DictionariesDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      ownerId: json['owner_id'] == null
          ? null
          : StringFilter.fromJson(json['owner_id'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UsersDAORelationFilter.fromJson(
              json['owner'] as Map<String, dynamic>),
      words: json['words'] == null
          ? null
          : WordsDAOListRelationFilter.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionariesDAOWhereInputToJson(
    DictionariesDAOWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOOrderByWithRelationInput
    _$DictionariesDAOOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['owner_id']),
          owner: json['owner'] == null
              ? null
              : UsersDAOOrderByWithRelationInput.fromJson(
                  json['owner'] as Map<String, dynamic>),
          words: json['words'] == null
              ? null
              : WordsDAOOrderByRelationAggregateInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOOrderByWithRelationInputToJson(
    DictionariesDAOOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('owner_id', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOWhereUniqueInput _$DictionariesDAOWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOWhereUniqueInput(
      id: json['id'] as String?,
      ownerId: json['owner_id'] as String?,
    );

Map<String, dynamic> _$DictionariesDAOWhereUniqueInputToJson(
    DictionariesDAOWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('owner_id', instance.ownerId);
  return val;
}

DictionariesDAOOrderByWithAggregationInput
    _$DictionariesDAOOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['owner_id']),
          $count: json['_count'] == null
              ? null
              : DictionariesDAOCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : DictionariesDAOMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : DictionariesDAOMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOOrderByWithAggregationInputToJson(
    DictionariesDAOOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('owner_id', _$SortOrderEnumMap[instance.ownerId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

DictionariesDAOScalarWhereWithAggregatesInput
    _$DictionariesDAOScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['title'] as Map<String, dynamic>),
          ownerId: json['owner_id'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['owner_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOScalarWhereWithAggregatesInputToJson(
    DictionariesDAOScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  return val;
}

WordsDAOWhereInput _$WordsDAOWhereInputFromJson(Map<String, dynamic> json) =>
    WordsDAOWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => WordsDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => WordsDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => WordsDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      word: json['word'] == null
          ? null
          : StringFilter.fromJson(json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFilter.fromJson(json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFilter.fromJson(json['reading'] as Map<String, dynamic>),
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOListRelationFilter.fromJson(
              json['dicts'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOListRelationFilter.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOWhereInputToJson(WordsDAOWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('dicts', instance.dicts?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOOrderByWithRelationInput _$WordsDAOOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOOrderByWithRelationInput(
      word: $enumDecodeNullable(_$SortOrderEnumMap, json['word']),
      translation: $enumDecodeNullable(_$SortOrderEnumMap, json['translation']),
      reading: $enumDecodeNullable(_$SortOrderEnumMap, json['reading']),
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOOrderByRelationAggregateInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOOrderByRelationAggregateInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOOrderByWithRelationInputToJson(
    WordsDAOOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', _$SortOrderEnumMap[instance.word]);
  writeNotNull('translation', _$SortOrderEnumMap[instance.translation]);
  writeNotNull('reading', _$SortOrderEnumMap[instance.reading]);
  writeNotNull('dicts', instance.dicts?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOWhereUniqueInput _$WordsDAOWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOWhereUniqueInput(
      word: json['word'] as String?,
    );

Map<String, dynamic> _$WordsDAOWhereUniqueInputToJson(
    WordsDAOWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word);
  return val;
}

WordsDAOOrderByWithAggregationInput
    _$WordsDAOOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        WordsDAOOrderByWithAggregationInput(
          word: $enumDecodeNullable(_$SortOrderEnumMap, json['word']),
          translation:
              $enumDecodeNullable(_$SortOrderEnumMap, json['translation']),
          reading: $enumDecodeNullable(_$SortOrderEnumMap, json['reading']),
          $count: json['_count'] == null
              ? null
              : WordsDAOCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : WordsDAOMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : WordsDAOMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOOrderByWithAggregationInputToJson(
    WordsDAOOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', _$SortOrderEnumMap[instance.word]);
  writeNotNull('translation', _$SortOrderEnumMap[instance.translation]);
  writeNotNull('reading', _$SortOrderEnumMap[instance.reading]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

WordsDAOScalarWhereWithAggregatesInput
    _$WordsDAOScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          word: json['word'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['word'] as Map<String, dynamic>),
          translation: json['translation'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['translation'] as Map<String, dynamic>),
          reading: json['reading'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['reading'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOScalarWhereWithAggregatesInputToJson(
    WordsDAOScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  return val;
}

TextsDAOWhereInput _$TextsDAOWhereInputFromJson(Map<String, dynamic> json) =>
    TextsDAOWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TextsDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TextsDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TextsDAOWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFilter.fromJson(json['text'] as Map<String, dynamic>),
      readers: json['readers'] == null
          ? null
          : UsersDAOListRelationFilter.fromJson(
              json['readers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOWhereInputToJson(TextsDAOWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('readers', instance.readers?.toJson());
  return val;
}

TextsDAOOrderByWithRelationInput _$TextsDAOOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      text: $enumDecodeNullable(_$SortOrderEnumMap, json['text']),
      readers: json['readers'] == null
          ? null
          : UsersDAOOrderByRelationAggregateInput.fromJson(
              json['readers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOOrderByWithRelationInputToJson(
    TextsDAOOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('text', _$SortOrderEnumMap[instance.text]);
  writeNotNull('readers', instance.readers?.toJson());
  return val;
}

TextsDAOWhereUniqueInput _$TextsDAOWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOWhereUniqueInput(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TextsDAOWhereUniqueInputToJson(
    TextsDAOWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

TextsDAOOrderByWithAggregationInput
    _$TextsDAOOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        TextsDAOOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          text: $enumDecodeNullable(_$SortOrderEnumMap, json['text']),
          $count: json['_count'] == null
              ? null
              : TextsDAOCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : TextsDAOMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : TextsDAOMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOOrderByWithAggregationInputToJson(
    TextsDAOOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('text', _$SortOrderEnumMap[instance.text]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

TextsDAOScalarWhereWithAggregatesInput
    _$TextsDAOScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              TextsDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              TextsDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              TextsDAOScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['title'] as Map<String, dynamic>),
          text: json['text'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['text'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOScalarWhereWithAggregatesInputToJson(
    TextsDAOScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

UsersDAOCreateInput _$UsersDAOCreateInputFromJson(Map<String, dynamic> json) =>
    UsersDAOCreateInput(
      id: json['id'] as String?,
      accountName: json['account_name'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOCreateNestedOneWithoutOwnerInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
      texts: json['texts'] == null
          ? null
          : TextsDAOCreateNestedManyWithoutReadersInput.fromJson(
              json['texts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOCreateInputToJson(UsersDAOCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  writeNotNull('dictionary', instance.dictionary?.toJson());
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

const _$RoleEnumMap = {
  Role.user: 'USER',
  Role.moderator: 'MODERATOR',
  Role.admin: 'ADMIN',
};

UsersDAOUncheckedCreateInput _$UsersDAOUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOUncheckedCreateInput(
      id: json['id'] as String?,
      accountName: json['account_name'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
      texts: json['texts'] == null
          ? null
          : TextsDAOUncheckedCreateNestedManyWithoutReadersInput.fromJson(
              json['texts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOUncheckedCreateInputToJson(
    UsersDAOUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  writeNotNull('dictionary', instance.dictionary?.toJson());
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOUpdateInput _$UsersDAOUpdateInputFromJson(Map<String, dynamic> json) =>
    UsersDAOUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOUpdateOneWithoutOwnerNestedInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
      texts: json['texts'] == null
          ? null
          : TextsDAOUpdateManyWithoutReadersNestedInput.fromJson(
              json['texts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOUpdateInputToJson(UsersDAOUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('dictionary', instance.dictionary?.toJson());
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOUncheckedUpdateInput _$UsersDAOUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
      texts: json['texts'] == null
          ? null
          : TextsDAOUncheckedUpdateManyWithoutReadersNestedInput.fromJson(
              json['texts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOUncheckedUpdateInputToJson(
    UsersDAOUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('dictionary', instance.dictionary?.toJson());
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOCreateManyInput _$UsersDAOCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOCreateManyInput(
      id: json['id'] as String?,
      accountName: json['account_name'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOCreateManyInputToJson(
    UsersDAOCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  return val;
}

UsersDAOUpdateManyMutationInput _$UsersDAOUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOUpdateManyMutationInputToJson(
    UsersDAOUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  return val;
}

UsersDAOUncheckedUpdateManyInput _$UsersDAOUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOUncheckedUpdateManyInputToJson(
    UsersDAOUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  return val;
}

KanjiDAOCreateInput _$KanjiDAOCreateInputFromJson(Map<String, dynamic> json) =>
    KanjiDAOCreateInput(
      glyph: json['glyph'] as String,
      onyoumi: json['onyoumi'] as String,
      kunyoumi: json['kunyoumi'] as String,
      meaning: json['meaning'] as String,
      words: json['words'] == null
          ? null
          : WordsDAOCreateNestedManyWithoutKanjisInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOCreateInputToJson(KanjiDAOCreateInput instance) {
  final val = <String, dynamic>{
    'glyph': instance.glyph,
    'onyoumi': instance.onyoumi,
    'kunyoumi': instance.kunyoumi,
    'meaning': instance.meaning,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('words', instance.words?.toJson());
  return val;
}

KanjiDAOUncheckedCreateInput _$KanjiDAOUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOUncheckedCreateInput(
      glyph: json['glyph'] as String,
      onyoumi: json['onyoumi'] as String,
      kunyoumi: json['kunyoumi'] as String,
      meaning: json['meaning'] as String,
      words: json['words'] == null
          ? null
          : WordsDAOUncheckedCreateNestedManyWithoutKanjisInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOUncheckedCreateInputToJson(
    KanjiDAOUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'glyph': instance.glyph,
    'onyoumi': instance.onyoumi,
    'kunyoumi': instance.kunyoumi,
    'meaning': instance.meaning,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('words', instance.words?.toJson());
  return val;
}

KanjiDAOUpdateInput _$KanjiDAOUpdateInputFromJson(Map<String, dynamic> json) =>
    KanjiDAOUpdateInput(
      glyph: json['glyph'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['meaning'] as Map<String, dynamic>),
      words: json['words'] == null
          ? null
          : WordsDAOUpdateManyWithoutKanjisNestedInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOUpdateInputToJson(KanjiDAOUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

KanjiDAOUncheckedUpdateInput _$KanjiDAOUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOUncheckedUpdateInput(
      glyph: json['glyph'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['meaning'] as Map<String, dynamic>),
      words: json['words'] == null
          ? null
          : WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOUncheckedUpdateInputToJson(
    KanjiDAOUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

KanjiDAOCreateManyInput _$KanjiDAOCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOCreateManyInput(
      glyph: json['glyph'] as String,
      onyoumi: json['onyoumi'] as String,
      kunyoumi: json['kunyoumi'] as String,
      meaning: json['meaning'] as String,
    );

Map<String, dynamic> _$KanjiDAOCreateManyInputToJson(
        KanjiDAOCreateManyInput instance) =>
    <String, dynamic>{
      'glyph': instance.glyph,
      'onyoumi': instance.onyoumi,
      'kunyoumi': instance.kunyoumi,
      'meaning': instance.meaning,
    };

KanjiDAOUpdateManyMutationInput _$KanjiDAOUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOUpdateManyMutationInput(
      glyph: json['glyph'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['meaning'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOUpdateManyMutationInputToJson(
    KanjiDAOUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

KanjiDAOUncheckedUpdateManyInput _$KanjiDAOUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOUncheckedUpdateManyInput(
      glyph: json['glyph'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['meaning'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOUncheckedUpdateManyInputToJson(
    KanjiDAOUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

DictionariesDAOCreateInput _$DictionariesDAOCreateInputFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOCreateInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      owner: UsersDAOCreateNestedOneWithoutDictionaryInput.fromJson(
          json['owner'] as Map<String, dynamic>),
      words: json['words'] == null
          ? null
          : WordsDAOCreateNestedManyWithoutDictsInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionariesDAOCreateInputToJson(
    DictionariesDAOCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['owner'] = instance.owner.toJson();
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOUncheckedCreateInput
    _$DictionariesDAOUncheckedCreateInputFromJson(Map<String, dynamic> json) =>
        DictionariesDAOUncheckedCreateInput(
          id: json['id'] as String?,
          title: json['title'] as String,
          ownerId: json['owner_id'] as String,
          words: json['words'] == null
              ? null
              : WordsDAOUncheckedCreateNestedManyWithoutDictsInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUncheckedCreateInputToJson(
    DictionariesDAOUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['owner_id'] = instance.ownerId;
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOUpdateInput _$DictionariesDAOUpdateInputFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput.fromJson(
              json['owner'] as Map<String, dynamic>),
      words: json['words'] == null
          ? null
          : WordsDAOUpdateManyWithoutDictsNestedInput.fromJson(
              json['words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionariesDAOUpdateInputToJson(
    DictionariesDAOUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOUncheckedUpdateInput
    _$DictionariesDAOUncheckedUpdateInputFromJson(Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          ownerId: json['owner_id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['owner_id'] as Map<String, dynamic>),
          words: json['words'] == null
              ? null
              : WordsDAOUncheckedUpdateManyWithoutDictsNestedInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUncheckedUpdateInputToJson(
    DictionariesDAOUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOCreateManyInput _$DictionariesDAOCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOCreateManyInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      ownerId: json['owner_id'] as String,
    );

Map<String, dynamic> _$DictionariesDAOCreateManyInputToJson(
    DictionariesDAOCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['owner_id'] = instance.ownerId;
  return val;
}

DictionariesDAOUpdateManyMutationInput
    _$DictionariesDAOUpdateManyMutationInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateManyMutationInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUpdateManyMutationInputToJson(
    DictionariesDAOUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  return val;
}

DictionariesDAOUncheckedUpdateManyInput
    _$DictionariesDAOUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          ownerId: json['owner_id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['owner_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUncheckedUpdateManyInputToJson(
    DictionariesDAOUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  return val;
}

WordsDAOCreateInput _$WordsDAOCreateInputFromJson(Map<String, dynamic> json) =>
    WordsDAOCreateInput(
      word: json['word'] as String,
      translation: json['translation'] as String,
      reading: json['reading'] as String,
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOCreateNestedManyWithoutWordsInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOCreateNestedManyWithoutWordsInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOCreateInputToJson(WordsDAOCreateInput instance) {
  final val = <String, dynamic>{
    'word': instance.word,
    'translation': instance.translation,
    'reading': instance.reading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dicts', instance.dicts?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOUncheckedCreateInput _$WordsDAOUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOUncheckedCreateInput(
      word: json['word'] as String,
      translation: json['translation'] as String,
      reading: json['reading'] as String,
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOUncheckedCreateNestedManyWithoutWordsInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUncheckedCreateInputToJson(
    WordsDAOUncheckedCreateInput instance) {
  final val = <String, dynamic>{
    'word': instance.word,
    'translation': instance.translation,
    'reading': instance.reading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dicts', instance.dicts?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOUpdateInput _$WordsDAOUpdateInputFromJson(Map<String, dynamic> json) =>
    WordsDAOUpdateInput(
      word: json['word'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['reading'] as Map<String, dynamic>),
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOUpdateManyWithoutWordsNestedInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOUpdateManyWithoutWordsNestedInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUpdateInputToJson(WordsDAOUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('dicts', instance.dicts?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOUncheckedUpdateInput _$WordsDAOUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOUncheckedUpdateInput(
      word: json['word'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['reading'] as Map<String, dynamic>),
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUncheckedUpdateInputToJson(
    WordsDAOUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('dicts', instance.dicts?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOCreateManyInput _$WordsDAOCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOCreateManyInput(
      word: json['word'] as String,
      translation: json['translation'] as String,
      reading: json['reading'] as String,
    );

Map<String, dynamic> _$WordsDAOCreateManyInputToJson(
        WordsDAOCreateManyInput instance) =>
    <String, dynamic>{
      'word': instance.word,
      'translation': instance.translation,
      'reading': instance.reading,
    };

WordsDAOUpdateManyMutationInput _$WordsDAOUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOUpdateManyMutationInput(
      word: json['word'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['reading'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUpdateManyMutationInputToJson(
    WordsDAOUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  return val;
}

WordsDAOUncheckedUpdateManyInput _$WordsDAOUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOUncheckedUpdateManyInput(
      word: json['word'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['reading'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUncheckedUpdateManyInputToJson(
    WordsDAOUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  return val;
}

TextsDAOCreateInput _$TextsDAOCreateInputFromJson(Map<String, dynamic> json) =>
    TextsDAOCreateInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      text: json['text'] as String,
      readers: json['readers'] == null
          ? null
          : UsersDAOCreateNestedManyWithoutTextsInput.fromJson(
              json['readers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOCreateInputToJson(TextsDAOCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['text'] = instance.text;
  writeNotNull('readers', instance.readers?.toJson());
  return val;
}

TextsDAOUncheckedCreateInput _$TextsDAOUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOUncheckedCreateInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      text: json['text'] as String,
      readers: json['readers'] == null
          ? null
          : UsersDAOUncheckedCreateNestedManyWithoutTextsInput.fromJson(
              json['readers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOUncheckedCreateInputToJson(
    TextsDAOUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['text'] = instance.text;
  writeNotNull('readers', instance.readers?.toJson());
  return val;
}

TextsDAOUpdateInput _$TextsDAOUpdateInputFromJson(Map<String, dynamic> json) =>
    TextsDAOUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['text'] as Map<String, dynamic>),
      readers: json['readers'] == null
          ? null
          : UsersDAOUpdateManyWithoutTextsNestedInput.fromJson(
              json['readers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOUpdateInputToJson(TextsDAOUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('readers', instance.readers?.toJson());
  return val;
}

TextsDAOUncheckedUpdateInput _$TextsDAOUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['text'] as Map<String, dynamic>),
      readers: json['readers'] == null
          ? null
          : UsersDAOUncheckedUpdateManyWithoutTextsNestedInput.fromJson(
              json['readers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOUncheckedUpdateInputToJson(
    TextsDAOUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('readers', instance.readers?.toJson());
  return val;
}

TextsDAOCreateManyInput _$TextsDAOCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOCreateManyInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TextsDAOCreateManyInputToJson(
    TextsDAOCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['text'] = instance.text;
  return val;
}

TextsDAOUpdateManyMutationInput _$TextsDAOUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOUpdateManyMutationInputToJson(
    TextsDAOUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

TextsDAOUncheckedUpdateManyInput _$TextsDAOUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOUncheckedUpdateManyInputToJson(
    TextsDAOUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

EnumRoleFilter _$EnumRoleFilterFromJson(Map<String, dynamic> json) =>
    EnumRoleFilter(
      equals: $enumDecodeNullable(_$RoleEnumMap, json['equals']),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      not: $enumDecodeNullable(_$RoleEnumMap, json['not']),
    );

Map<String, dynamic> _$EnumRoleFilterToJson(EnumRoleFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$RoleEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('not', _$RoleEnumMap[instance.not]);
  return val;
}

DictionariesDAORelationFilter _$DictionariesDAORelationFilterFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAORelationFilter(
      $is: json['is'] == null
          ? null
          : DictionariesDAOWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : DictionariesDAOWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionariesDAORelationFilterToJson(
    DictionariesDAORelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

TextsDAOListRelationFilter _$TextsDAOListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    TextsDAOListRelationFilter(
      every: json['every'] == null
          ? null
          : TextsDAOWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : TextsDAOWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : TextsDAOWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOListRelationFilterToJson(
    TextsDAOListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

TextsDAOOrderByRelationAggregateInput
    _$TextsDAOOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$TextsDAOOrderByRelationAggregateInputToJson(
    TextsDAOOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

UsersDAOCountOrderByAggregateInput _$UsersDAOCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      accountName:
          $enumDecodeNullable(_$SortOrderEnumMap, json['account_name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOCountOrderByAggregateInputToJson(
    UsersDAOCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_name', _$SortOrderEnumMap[instance.accountName]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  return val;
}

UsersDAOMaxOrderByAggregateInput _$UsersDAOMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      accountName:
          $enumDecodeNullable(_$SortOrderEnumMap, json['account_name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOMaxOrderByAggregateInputToJson(
    UsersDAOMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_name', _$SortOrderEnumMap[instance.accountName]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  return val;
}

UsersDAOMinOrderByAggregateInput _$UsersDAOMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      accountName:
          $enumDecodeNullable(_$SortOrderEnumMap, json['account_name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      role: $enumDecodeNullable(_$SortOrderEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOMinOrderByAggregateInputToJson(
    UsersDAOMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_name', _$SortOrderEnumMap[instance.accountName]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('role', _$SortOrderEnumMap[instance.role]);
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

EnumRoleWithAggregatesFilter _$EnumRoleWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    EnumRoleWithAggregatesFilter(
      equals: $enumDecodeNullable(_$RoleEnumMap, json['equals']),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      not: $enumDecodeNullable(_$RoleEnumMap, json['not']),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedEnumRoleFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedEnumRoleFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EnumRoleWithAggregatesFilterToJson(
    EnumRoleWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$RoleEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('not', _$RoleEnumMap[instance.not]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

WordsDAOListRelationFilter _$WordsDAOListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    WordsDAOListRelationFilter(
      every: json['every'] == null
          ? null
          : WordsDAOWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : WordsDAOWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : WordsDAOWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOListRelationFilterToJson(
    WordsDAOListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

WordsDAOOrderByRelationAggregateInput
    _$WordsDAOOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$WordsDAOOrderByRelationAggregateInputToJson(
    WordsDAOOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

KanjiDAOCountOrderByAggregateInput _$KanjiDAOCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOCountOrderByAggregateInput(
      glyph: $enumDecodeNullable(_$SortOrderEnumMap, json['glyph']),
      onyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['onyoumi']),
      kunyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['kunyoumi']),
      meaning: $enumDecodeNullable(_$SortOrderEnumMap, json['meaning']),
    );

Map<String, dynamic> _$KanjiDAOCountOrderByAggregateInputToJson(
    KanjiDAOCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', _$SortOrderEnumMap[instance.glyph]);
  writeNotNull('onyoumi', _$SortOrderEnumMap[instance.onyoumi]);
  writeNotNull('kunyoumi', _$SortOrderEnumMap[instance.kunyoumi]);
  writeNotNull('meaning', _$SortOrderEnumMap[instance.meaning]);
  return val;
}

KanjiDAOMaxOrderByAggregateInput _$KanjiDAOMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOMaxOrderByAggregateInput(
      glyph: $enumDecodeNullable(_$SortOrderEnumMap, json['glyph']),
      onyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['onyoumi']),
      kunyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['kunyoumi']),
      meaning: $enumDecodeNullable(_$SortOrderEnumMap, json['meaning']),
    );

Map<String, dynamic> _$KanjiDAOMaxOrderByAggregateInputToJson(
    KanjiDAOMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', _$SortOrderEnumMap[instance.glyph]);
  writeNotNull('onyoumi', _$SortOrderEnumMap[instance.onyoumi]);
  writeNotNull('kunyoumi', _$SortOrderEnumMap[instance.kunyoumi]);
  writeNotNull('meaning', _$SortOrderEnumMap[instance.meaning]);
  return val;
}

KanjiDAOMinOrderByAggregateInput _$KanjiDAOMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOMinOrderByAggregateInput(
      glyph: $enumDecodeNullable(_$SortOrderEnumMap, json['glyph']),
      onyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['onyoumi']),
      kunyoumi: $enumDecodeNullable(_$SortOrderEnumMap, json['kunyoumi']),
      meaning: $enumDecodeNullable(_$SortOrderEnumMap, json['meaning']),
    );

Map<String, dynamic> _$KanjiDAOMinOrderByAggregateInputToJson(
    KanjiDAOMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', _$SortOrderEnumMap[instance.glyph]);
  writeNotNull('onyoumi', _$SortOrderEnumMap[instance.onyoumi]);
  writeNotNull('kunyoumi', _$SortOrderEnumMap[instance.kunyoumi]);
  writeNotNull('meaning', _$SortOrderEnumMap[instance.meaning]);
  return val;
}

UsersDAORelationFilter _$UsersDAORelationFilterFromJson(
        Map<String, dynamic> json) =>
    UsersDAORelationFilter(
      $is: json['is'] == null
          ? null
          : UsersDAOWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UsersDAOWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAORelationFilterToJson(
    UsersDAORelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

DictionariesDAOCountOrderByAggregateInput
    _$DictionariesDAOCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['owner_id']),
        );

Map<String, dynamic> _$DictionariesDAOCountOrderByAggregateInputToJson(
    DictionariesDAOCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('owner_id', _$SortOrderEnumMap[instance.ownerId]);
  return val;
}

DictionariesDAOMaxOrderByAggregateInput
    _$DictionariesDAOMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['owner_id']),
        );

Map<String, dynamic> _$DictionariesDAOMaxOrderByAggregateInputToJson(
    DictionariesDAOMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('owner_id', _$SortOrderEnumMap[instance.ownerId]);
  return val;
}

DictionariesDAOMinOrderByAggregateInput
    _$DictionariesDAOMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
          ownerId: $enumDecodeNullable(_$SortOrderEnumMap, json['owner_id']),
        );

Map<String, dynamic> _$DictionariesDAOMinOrderByAggregateInputToJson(
    DictionariesDAOMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('owner_id', _$SortOrderEnumMap[instance.ownerId]);
  return val;
}

DictionariesDAOListRelationFilter _$DictionariesDAOListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOListRelationFilter(
      every: json['every'] == null
          ? null
          : DictionariesDAOWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : DictionariesDAOWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : DictionariesDAOWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionariesDAOListRelationFilterToJson(
    DictionariesDAOListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

KanjiDAOListRelationFilter _$KanjiDAOListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOListRelationFilter(
      every: json['every'] == null
          ? null
          : KanjiDAOWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : KanjiDAOWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : KanjiDAOWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOListRelationFilterToJson(
    KanjiDAOListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

DictionariesDAOOrderByRelationAggregateInput
    _$DictionariesDAOOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$DictionariesDAOOrderByRelationAggregateInputToJson(
    DictionariesDAOOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

KanjiDAOOrderByRelationAggregateInput
    _$KanjiDAOOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$KanjiDAOOrderByRelationAggregateInputToJson(
    KanjiDAOOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

WordsDAOCountOrderByAggregateInput _$WordsDAOCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOCountOrderByAggregateInput(
      word: $enumDecodeNullable(_$SortOrderEnumMap, json['word']),
      translation: $enumDecodeNullable(_$SortOrderEnumMap, json['translation']),
      reading: $enumDecodeNullable(_$SortOrderEnumMap, json['reading']),
    );

Map<String, dynamic> _$WordsDAOCountOrderByAggregateInputToJson(
    WordsDAOCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', _$SortOrderEnumMap[instance.word]);
  writeNotNull('translation', _$SortOrderEnumMap[instance.translation]);
  writeNotNull('reading', _$SortOrderEnumMap[instance.reading]);
  return val;
}

WordsDAOMaxOrderByAggregateInput _$WordsDAOMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOMaxOrderByAggregateInput(
      word: $enumDecodeNullable(_$SortOrderEnumMap, json['word']),
      translation: $enumDecodeNullable(_$SortOrderEnumMap, json['translation']),
      reading: $enumDecodeNullable(_$SortOrderEnumMap, json['reading']),
    );

Map<String, dynamic> _$WordsDAOMaxOrderByAggregateInputToJson(
    WordsDAOMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', _$SortOrderEnumMap[instance.word]);
  writeNotNull('translation', _$SortOrderEnumMap[instance.translation]);
  writeNotNull('reading', _$SortOrderEnumMap[instance.reading]);
  return val;
}

WordsDAOMinOrderByAggregateInput _$WordsDAOMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOMinOrderByAggregateInput(
      word: $enumDecodeNullable(_$SortOrderEnumMap, json['word']),
      translation: $enumDecodeNullable(_$SortOrderEnumMap, json['translation']),
      reading: $enumDecodeNullable(_$SortOrderEnumMap, json['reading']),
    );

Map<String, dynamic> _$WordsDAOMinOrderByAggregateInputToJson(
    WordsDAOMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', _$SortOrderEnumMap[instance.word]);
  writeNotNull('translation', _$SortOrderEnumMap[instance.translation]);
  writeNotNull('reading', _$SortOrderEnumMap[instance.reading]);
  return val;
}

UsersDAOListRelationFilter _$UsersDAOListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    UsersDAOListRelationFilter(
      every: json['every'] == null
          ? null
          : UsersDAOWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : UsersDAOWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : UsersDAOWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOListRelationFilterToJson(
    UsersDAOListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

UsersDAOOrderByRelationAggregateInput
    _$UsersDAOOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$UsersDAOOrderByRelationAggregateInputToJson(
    UsersDAOOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

TextsDAOCountOrderByAggregateInput _$TextsDAOCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      text: $enumDecodeNullable(_$SortOrderEnumMap, json['text']),
    );

Map<String, dynamic> _$TextsDAOCountOrderByAggregateInputToJson(
    TextsDAOCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('text', _$SortOrderEnumMap[instance.text]);
  return val;
}

TextsDAOMaxOrderByAggregateInput _$TextsDAOMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      text: $enumDecodeNullable(_$SortOrderEnumMap, json['text']),
    );

Map<String, dynamic> _$TextsDAOMaxOrderByAggregateInputToJson(
    TextsDAOMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('text', _$SortOrderEnumMap[instance.text]);
  return val;
}

TextsDAOMinOrderByAggregateInput _$TextsDAOMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      text: $enumDecodeNullable(_$SortOrderEnumMap, json['text']),
    );

Map<String, dynamic> _$TextsDAOMinOrderByAggregateInputToJson(
    TextsDAOMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('text', _$SortOrderEnumMap[instance.text]);
  return val;
}

DictionariesDAOCreateNestedOneWithoutOwnerInput
    _$DictionariesDAOCreateNestedOneWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCreateNestedOneWithoutOwnerInput(
          create: json['create'] == null
              ? null
              : DictionariesDAOCreateWithoutOwnerInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : DictionariesDAOCreateOrConnectWithoutOwnerInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : DictionariesDAOWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOCreateNestedOneWithoutOwnerInputToJson(
    DictionariesDAOCreateNestedOneWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

TextsDAOCreateNestedManyWithoutReadersInput
    _$TextsDAOCreateNestedManyWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOCreateNestedManyWithoutReadersInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TextsDAOCreateWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TextsDAOCreateOrConnectWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TextsDAOCreateNestedManyWithoutReadersInputToJson(
    TextsDAOCreateNestedManyWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput
    _$DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput(
          create: json['create'] == null
              ? null
              : DictionariesDAOCreateWithoutOwnerInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : DictionariesDAOCreateOrConnectWithoutOwnerInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : DictionariesDAOWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInputToJson(
        DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

TextsDAOUncheckedCreateNestedManyWithoutReadersInput
    _$TextsDAOUncheckedCreateNestedManyWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUncheckedCreateNestedManyWithoutReadersInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TextsDAOCreateWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TextsDAOCreateOrConnectWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$TextsDAOUncheckedCreateNestedManyWithoutReadersInputToJson(
        TextsDAOUncheckedCreateNestedManyWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

EnumRoleFieldUpdateOperationsInput _$EnumRoleFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    EnumRoleFieldUpdateOperationsInput(
      set: $enumDecodeNullable(_$RoleEnumMap, json['set']),
    );

Map<String, dynamic> _$EnumRoleFieldUpdateOperationsInputToJson(
    EnumRoleFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', _$RoleEnumMap[instance.set]);
  return val;
}

DictionariesDAOUpdateOneWithoutOwnerNestedInput
    _$DictionariesDAOUpdateOneWithoutOwnerNestedInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateOneWithoutOwnerNestedInput(
          create: json['create'] == null
              ? null
              : DictionariesDAOCreateWithoutOwnerInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : DictionariesDAOCreateOrConnectWithoutOwnerInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : DictionariesDAOUpsertWithoutOwnerInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] as bool?,
          delete: json['delete'] as bool?,
          connect: json['connect'] == null
              ? null
              : DictionariesDAOWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : DictionariesDAOUpdateWithoutOwnerInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUpdateOneWithoutOwnerNestedInputToJson(
    DictionariesDAOUpdateOneWithoutOwnerNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect);
  writeNotNull('delete', instance.delete);
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

TextsDAOUpdateManyWithoutReadersNestedInput
    _$TextsDAOUpdateManyWithoutReadersNestedInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUpdateManyWithoutReadersNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TextsDAOCreateWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TextsDAOCreateOrConnectWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TextsDAOUpsertWithWhereUniqueWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TextsDAOUpdateWithWhereUniqueWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TextsDAOUpdateManyWithWhereWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              TextsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TextsDAOUpdateManyWithoutReadersNestedInputToJson(
    TextsDAOUpdateManyWithoutReadersNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput
    _$DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput(
          create: json['create'] == null
              ? null
              : DictionariesDAOCreateWithoutOwnerInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : DictionariesDAOCreateOrConnectWithoutOwnerInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : DictionariesDAOUpsertWithoutOwnerInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] as bool?,
          delete: json['delete'] as bool?,
          connect: json['connect'] == null
              ? null
              : DictionariesDAOWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : DictionariesDAOUpdateWithoutOwnerInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInputToJson(
        DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect);
  writeNotNull('delete', instance.delete);
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

TextsDAOUncheckedUpdateManyWithoutReadersNestedInput
    _$TextsDAOUncheckedUpdateManyWithoutReadersNestedInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUncheckedUpdateManyWithoutReadersNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TextsDAOCreateWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TextsDAOCreateOrConnectWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TextsDAOUpsertWithWhereUniqueWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              TextsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TextsDAOUpdateWithWhereUniqueWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TextsDAOUpdateManyWithWhereWithoutReadersInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              TextsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$TextsDAOUncheckedUpdateManyWithoutReadersNestedInputToJson(
        TextsDAOUncheckedUpdateManyWithoutReadersNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

WordsDAOCreateNestedManyWithoutKanjisInput
    _$WordsDAOCreateNestedManyWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOCreateNestedManyWithoutKanjisInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$WordsDAOCreateNestedManyWithoutKanjisInputToJson(
    WordsDAOCreateNestedManyWithoutKanjisInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

WordsDAOUncheckedCreateNestedManyWithoutKanjisInput
    _$WordsDAOUncheckedCreateNestedManyWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedCreateNestedManyWithoutKanjisInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$WordsDAOUncheckedCreateNestedManyWithoutKanjisInputToJson(
        WordsDAOUncheckedCreateNestedManyWithoutKanjisInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

WordsDAOUpdateManyWithoutKanjisNestedInput
    _$WordsDAOUpdateManyWithoutKanjisNestedInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpdateManyWithoutKanjisNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpsertWithWhereUniqueWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateWithWhereUniqueWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateManyWithWhereWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$WordsDAOUpdateManyWithoutKanjisNestedInputToJson(
    WordsDAOUpdateManyWithoutKanjisNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput
    _$WordsDAOUncheckedUpdateManyWithoutKanjisNestedInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpsertWithWhereUniqueWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateWithWhereUniqueWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateManyWithWhereWithoutKanjisInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$WordsDAOUncheckedUpdateManyWithoutKanjisNestedInputToJson(
        WordsDAOUncheckedUpdateManyWithoutKanjisNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UsersDAOCreateNestedOneWithoutDictionaryInput
    _$UsersDAOCreateNestedOneWithoutDictionaryInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOCreateNestedOneWithoutDictionaryInput(
          create: json['create'] == null
              ? null
              : UsersDAOCreateWithoutDictionaryInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UsersDAOCreateOrConnectWithoutDictionaryInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UsersDAOWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOCreateNestedOneWithoutDictionaryInputToJson(
    UsersDAOCreateNestedOneWithoutDictionaryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

WordsDAOCreateNestedManyWithoutDictsInput
    _$WordsDAOCreateNestedManyWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOCreateNestedManyWithoutDictsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$WordsDAOCreateNestedManyWithoutDictsInputToJson(
    WordsDAOCreateNestedManyWithoutDictsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

WordsDAOUncheckedCreateNestedManyWithoutDictsInput
    _$WordsDAOUncheckedCreateNestedManyWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedCreateNestedManyWithoutDictsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$WordsDAOUncheckedCreateNestedManyWithoutDictsInputToJson(
    WordsDAOUncheckedCreateNestedManyWithoutDictsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput
    _$UsersDAOUpdateOneRequiredWithoutDictionaryNestedInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput(
          create: json['create'] == null
              ? null
              : UsersDAOCreateWithoutDictionaryInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UsersDAOCreateOrConnectWithoutDictionaryInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UsersDAOUpsertWithoutDictionaryInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UsersDAOWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UsersDAOUpdateWithoutDictionaryInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$UsersDAOUpdateOneRequiredWithoutDictionaryNestedInputToJson(
        UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

WordsDAOUpdateManyWithoutDictsNestedInput
    _$WordsDAOUpdateManyWithoutDictsNestedInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpdateManyWithoutDictsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpsertWithWhereUniqueWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateWithWhereUniqueWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateManyWithWhereWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$WordsDAOUpdateManyWithoutDictsNestedInputToJson(
    WordsDAOUpdateManyWithoutDictsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

WordsDAOUncheckedUpdateManyWithoutDictsNestedInput
    _$WordsDAOUncheckedUpdateManyWithoutDictsNestedInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedUpdateManyWithoutDictsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              WordsDAOCreateWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => WordsDAOCreateOrConnectWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpsertWithWhereUniqueWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              WordsDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateWithWhereUniqueWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOUpdateManyWithWhereWithoutDictsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$WordsDAOUncheckedUpdateManyWithoutDictsNestedInputToJson(
    WordsDAOUncheckedUpdateManyWithoutDictsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

DictionariesDAOCreateNestedManyWithoutWordsInput
    _$DictionariesDAOCreateNestedManyWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCreateNestedManyWithoutWordsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DictionariesDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$DictionariesDAOCreateNestedManyWithoutWordsInputToJson(
    DictionariesDAOCreateNestedManyWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

KanjiDAOCreateNestedManyWithoutWordsInput
    _$KanjiDAOCreateNestedManyWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOCreateNestedManyWithoutWordsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              KanjiDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => KanjiDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$KanjiDAOCreateNestedManyWithoutWordsInputToJson(
    KanjiDAOCreateNestedManyWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput
    _$DictionariesDAOUncheckedCreateNestedManyWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DictionariesDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$DictionariesDAOUncheckedCreateNestedManyWithoutWordsInputToJson(
        DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

KanjiDAOUncheckedCreateNestedManyWithoutWordsInput
    _$KanjiDAOUncheckedCreateNestedManyWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUncheckedCreateNestedManyWithoutWordsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              KanjiDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => KanjiDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$KanjiDAOUncheckedCreateNestedManyWithoutWordsInputToJson(
    KanjiDAOUncheckedCreateNestedManyWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

DictionariesDAOUpdateManyWithoutWordsNestedInput
    _$DictionariesDAOUpdateManyWithoutWordsNestedInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateManyWithoutWordsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DictionariesDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOUpdateManyWithWhereWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOScalarWhereInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$DictionariesDAOUpdateManyWithoutWordsNestedInputToJson(
    DictionariesDAOUpdateManyWithoutWordsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

KanjiDAOUpdateManyWithoutWordsNestedInput
    _$KanjiDAOUpdateManyWithoutWordsNestedInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUpdateManyWithoutWordsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              KanjiDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => KanjiDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              KanjiDAOUpsertWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              KanjiDAOUpdateWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              KanjiDAOUpdateManyWithWhereWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              KanjiDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$KanjiDAOUpdateManyWithoutWordsNestedInputToJson(
    KanjiDAOUpdateManyWithoutWordsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput
    _$DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DictionariesDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOUpdateManyWithWhereWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              DictionariesDAOScalarWhereInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInputToJson(
        DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput
    _$KanjiDAOUncheckedUpdateManyWithoutWordsNestedInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              KanjiDAOCreateWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => KanjiDAOCreateOrConnectWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              KanjiDAOUpsertWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              KanjiDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              KanjiDAOUpdateWithWhereUniqueWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              KanjiDAOUpdateManyWithWhereWithoutWordsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              KanjiDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$KanjiDAOUncheckedUpdateManyWithoutWordsNestedInputToJson(
    KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UsersDAOCreateNestedManyWithoutTextsInput
    _$UsersDAOCreateNestedManyWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOCreateNestedManyWithoutTextsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              UsersDAOCreateWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => UsersDAOCreateOrConnectWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$UsersDAOCreateNestedManyWithoutTextsInputToJson(
    UsersDAOCreateNestedManyWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

UsersDAOUncheckedCreateNestedManyWithoutTextsInput
    _$UsersDAOUncheckedCreateNestedManyWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedCreateNestedManyWithoutTextsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              UsersDAOCreateWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => UsersDAOCreateOrConnectWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$UsersDAOUncheckedCreateNestedManyWithoutTextsInputToJson(
    UsersDAOUncheckedCreateNestedManyWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

UsersDAOUpdateManyWithoutTextsNestedInput
    _$UsersDAOUpdateManyWithoutTextsNestedInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUpdateManyWithoutTextsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              UsersDAOCreateWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => UsersDAOCreateOrConnectWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              UsersDAOUpsertWithWhereUniqueWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              UsersDAOUpdateWithWhereUniqueWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              UsersDAOUpdateManyWithWhereWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              UsersDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$UsersDAOUpdateManyWithoutTextsNestedInputToJson(
    UsersDAOUpdateManyWithoutTextsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UsersDAOUncheckedUpdateManyWithoutTextsNestedInput
    _$UsersDAOUncheckedUpdateManyWithoutTextsNestedInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedUpdateManyWithoutTextsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              UsersDAOCreateWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => UsersDAOCreateOrConnectWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              UsersDAOUpsertWithWhereUniqueWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              UsersDAOWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              UsersDAOUpdateWithWhereUniqueWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              UsersDAOUpdateManyWithWhereWithoutTextsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              UsersDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$UsersDAOUncheckedUpdateManyWithoutTextsNestedInputToJson(
    UsersDAOUncheckedUpdateManyWithoutTextsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedEnumRoleFilter _$NestedEnumRoleFilterFromJson(
        Map<String, dynamic> json) =>
    NestedEnumRoleFilter(
      equals: $enumDecodeNullable(_$RoleEnumMap, json['equals']),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      not: $enumDecodeNullable(_$RoleEnumMap, json['not']),
    );

Map<String, dynamic> _$NestedEnumRoleFilterToJson(
    NestedEnumRoleFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$RoleEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('not', _$RoleEnumMap[instance.not]);
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedEnumRoleWithAggregatesFilter _$NestedEnumRoleWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedEnumRoleWithAggregatesFilter(
      equals: $enumDecodeNullable(_$RoleEnumMap, json['equals']),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e)),
      not: $enumDecodeNullable(_$RoleEnumMap, json['not']),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedEnumRoleFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedEnumRoleFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedEnumRoleWithAggregatesFilterToJson(
    NestedEnumRoleWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', _$RoleEnumMap[instance.equals]);
  writeNotNull('in', instance.$in?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => _$RoleEnumMap[e]!).toList());
  writeNotNull('not', _$RoleEnumMap[instance.not]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DictionariesDAOCreateWithoutOwnerInput
    _$DictionariesDAOCreateWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCreateWithoutOwnerInput(
          id: json['id'] as String?,
          title: json['title'] as String,
          words: json['words'] == null
              ? null
              : WordsDAOCreateNestedManyWithoutDictsInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOCreateWithoutOwnerInputToJson(
    DictionariesDAOCreateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOUncheckedCreateWithoutOwnerInput
    _$DictionariesDAOUncheckedCreateWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedCreateWithoutOwnerInput(
          id: json['id'] as String?,
          title: json['title'] as String,
          words: json['words'] == null
              ? null
              : WordsDAOUncheckedCreateNestedManyWithoutDictsInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUncheckedCreateWithoutOwnerInputToJson(
    DictionariesDAOUncheckedCreateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOCreateOrConnectWithoutOwnerInput
    _$DictionariesDAOCreateOrConnectWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCreateOrConnectWithoutOwnerInput(
          where: DictionariesDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: DictionariesDAOCreateWithoutOwnerInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOCreateOrConnectWithoutOwnerInputToJson(
        DictionariesDAOCreateOrConnectWithoutOwnerInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

TextsDAOCreateWithoutReadersInput _$TextsDAOCreateWithoutReadersInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOCreateWithoutReadersInput(
      id: json['id'] as String?,
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TextsDAOCreateWithoutReadersInputToJson(
    TextsDAOCreateWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['text'] = instance.text;
  return val;
}

TextsDAOUncheckedCreateWithoutReadersInput
    _$TextsDAOUncheckedCreateWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUncheckedCreateWithoutReadersInput(
          id: json['id'] as String?,
          title: json['title'] as String,
          text: json['text'] as String,
        );

Map<String, dynamic> _$TextsDAOUncheckedCreateWithoutReadersInputToJson(
    TextsDAOUncheckedCreateWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['text'] = instance.text;
  return val;
}

TextsDAOCreateOrConnectWithoutReadersInput
    _$TextsDAOCreateOrConnectWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOCreateOrConnectWithoutReadersInput(
          where: TextsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: TextsDAOCreateWithoutReadersInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOCreateOrConnectWithoutReadersInputToJson(
        TextsDAOCreateOrConnectWithoutReadersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

DictionariesDAOUpsertWithoutOwnerInput
    _$DictionariesDAOUpsertWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpsertWithoutOwnerInput(
          update: DictionariesDAOUpdateWithoutOwnerInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: DictionariesDAOCreateWithoutOwnerInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUpsertWithoutOwnerInputToJson(
        DictionariesDAOUpsertWithoutOwnerInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

DictionariesDAOUpdateWithoutOwnerInput
    _$DictionariesDAOUpdateWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateWithoutOwnerInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          words: json['words'] == null
              ? null
              : WordsDAOUpdateManyWithoutDictsNestedInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUpdateWithoutOwnerInputToJson(
    DictionariesDAOUpdateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

DictionariesDAOUncheckedUpdateWithoutOwnerInput
    _$DictionariesDAOUncheckedUpdateWithoutOwnerInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateWithoutOwnerInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          words: json['words'] == null
              ? null
              : WordsDAOUncheckedUpdateManyWithoutDictsNestedInput.fromJson(
                  json['words'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUncheckedUpdateWithoutOwnerInputToJson(
    DictionariesDAOUncheckedUpdateWithoutOwnerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('words', instance.words?.toJson());
  return val;
}

TextsDAOUpsertWithWhereUniqueWithoutReadersInput
    _$TextsDAOUpsertWithWhereUniqueWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUpsertWithWhereUniqueWithoutReadersInput(
          where: TextsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: TextsDAOUpdateWithoutReadersInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: TextsDAOCreateWithoutReadersInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOUpsertWithWhereUniqueWithoutReadersInputToJson(
        TextsDAOUpsertWithWhereUniqueWithoutReadersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

TextsDAOUpdateWithWhereUniqueWithoutReadersInput
    _$TextsDAOUpdateWithWhereUniqueWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUpdateWithWhereUniqueWithoutReadersInput(
          where: TextsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TextsDAOUpdateWithoutReadersInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOUpdateWithWhereUniqueWithoutReadersInputToJson(
        TextsDAOUpdateWithWhereUniqueWithoutReadersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TextsDAOUpdateManyWithWhereWithoutReadersInput
    _$TextsDAOUpdateManyWithWhereWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUpdateManyWithWhereWithoutReadersInput(
          where: TextsDAOScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TextsDAOUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOUpdateManyWithWhereWithoutReadersInputToJson(
        TextsDAOUpdateManyWithWhereWithoutReadersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TextsDAOScalarWhereInput _$TextsDAOScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => TextsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => TextsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => TextsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFilter.fromJson(json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOScalarWhereInputToJson(
    TextsDAOScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

WordsDAOCreateWithoutKanjisInput _$WordsDAOCreateWithoutKanjisInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOCreateWithoutKanjisInput(
      word: json['word'] as String,
      translation: json['translation'] as String,
      reading: json['reading'] as String,
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOCreateNestedManyWithoutWordsInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOCreateWithoutKanjisInputToJson(
    WordsDAOCreateWithoutKanjisInput instance) {
  final val = <String, dynamic>{
    'word': instance.word,
    'translation': instance.translation,
    'reading': instance.reading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dicts', instance.dicts?.toJson());
  return val;
}

WordsDAOUncheckedCreateWithoutKanjisInput
    _$WordsDAOUncheckedCreateWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedCreateWithoutKanjisInput(
          word: json['word'] as String,
          translation: json['translation'] as String,
          reading: json['reading'] as String,
          dicts: json['dicts'] == null
              ? null
              : DictionariesDAOUncheckedCreateNestedManyWithoutWordsInput
                  .fromJson(json['dicts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUncheckedCreateWithoutKanjisInputToJson(
    WordsDAOUncheckedCreateWithoutKanjisInput instance) {
  final val = <String, dynamic>{
    'word': instance.word,
    'translation': instance.translation,
    'reading': instance.reading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dicts', instance.dicts?.toJson());
  return val;
}

WordsDAOCreateOrConnectWithoutKanjisInput
    _$WordsDAOCreateOrConnectWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOCreateOrConnectWithoutKanjisInput(
          where: WordsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: WordsDAOCreateWithoutKanjisInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOCreateOrConnectWithoutKanjisInputToJson(
        WordsDAOCreateOrConnectWithoutKanjisInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

WordsDAOUpsertWithWhereUniqueWithoutKanjisInput
    _$WordsDAOUpsertWithWhereUniqueWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpsertWithWhereUniqueWithoutKanjisInput(
          where: WordsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: WordsDAOUpdateWithoutKanjisInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: WordsDAOCreateWithoutKanjisInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUpsertWithWhereUniqueWithoutKanjisInputToJson(
        WordsDAOUpsertWithWhereUniqueWithoutKanjisInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

WordsDAOUpdateWithWhereUniqueWithoutKanjisInput
    _$WordsDAOUpdateWithWhereUniqueWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpdateWithWhereUniqueWithoutKanjisInput(
          where: WordsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: WordsDAOUpdateWithoutKanjisInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUpdateWithWhereUniqueWithoutKanjisInputToJson(
        WordsDAOUpdateWithWhereUniqueWithoutKanjisInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

WordsDAOUpdateManyWithWhereWithoutKanjisInput
    _$WordsDAOUpdateManyWithWhereWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpdateManyWithWhereWithoutKanjisInput(
          where: WordsDAOScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: WordsDAOUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUpdateManyWithWhereWithoutKanjisInputToJson(
        WordsDAOUpdateManyWithWhereWithoutKanjisInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

WordsDAOScalarWhereInput _$WordsDAOScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => WordsDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      word: json['word'] == null
          ? null
          : StringFilter.fromJson(json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFilter.fromJson(json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFilter.fromJson(json['reading'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOScalarWhereInputToJson(
    WordsDAOScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  return val;
}

UsersDAOCreateWithoutDictionaryInput
    _$UsersDAOCreateWithoutDictionaryInputFromJson(Map<String, dynamic> json) =>
        UsersDAOCreateWithoutDictionaryInput(
          id: json['id'] as String?,
          accountName: json['account_name'] as String,
          password: json['password'] as String,
          role: $enumDecode(_$RoleEnumMap, json['role']),
          texts: json['texts'] == null
              ? null
              : TextsDAOCreateNestedManyWithoutReadersInput.fromJson(
                  json['texts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOCreateWithoutDictionaryInputToJson(
    UsersDAOCreateWithoutDictionaryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOUncheckedCreateWithoutDictionaryInput
    _$UsersDAOUncheckedCreateWithoutDictionaryInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedCreateWithoutDictionaryInput(
          id: json['id'] as String?,
          accountName: json['account_name'] as String,
          password: json['password'] as String,
          role: $enumDecode(_$RoleEnumMap, json['role']),
          texts: json['texts'] == null
              ? null
              : TextsDAOUncheckedCreateNestedManyWithoutReadersInput.fromJson(
                  json['texts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUncheckedCreateWithoutDictionaryInputToJson(
    UsersDAOUncheckedCreateWithoutDictionaryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOCreateOrConnectWithoutDictionaryInput
    _$UsersDAOCreateOrConnectWithoutDictionaryInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOCreateOrConnectWithoutDictionaryInput(
          where: UsersDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UsersDAOCreateWithoutDictionaryInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOCreateOrConnectWithoutDictionaryInputToJson(
        UsersDAOCreateOrConnectWithoutDictionaryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

WordsDAOCreateWithoutDictsInput _$WordsDAOCreateWithoutDictsInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOCreateWithoutDictsInput(
      word: json['word'] as String,
      translation: json['translation'] as String,
      reading: json['reading'] as String,
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOCreateNestedManyWithoutWordsInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOCreateWithoutDictsInputToJson(
    WordsDAOCreateWithoutDictsInput instance) {
  final val = <String, dynamic>{
    'word': instance.word,
    'translation': instance.translation,
    'reading': instance.reading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOUncheckedCreateWithoutDictsInput
    _$WordsDAOUncheckedCreateWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedCreateWithoutDictsInput(
          word: json['word'] as String,
          translation: json['translation'] as String,
          reading: json['reading'] as String,
          kanjis: json['kanjis'] == null
              ? null
              : KanjiDAOUncheckedCreateNestedManyWithoutWordsInput.fromJson(
                  json['kanjis'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUncheckedCreateWithoutDictsInputToJson(
    WordsDAOUncheckedCreateWithoutDictsInput instance) {
  final val = <String, dynamic>{
    'word': instance.word,
    'translation': instance.translation,
    'reading': instance.reading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOCreateOrConnectWithoutDictsInput
    _$WordsDAOCreateOrConnectWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOCreateOrConnectWithoutDictsInput(
          where: WordsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: WordsDAOCreateWithoutDictsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOCreateOrConnectWithoutDictsInputToJson(
        WordsDAOCreateOrConnectWithoutDictsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

UsersDAOUpsertWithoutDictionaryInput
    _$UsersDAOUpsertWithoutDictionaryInputFromJson(Map<String, dynamic> json) =>
        UsersDAOUpsertWithoutDictionaryInput(
          update: UsersDAOUpdateWithoutDictionaryInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: UsersDAOCreateWithoutDictionaryInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUpsertWithoutDictionaryInputToJson(
        UsersDAOUpsertWithoutDictionaryInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

UsersDAOUpdateWithoutDictionaryInput
    _$UsersDAOUpdateWithoutDictionaryInputFromJson(Map<String, dynamic> json) =>
        UsersDAOUpdateWithoutDictionaryInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          accountName: json['account_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['account_name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
          texts: json['texts'] == null
              ? null
              : TextsDAOUpdateManyWithoutReadersNestedInput.fromJson(
                  json['texts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUpdateWithoutDictionaryInputToJson(
    UsersDAOUpdateWithoutDictionaryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

UsersDAOUncheckedUpdateWithoutDictionaryInput
    _$UsersDAOUncheckedUpdateWithoutDictionaryInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedUpdateWithoutDictionaryInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          accountName: json['account_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['account_name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
          texts: json['texts'] == null
              ? null
              : TextsDAOUncheckedUpdateManyWithoutReadersNestedInput.fromJson(
                  json['texts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUncheckedUpdateWithoutDictionaryInputToJson(
    UsersDAOUncheckedUpdateWithoutDictionaryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('texts', instance.texts?.toJson());
  return val;
}

WordsDAOUpsertWithWhereUniqueWithoutDictsInput
    _$WordsDAOUpsertWithWhereUniqueWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpsertWithWhereUniqueWithoutDictsInput(
          where: WordsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: WordsDAOUpdateWithoutDictsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: WordsDAOCreateWithoutDictsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUpsertWithWhereUniqueWithoutDictsInputToJson(
        WordsDAOUpsertWithWhereUniqueWithoutDictsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

WordsDAOUpdateWithWhereUniqueWithoutDictsInput
    _$WordsDAOUpdateWithWhereUniqueWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpdateWithWhereUniqueWithoutDictsInput(
          where: WordsDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: WordsDAOUpdateWithoutDictsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUpdateWithWhereUniqueWithoutDictsInputToJson(
        WordsDAOUpdateWithWhereUniqueWithoutDictsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

WordsDAOUpdateManyWithWhereWithoutDictsInput
    _$WordsDAOUpdateManyWithWhereWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUpdateManyWithWhereWithoutDictsInput(
          where: WordsDAOScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: WordsDAOUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUpdateManyWithWhereWithoutDictsInputToJson(
        WordsDAOUpdateManyWithWhereWithoutDictsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

DictionariesDAOCreateWithoutWordsInput
    _$DictionariesDAOCreateWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCreateWithoutWordsInput(
          id: json['id'] as String?,
          title: json['title'] as String,
          owner: UsersDAOCreateNestedOneWithoutDictionaryInput.fromJson(
              json['owner'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOCreateWithoutWordsInputToJson(
    DictionariesDAOCreateWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['owner'] = instance.owner.toJson();
  return val;
}

DictionariesDAOUncheckedCreateWithoutWordsInput
    _$DictionariesDAOUncheckedCreateWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedCreateWithoutWordsInput(
          id: json['id'] as String?,
          title: json['title'] as String,
          ownerId: json['owner_id'] as String,
        );

Map<String, dynamic> _$DictionariesDAOUncheckedCreateWithoutWordsInputToJson(
    DictionariesDAOUncheckedCreateWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['owner_id'] = instance.ownerId;
  return val;
}

DictionariesDAOCreateOrConnectWithoutWordsInput
    _$DictionariesDAOCreateOrConnectWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOCreateOrConnectWithoutWordsInput(
          where: DictionariesDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: DictionariesDAOCreateWithoutWordsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOCreateOrConnectWithoutWordsInputToJson(
        DictionariesDAOCreateOrConnectWithoutWordsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

KanjiDAOCreateWithoutWordsInput _$KanjiDAOCreateWithoutWordsInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOCreateWithoutWordsInput(
      glyph: json['glyph'] as String,
      onyoumi: json['onyoumi'] as String,
      kunyoumi: json['kunyoumi'] as String,
      meaning: json['meaning'] as String,
    );

Map<String, dynamic> _$KanjiDAOCreateWithoutWordsInputToJson(
        KanjiDAOCreateWithoutWordsInput instance) =>
    <String, dynamic>{
      'glyph': instance.glyph,
      'onyoumi': instance.onyoumi,
      'kunyoumi': instance.kunyoumi,
      'meaning': instance.meaning,
    };

KanjiDAOUncheckedCreateWithoutWordsInput
    _$KanjiDAOUncheckedCreateWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUncheckedCreateWithoutWordsInput(
          glyph: json['glyph'] as String,
          onyoumi: json['onyoumi'] as String,
          kunyoumi: json['kunyoumi'] as String,
          meaning: json['meaning'] as String,
        );

Map<String, dynamic> _$KanjiDAOUncheckedCreateWithoutWordsInputToJson(
        KanjiDAOUncheckedCreateWithoutWordsInput instance) =>
    <String, dynamic>{
      'glyph': instance.glyph,
      'onyoumi': instance.onyoumi,
      'kunyoumi': instance.kunyoumi,
      'meaning': instance.meaning,
    };

KanjiDAOCreateOrConnectWithoutWordsInput
    _$KanjiDAOCreateOrConnectWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOCreateOrConnectWithoutWordsInput(
          where: KanjiDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: KanjiDAOCreateWithoutWordsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOCreateOrConnectWithoutWordsInputToJson(
        KanjiDAOCreateOrConnectWithoutWordsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput
    _$DictionariesDAOUpsertWithWhereUniqueWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput(
          where: DictionariesDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: DictionariesDAOUpdateWithoutWordsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: DictionariesDAOCreateWithoutWordsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$DictionariesDAOUpsertWithWhereUniqueWithoutWordsInputToJson(
            DictionariesDAOUpsertWithWhereUniqueWithoutWordsInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput
    _$DictionariesDAOUpdateWithWhereUniqueWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput(
          where: DictionariesDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: DictionariesDAOUpdateWithoutWordsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$DictionariesDAOUpdateWithWhereUniqueWithoutWordsInputToJson(
            DictionariesDAOUpdateWithWhereUniqueWithoutWordsInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

DictionariesDAOUpdateManyWithWhereWithoutWordsInput
    _$DictionariesDAOUpdateManyWithWhereWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateManyWithWhereWithoutWordsInput(
          where: DictionariesDAOScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: DictionariesDAOUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$DictionariesDAOUpdateManyWithWhereWithoutWordsInputToJson(
            DictionariesDAOUpdateManyWithWhereWithoutWordsInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

DictionariesDAOScalarWhereInput _$DictionariesDAOScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          DictionariesDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          DictionariesDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          DictionariesDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      ownerId: json['owner_id'] == null
          ? null
          : StringFilter.fromJson(json['owner_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionariesDAOScalarWhereInputToJson(
    DictionariesDAOScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  return val;
}

KanjiDAOUpsertWithWhereUniqueWithoutWordsInput
    _$KanjiDAOUpsertWithWhereUniqueWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUpsertWithWhereUniqueWithoutWordsInput(
          where: KanjiDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: KanjiDAOUpdateWithoutWordsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: KanjiDAOCreateWithoutWordsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOUpsertWithWhereUniqueWithoutWordsInputToJson(
        KanjiDAOUpsertWithWhereUniqueWithoutWordsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

KanjiDAOUpdateWithWhereUniqueWithoutWordsInput
    _$KanjiDAOUpdateWithWhereUniqueWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUpdateWithWhereUniqueWithoutWordsInput(
          where: KanjiDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: KanjiDAOUpdateWithoutWordsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOUpdateWithWhereUniqueWithoutWordsInputToJson(
        KanjiDAOUpdateWithWhereUniqueWithoutWordsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

KanjiDAOUpdateManyWithWhereWithoutWordsInput
    _$KanjiDAOUpdateManyWithWhereWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUpdateManyWithWhereWithoutWordsInput(
          where: KanjiDAOScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: KanjiDAOUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOUpdateManyWithWhereWithoutWordsInputToJson(
        KanjiDAOUpdateManyWithWhereWithoutWordsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

KanjiDAOScalarWhereInput _$KanjiDAOScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => KanjiDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => KanjiDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => KanjiDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      glyph: json['glyph'] == null
          ? null
          : StringFilter.fromJson(json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFilter.fromJson(json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFilter.fromJson(json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFilter.fromJson(json['meaning'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOScalarWhereInputToJson(
    KanjiDAOScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

UsersDAOCreateWithoutTextsInput _$UsersDAOCreateWithoutTextsInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOCreateWithoutTextsInput(
      id: json['id'] as String?,
      accountName: json['account_name'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOCreateNestedOneWithoutOwnerInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOCreateWithoutTextsInputToJson(
    UsersDAOCreateWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  writeNotNull('dictionary', instance.dictionary?.toJson());
  return val;
}

UsersDAOUncheckedCreateWithoutTextsInput
    _$UsersDAOUncheckedCreateWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedCreateWithoutTextsInput(
          id: json['id'] as String?,
          accountName: json['account_name'] as String,
          password: json['password'] as String,
          role: $enumDecode(_$RoleEnumMap, json['role']),
          dictionary: json['dictionary'] == null
              ? null
              : DictionariesDAOUncheckedCreateNestedOneWithoutOwnerInput
                  .fromJson(json['dictionary'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUncheckedCreateWithoutTextsInputToJson(
    UsersDAOUncheckedCreateWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['account_name'] = instance.accountName;
  val['password'] = instance.password;
  val['role'] = _$RoleEnumMap[instance.role]!;
  writeNotNull('dictionary', instance.dictionary?.toJson());
  return val;
}

UsersDAOCreateOrConnectWithoutTextsInput
    _$UsersDAOCreateOrConnectWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOCreateOrConnectWithoutTextsInput(
          where: UsersDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UsersDAOCreateWithoutTextsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOCreateOrConnectWithoutTextsInputToJson(
        UsersDAOCreateOrConnectWithoutTextsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

UsersDAOUpsertWithWhereUniqueWithoutTextsInput
    _$UsersDAOUpsertWithWhereUniqueWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUpsertWithWhereUniqueWithoutTextsInput(
          where: UsersDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: UsersDAOUpdateWithoutTextsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: UsersDAOCreateWithoutTextsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUpsertWithWhereUniqueWithoutTextsInputToJson(
        UsersDAOUpsertWithWhereUniqueWithoutTextsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

UsersDAOUpdateWithWhereUniqueWithoutTextsInput
    _$UsersDAOUpdateWithWhereUniqueWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUpdateWithWhereUniqueWithoutTextsInput(
          where: UsersDAOWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: UsersDAOUpdateWithoutTextsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUpdateWithWhereUniqueWithoutTextsInputToJson(
        UsersDAOUpdateWithWhereUniqueWithoutTextsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

UsersDAOUpdateManyWithWhereWithoutTextsInput
    _$UsersDAOUpdateManyWithWhereWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUpdateManyWithWhereWithoutTextsInput(
          where: UsersDAOScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: UsersDAOUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUpdateManyWithWhereWithoutTextsInputToJson(
        UsersDAOUpdateManyWithWhereWithoutTextsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

UsersDAOScalarWhereInput _$UsersDAOScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => UsersDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => UsersDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => UsersDAOScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFilter.fromJson(json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : EnumRoleFilter.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOScalarWhereInputToJson(
    UsersDAOScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', instance.role?.toJson());
  return val;
}

TextsDAOUpdateWithoutReadersInput _$TextsDAOUpdateWithoutReadersInputFromJson(
        Map<String, dynamic> json) =>
    TextsDAOUpdateWithoutReadersInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TextsDAOUpdateWithoutReadersInputToJson(
    TextsDAOUpdateWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

TextsDAOUncheckedUpdateWithoutReadersInput
    _$TextsDAOUncheckedUpdateWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUncheckedUpdateWithoutReadersInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          text: json['text'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['text'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOUncheckedUpdateWithoutReadersInputToJson(
    TextsDAOUncheckedUpdateWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

TextsDAOUncheckedUpdateManyWithoutTextsInput
    _$TextsDAOUncheckedUpdateManyWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        TextsDAOUncheckedUpdateManyWithoutTextsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          text: json['text'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['text'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TextsDAOUncheckedUpdateManyWithoutTextsInputToJson(
    TextsDAOUncheckedUpdateManyWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('text', instance.text?.toJson());
  return val;
}

WordsDAOUpdateWithoutKanjisInput _$WordsDAOUpdateWithoutKanjisInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOUpdateWithoutKanjisInput(
      word: json['word'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['reading'] as Map<String, dynamic>),
      dicts: json['dicts'] == null
          ? null
          : DictionariesDAOUpdateManyWithoutWordsNestedInput.fromJson(
              json['dicts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUpdateWithoutKanjisInputToJson(
    WordsDAOUpdateWithoutKanjisInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('dicts', instance.dicts?.toJson());
  return val;
}

WordsDAOUncheckedUpdateWithoutKanjisInput
    _$WordsDAOUncheckedUpdateWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedUpdateWithoutKanjisInput(
          word: json['word'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['word'] as Map<String, dynamic>),
          translation: json['translation'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['translation'] as Map<String, dynamic>),
          reading: json['reading'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['reading'] as Map<String, dynamic>),
          dicts: json['dicts'] == null
              ? null
              : DictionariesDAOUncheckedUpdateManyWithoutWordsNestedInput
                  .fromJson(json['dicts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUncheckedUpdateWithoutKanjisInputToJson(
    WordsDAOUncheckedUpdateWithoutKanjisInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('dicts', instance.dicts?.toJson());
  return val;
}

WordsDAOUncheckedUpdateManyWithoutWordsInput
    _$WordsDAOUncheckedUpdateManyWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedUpdateManyWithoutWordsInput(
          word: json['word'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['word'] as Map<String, dynamic>),
          translation: json['translation'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['translation'] as Map<String, dynamic>),
          reading: json['reading'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['reading'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUncheckedUpdateManyWithoutWordsInputToJson(
    WordsDAOUncheckedUpdateManyWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  return val;
}

WordsDAOUpdateWithoutDictsInput _$WordsDAOUpdateWithoutDictsInputFromJson(
        Map<String, dynamic> json) =>
    WordsDAOUpdateWithoutDictsInput(
      word: json['word'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['word'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['translation'] as Map<String, dynamic>),
      reading: json['reading'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['reading'] as Map<String, dynamic>),
      kanjis: json['kanjis'] == null
          ? null
          : KanjiDAOUpdateManyWithoutWordsNestedInput.fromJson(
              json['kanjis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordsDAOUpdateWithoutDictsInputToJson(
    WordsDAOUpdateWithoutDictsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

WordsDAOUncheckedUpdateWithoutDictsInput
    _$WordsDAOUncheckedUpdateWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        WordsDAOUncheckedUpdateWithoutDictsInput(
          word: json['word'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['word'] as Map<String, dynamic>),
          translation: json['translation'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['translation'] as Map<String, dynamic>),
          reading: json['reading'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['reading'] as Map<String, dynamic>),
          kanjis: json['kanjis'] == null
              ? null
              : KanjiDAOUncheckedUpdateManyWithoutWordsNestedInput.fromJson(
                  json['kanjis'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$WordsDAOUncheckedUpdateWithoutDictsInputToJson(
    WordsDAOUncheckedUpdateWithoutDictsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('reading', instance.reading?.toJson());
  writeNotNull('kanjis', instance.kanjis?.toJson());
  return val;
}

DictionariesDAOUpdateWithoutWordsInput
    _$DictionariesDAOUpdateWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUpdateWithoutWordsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          owner: json['owner'] == null
              ? null
              : UsersDAOUpdateOneRequiredWithoutDictionaryNestedInput.fromJson(
                  json['owner'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUpdateWithoutWordsInputToJson(
    DictionariesDAOUpdateWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  return val;
}

DictionariesDAOUncheckedUpdateWithoutWordsInput
    _$DictionariesDAOUncheckedUpdateWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateWithoutWordsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          ownerId: json['owner_id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['owner_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DictionariesDAOUncheckedUpdateWithoutWordsInputToJson(
    DictionariesDAOUncheckedUpdateWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  return val;
}

DictionariesDAOUncheckedUpdateManyWithoutDictsInput
    _$DictionariesDAOUncheckedUpdateManyWithoutDictsInputFromJson(
            Map<String, dynamic> json) =>
        DictionariesDAOUncheckedUpdateManyWithoutDictsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          ownerId: json['owner_id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['owner_id'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$DictionariesDAOUncheckedUpdateManyWithoutDictsInputToJson(
        DictionariesDAOUncheckedUpdateManyWithoutDictsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('owner_id', instance.ownerId?.toJson());
  return val;
}

KanjiDAOUpdateWithoutWordsInput _$KanjiDAOUpdateWithoutWordsInputFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOUpdateWithoutWordsInput(
      glyph: json['glyph'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['glyph'] as Map<String, dynamic>),
      onyoumi: json['onyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['onyoumi'] as Map<String, dynamic>),
      kunyoumi: json['kunyoumi'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['kunyoumi'] as Map<String, dynamic>),
      meaning: json['meaning'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['meaning'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KanjiDAOUpdateWithoutWordsInputToJson(
    KanjiDAOUpdateWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

KanjiDAOUncheckedUpdateWithoutWordsInput
    _$KanjiDAOUncheckedUpdateWithoutWordsInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUncheckedUpdateWithoutWordsInput(
          glyph: json['glyph'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['glyph'] as Map<String, dynamic>),
          onyoumi: json['onyoumi'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['onyoumi'] as Map<String, dynamic>),
          kunyoumi: json['kunyoumi'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['kunyoumi'] as Map<String, dynamic>),
          meaning: json['meaning'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['meaning'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOUncheckedUpdateWithoutWordsInputToJson(
    KanjiDAOUncheckedUpdateWithoutWordsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

KanjiDAOUncheckedUpdateManyWithoutKanjisInput
    _$KanjiDAOUncheckedUpdateManyWithoutKanjisInputFromJson(
            Map<String, dynamic> json) =>
        KanjiDAOUncheckedUpdateManyWithoutKanjisInput(
          glyph: json['glyph'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['glyph'] as Map<String, dynamic>),
          onyoumi: json['onyoumi'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['onyoumi'] as Map<String, dynamic>),
          kunyoumi: json['kunyoumi'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['kunyoumi'] as Map<String, dynamic>),
          meaning: json['meaning'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['meaning'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$KanjiDAOUncheckedUpdateManyWithoutKanjisInputToJson(
    KanjiDAOUncheckedUpdateManyWithoutKanjisInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph?.toJson());
  writeNotNull('onyoumi', instance.onyoumi?.toJson());
  writeNotNull('kunyoumi', instance.kunyoumi?.toJson());
  writeNotNull('meaning', instance.meaning?.toJson());
  return val;
}

UsersDAOUpdateWithoutTextsInput _$UsersDAOUpdateWithoutTextsInputFromJson(
        Map<String, dynamic> json) =>
    UsersDAOUpdateWithoutTextsInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      accountName: json['account_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['account_name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      dictionary: json['dictionary'] == null
          ? null
          : DictionariesDAOUpdateOneWithoutOwnerNestedInput.fromJson(
              json['dictionary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersDAOUpdateWithoutTextsInputToJson(
    UsersDAOUpdateWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('dictionary', instance.dictionary?.toJson());
  return val;
}

UsersDAOUncheckedUpdateWithoutTextsInput
    _$UsersDAOUncheckedUpdateWithoutTextsInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedUpdateWithoutTextsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          accountName: json['account_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['account_name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
          dictionary: json['dictionary'] == null
              ? null
              : DictionariesDAOUncheckedUpdateOneWithoutOwnerNestedInput
                  .fromJson(json['dictionary'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersDAOUncheckedUpdateWithoutTextsInputToJson(
    UsersDAOUncheckedUpdateWithoutTextsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('dictionary', instance.dictionary?.toJson());
  return val;
}

UsersDAOUncheckedUpdateManyWithoutReadersInput
    _$UsersDAOUncheckedUpdateManyWithoutReadersInputFromJson(
            Map<String, dynamic> json) =>
        UsersDAOUncheckedUpdateManyWithoutReadersInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          accountName: json['account_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['account_name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
          role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
        );

Map<String, dynamic> _$UsersDAOUncheckedUpdateManyWithoutReadersInputToJson(
    UsersDAOUncheckedUpdateManyWithoutReadersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('account_name', instance.accountName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  return val;
}

UsersDAO _$UsersDAOFromJson(Map<String, dynamic> json) => UsersDAO(
      id: json['id'] as String,
      accountName: json['account_name'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOToJson(UsersDAO instance) => <String, dynamic>{
      'id': instance.id,
      'account_name': instance.accountName,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role]!,
    };

KanjiDAO _$KanjiDAOFromJson(Map<String, dynamic> json) => KanjiDAO(
      glyph: json['glyph'] as String,
      onyoumi: json['onyoumi'] as String,
      kunyoumi: json['kunyoumi'] as String,
      meaning: json['meaning'] as String,
    );

Map<String, dynamic> _$KanjiDAOToJson(KanjiDAO instance) => <String, dynamic>{
      'glyph': instance.glyph,
      'onyoumi': instance.onyoumi,
      'kunyoumi': instance.kunyoumi,
      'meaning': instance.meaning,
    };

DictionariesDAO _$DictionariesDAOFromJson(Map<String, dynamic> json) =>
    DictionariesDAO(
      id: json['id'] as String,
      title: json['title'] as String,
      ownerId: json['owner_id'] as String,
    );

Map<String, dynamic> _$DictionariesDAOToJson(DictionariesDAO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'owner_id': instance.ownerId,
    };

WordsDAO _$WordsDAOFromJson(Map<String, dynamic> json) => WordsDAO(
      word: json['word'] as String,
      translation: json['translation'] as String,
      reading: json['reading'] as String,
    );

Map<String, dynamic> _$WordsDAOToJson(WordsDAO instance) => <String, dynamic>{
      'word': instance.word,
      'translation': instance.translation,
      'reading': instance.reading,
    };

TextsDAO _$TextsDAOFromJson(Map<String, dynamic> json) => TextsDAO(
      id: json['id'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TextsDAOToJson(TextsDAO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
    };

UsersDAOGroupByOutputType _$UsersDAOGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersDAOGroupByOutputType(
      id: json['id'] as String?,
      accountName: json['account_name'] as String?,
      password: json['password'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$UsersDAOGroupByOutputTypeToJson(
    UsersDAOGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('account_name', instance.accountName);
  writeNotNull('password', instance.password);
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  return val;
}

KanjiDAOGroupByOutputType _$KanjiDAOGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    KanjiDAOGroupByOutputType(
      glyph: json['glyph'] as String?,
      onyoumi: json['onyoumi'] as String?,
      kunyoumi: json['kunyoumi'] as String?,
      meaning: json['meaning'] as String?,
    );

Map<String, dynamic> _$KanjiDAOGroupByOutputTypeToJson(
    KanjiDAOGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('glyph', instance.glyph);
  writeNotNull('onyoumi', instance.onyoumi);
  writeNotNull('kunyoumi', instance.kunyoumi);
  writeNotNull('meaning', instance.meaning);
  return val;
}

DictionariesDAOGroupByOutputType _$DictionariesDAOGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DictionariesDAOGroupByOutputType(
      id: json['id'] as String?,
      title: json['title'] as String?,
      ownerId: json['owner_id'] as String?,
    );

Map<String, dynamic> _$DictionariesDAOGroupByOutputTypeToJson(
    DictionariesDAOGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('owner_id', instance.ownerId);
  return val;
}

WordsDAOGroupByOutputType _$WordsDAOGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    WordsDAOGroupByOutputType(
      word: json['word'] as String?,
      translation: json['translation'] as String?,
      reading: json['reading'] as String?,
    );

Map<String, dynamic> _$WordsDAOGroupByOutputTypeToJson(
    WordsDAOGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('word', instance.word);
  writeNotNull('translation', instance.translation);
  writeNotNull('reading', instance.reading);
  return val;
}

TextsDAOGroupByOutputType _$TextsDAOGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TextsDAOGroupByOutputType(
      id: json['id'] as String?,
      title: json['title'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$TextsDAOGroupByOutputTypeToJson(
    TextsDAOGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('text', instance.text);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
