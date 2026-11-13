// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $RecipesTable extends Recipes with TableInfo<$RecipesTable, RecipeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingsNumeratorMeta = const VerificationMeta(
    'servingsNumerator',
  );
  @override
  late final GeneratedColumn<int> servingsNumerator = GeneratedColumn<int>(
    'servings_numerator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingsDenominatorMeta =
      const VerificationMeta('servingsDenominator');
  @override
  late final GeneratedColumn<int> servingsDenominator = GeneratedColumn<int>(
    'servings_denominator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _photoRefMeta = const VerificationMeta(
    'photoRef',
  );
  @override
  late final GeneratedColumn<String> photoRef = GeneratedColumn<String>(
    'photo_ref',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _prepTimeSecondsMeta = const VerificationMeta(
    'prepTimeSeconds',
  );
  @override
  late final GeneratedColumn<int> prepTimeSeconds = GeneratedColumn<int>(
    'prep_time_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cookTimeSecondsMeta = const VerificationMeta(
    'cookTimeSeconds',
  );
  @override
  late final GeneratedColumn<int> cookTimeSeconds = GeneratedColumn<int>(
    'cook_time_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _totalTimeSecondsMeta = const VerificationMeta(
    'totalTimeSeconds',
  );
  @override
  late final GeneratedColumn<int> totalTimeSeconds = GeneratedColumn<int>(
    'total_time_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _sourceUrlMeta = const VerificationMeta(
    'sourceUrl',
  );
  @override
  late final GeneratedColumn<String> sourceUrl = GeneratedColumn<String>(
    'source_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceNameMeta = const VerificationMeta(
    'sourceName',
  );
  @override
  late final GeneratedColumn<String> sourceName = GeneratedColumn<String>(
    'source_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    servingsNumerator,
    servingsDenominator,
    createdAt,
    updatedAt,
    photoRef,
    prepTimeSeconds,
    cookTimeSeconds,
    totalTimeSeconds,
    notes,
    sourceUrl,
    sourceName,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipes';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecipeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('servings_numerator')) {
      context.handle(
        _servingsNumeratorMeta,
        servingsNumerator.isAcceptableOrUnknown(
          data['servings_numerator']!,
          _servingsNumeratorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingsNumeratorMeta);
    }
    if (data.containsKey('servings_denominator')) {
      context.handle(
        _servingsDenominatorMeta,
        servingsDenominator.isAcceptableOrUnknown(
          data['servings_denominator']!,
          _servingsDenominatorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingsDenominatorMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('photo_ref')) {
      context.handle(
        _photoRefMeta,
        photoRef.isAcceptableOrUnknown(data['photo_ref']!, _photoRefMeta),
      );
    }
    if (data.containsKey('prep_time_seconds')) {
      context.handle(
        _prepTimeSecondsMeta,
        prepTimeSeconds.isAcceptableOrUnknown(
          data['prep_time_seconds']!,
          _prepTimeSecondsMeta,
        ),
      );
    }
    if (data.containsKey('cook_time_seconds')) {
      context.handle(
        _cookTimeSecondsMeta,
        cookTimeSeconds.isAcceptableOrUnknown(
          data['cook_time_seconds']!,
          _cookTimeSecondsMeta,
        ),
      );
    }
    if (data.containsKey('total_time_seconds')) {
      context.handle(
        _totalTimeSecondsMeta,
        totalTimeSeconds.isAcceptableOrUnknown(
          data['total_time_seconds']!,
          _totalTimeSecondsMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('source_url')) {
      context.handle(
        _sourceUrlMeta,
        sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta),
      );
    }
    if (data.containsKey('source_name')) {
      context.handle(
        _sourceNameMeta,
        sourceName.isAcceptableOrUnknown(data['source_name']!, _sourceNameMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      servingsNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}servings_numerator'],
      )!,
      servingsDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}servings_denominator'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      photoRef: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_ref'],
      ),
      prepTimeSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}prep_time_seconds'],
      ),
      cookTimeSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cook_time_seconds'],
      ),
      totalTimeSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_time_seconds'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      )!,
      sourceUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_url'],
      ),
      sourceName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_name'],
      ),
    );
  }

  @override
  $RecipesTable createAlias(String alias) {
    return $RecipesTable(attachedDatabase, alias);
  }
}

class RecipeRow extends DataClass implements Insertable<RecipeRow> {
  final String id;
  final String title;
  final int servingsNumerator;
  final int servingsDenominator;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? photoRef;
  final int? prepTimeSeconds;
  final int? cookTimeSeconds;
  final int? totalTimeSeconds;
  final String notes;
  final String? sourceUrl;
  final String? sourceName;
  const RecipeRow({
    required this.id,
    required this.title,
    required this.servingsNumerator,
    required this.servingsDenominator,
    required this.createdAt,
    required this.updatedAt,
    this.photoRef,
    this.prepTimeSeconds,
    this.cookTimeSeconds,
    this.totalTimeSeconds,
    required this.notes,
    this.sourceUrl,
    this.sourceName,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['servings_numerator'] = Variable<int>(servingsNumerator);
    map['servings_denominator'] = Variable<int>(servingsDenominator);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || photoRef != null) {
      map['photo_ref'] = Variable<String>(photoRef);
    }
    if (!nullToAbsent || prepTimeSeconds != null) {
      map['prep_time_seconds'] = Variable<int>(prepTimeSeconds);
    }
    if (!nullToAbsent || cookTimeSeconds != null) {
      map['cook_time_seconds'] = Variable<int>(cookTimeSeconds);
    }
    if (!nullToAbsent || totalTimeSeconds != null) {
      map['total_time_seconds'] = Variable<int>(totalTimeSeconds);
    }
    map['notes'] = Variable<String>(notes);
    if (!nullToAbsent || sourceUrl != null) {
      map['source_url'] = Variable<String>(sourceUrl);
    }
    if (!nullToAbsent || sourceName != null) {
      map['source_name'] = Variable<String>(sourceName);
    }
    return map;
  }

  RecipesCompanion toCompanion(bool nullToAbsent) {
    return RecipesCompanion(
      id: Value(id),
      title: Value(title),
      servingsNumerator: Value(servingsNumerator),
      servingsDenominator: Value(servingsDenominator),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      photoRef: photoRef == null && nullToAbsent
          ? const Value.absent()
          : Value(photoRef),
      prepTimeSeconds: prepTimeSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(prepTimeSeconds),
      cookTimeSeconds: cookTimeSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(cookTimeSeconds),
      totalTimeSeconds: totalTimeSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(totalTimeSeconds),
      notes: Value(notes),
      sourceUrl: sourceUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceUrl),
      sourceName: sourceName == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceName),
    );
  }

  factory RecipeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeRow(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      servingsNumerator: serializer.fromJson<int>(json['servingsNumerator']),
      servingsDenominator: serializer.fromJson<int>(
        json['servingsDenominator'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      photoRef: serializer.fromJson<String?>(json['photoRef']),
      prepTimeSeconds: serializer.fromJson<int?>(json['prepTimeSeconds']),
      cookTimeSeconds: serializer.fromJson<int?>(json['cookTimeSeconds']),
      totalTimeSeconds: serializer.fromJson<int?>(json['totalTimeSeconds']),
      notes: serializer.fromJson<String>(json['notes']),
      sourceUrl: serializer.fromJson<String?>(json['sourceUrl']),
      sourceName: serializer.fromJson<String?>(json['sourceName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'servingsNumerator': serializer.toJson<int>(servingsNumerator),
      'servingsDenominator': serializer.toJson<int>(servingsDenominator),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'photoRef': serializer.toJson<String?>(photoRef),
      'prepTimeSeconds': serializer.toJson<int?>(prepTimeSeconds),
      'cookTimeSeconds': serializer.toJson<int?>(cookTimeSeconds),
      'totalTimeSeconds': serializer.toJson<int?>(totalTimeSeconds),
      'notes': serializer.toJson<String>(notes),
      'sourceUrl': serializer.toJson<String?>(sourceUrl),
      'sourceName': serializer.toJson<String?>(sourceName),
    };
  }

  RecipeRow copyWith({
    String? id,
    String? title,
    int? servingsNumerator,
    int? servingsDenominator,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<String?> photoRef = const Value.absent(),
    Value<int?> prepTimeSeconds = const Value.absent(),
    Value<int?> cookTimeSeconds = const Value.absent(),
    Value<int?> totalTimeSeconds = const Value.absent(),
    String? notes,
    Value<String?> sourceUrl = const Value.absent(),
    Value<String?> sourceName = const Value.absent(),
  }) => RecipeRow(
    id: id ?? this.id,
    title: title ?? this.title,
    servingsNumerator: servingsNumerator ?? this.servingsNumerator,
    servingsDenominator: servingsDenominator ?? this.servingsDenominator,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    photoRef: photoRef.present ? photoRef.value : this.photoRef,
    prepTimeSeconds: prepTimeSeconds.present
        ? prepTimeSeconds.value
        : this.prepTimeSeconds,
    cookTimeSeconds: cookTimeSeconds.present
        ? cookTimeSeconds.value
        : this.cookTimeSeconds,
    totalTimeSeconds: totalTimeSeconds.present
        ? totalTimeSeconds.value
        : this.totalTimeSeconds,
    notes: notes ?? this.notes,
    sourceUrl: sourceUrl.present ? sourceUrl.value : this.sourceUrl,
    sourceName: sourceName.present ? sourceName.value : this.sourceName,
  );
  RecipeRow copyWithCompanion(RecipesCompanion data) {
    return RecipeRow(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      servingsNumerator: data.servingsNumerator.present
          ? data.servingsNumerator.value
          : this.servingsNumerator,
      servingsDenominator: data.servingsDenominator.present
          ? data.servingsDenominator.value
          : this.servingsDenominator,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      photoRef: data.photoRef.present ? data.photoRef.value : this.photoRef,
      prepTimeSeconds: data.prepTimeSeconds.present
          ? data.prepTimeSeconds.value
          : this.prepTimeSeconds,
      cookTimeSeconds: data.cookTimeSeconds.present
          ? data.cookTimeSeconds.value
          : this.cookTimeSeconds,
      totalTimeSeconds: data.totalTimeSeconds.present
          ? data.totalTimeSeconds.value
          : this.totalTimeSeconds,
      notes: data.notes.present ? data.notes.value : this.notes,
      sourceUrl: data.sourceUrl.present ? data.sourceUrl.value : this.sourceUrl,
      sourceName: data.sourceName.present
          ? data.sourceName.value
          : this.sourceName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecipeRow(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('servingsNumerator: $servingsNumerator, ')
          ..write('servingsDenominator: $servingsDenominator, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('photoRef: $photoRef, ')
          ..write('prepTimeSeconds: $prepTimeSeconds, ')
          ..write('cookTimeSeconds: $cookTimeSeconds, ')
          ..write('totalTimeSeconds: $totalTimeSeconds, ')
          ..write('notes: $notes, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('sourceName: $sourceName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    servingsNumerator,
    servingsDenominator,
    createdAt,
    updatedAt,
    photoRef,
    prepTimeSeconds,
    cookTimeSeconds,
    totalTimeSeconds,
    notes,
    sourceUrl,
    sourceName,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeRow &&
          other.id == this.id &&
          other.title == this.title &&
          other.servingsNumerator == this.servingsNumerator &&
          other.servingsDenominator == this.servingsDenominator &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.photoRef == this.photoRef &&
          other.prepTimeSeconds == this.prepTimeSeconds &&
          other.cookTimeSeconds == this.cookTimeSeconds &&
          other.totalTimeSeconds == this.totalTimeSeconds &&
          other.notes == this.notes &&
          other.sourceUrl == this.sourceUrl &&
          other.sourceName == this.sourceName);
}

class RecipesCompanion extends UpdateCompanion<RecipeRow> {
  final Value<String> id;
  final Value<String> title;
  final Value<int> servingsNumerator;
  final Value<int> servingsDenominator;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String?> photoRef;
  final Value<int?> prepTimeSeconds;
  final Value<int?> cookTimeSeconds;
  final Value<int?> totalTimeSeconds;
  final Value<String> notes;
  final Value<String?> sourceUrl;
  final Value<String?> sourceName;
  final Value<int> rowid;
  const RecipesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.servingsNumerator = const Value.absent(),
    this.servingsDenominator = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.photoRef = const Value.absent(),
    this.prepTimeSeconds = const Value.absent(),
    this.cookTimeSeconds = const Value.absent(),
    this.totalTimeSeconds = const Value.absent(),
    this.notes = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecipesCompanion.insert({
    required String id,
    required String title,
    required int servingsNumerator,
    required int servingsDenominator,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.photoRef = const Value.absent(),
    this.prepTimeSeconds = const Value.absent(),
    this.cookTimeSeconds = const Value.absent(),
    this.totalTimeSeconds = const Value.absent(),
    this.notes = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       servingsNumerator = Value(servingsNumerator),
       servingsDenominator = Value(servingsDenominator),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<RecipeRow> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<int>? servingsNumerator,
    Expression<int>? servingsDenominator,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? photoRef,
    Expression<int>? prepTimeSeconds,
    Expression<int>? cookTimeSeconds,
    Expression<int>? totalTimeSeconds,
    Expression<String>? notes,
    Expression<String>? sourceUrl,
    Expression<String>? sourceName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (servingsNumerator != null) 'servings_numerator': servingsNumerator,
      if (servingsDenominator != null)
        'servings_denominator': servingsDenominator,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (photoRef != null) 'photo_ref': photoRef,
      if (prepTimeSeconds != null) 'prep_time_seconds': prepTimeSeconds,
      if (cookTimeSeconds != null) 'cook_time_seconds': cookTimeSeconds,
      if (totalTimeSeconds != null) 'total_time_seconds': totalTimeSeconds,
      if (notes != null) 'notes': notes,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (sourceName != null) 'source_name': sourceName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecipesCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<int>? servingsNumerator,
    Value<int>? servingsDenominator,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<String?>? photoRef,
    Value<int?>? prepTimeSeconds,
    Value<int?>? cookTimeSeconds,
    Value<int?>? totalTimeSeconds,
    Value<String>? notes,
    Value<String?>? sourceUrl,
    Value<String?>? sourceName,
    Value<int>? rowid,
  }) {
    return RecipesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      servingsNumerator: servingsNumerator ?? this.servingsNumerator,
      servingsDenominator: servingsDenominator ?? this.servingsDenominator,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      photoRef: photoRef ?? this.photoRef,
      prepTimeSeconds: prepTimeSeconds ?? this.prepTimeSeconds,
      cookTimeSeconds: cookTimeSeconds ?? this.cookTimeSeconds,
      totalTimeSeconds: totalTimeSeconds ?? this.totalTimeSeconds,
      notes: notes ?? this.notes,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      sourceName: sourceName ?? this.sourceName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (servingsNumerator.present) {
      map['servings_numerator'] = Variable<int>(servingsNumerator.value);
    }
    if (servingsDenominator.present) {
      map['servings_denominator'] = Variable<int>(servingsDenominator.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (photoRef.present) {
      map['photo_ref'] = Variable<String>(photoRef.value);
    }
    if (prepTimeSeconds.present) {
      map['prep_time_seconds'] = Variable<int>(prepTimeSeconds.value);
    }
    if (cookTimeSeconds.present) {
      map['cook_time_seconds'] = Variable<int>(cookTimeSeconds.value);
    }
    if (totalTimeSeconds.present) {
      map['total_time_seconds'] = Variable<int>(totalTimeSeconds.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (sourceName.present) {
      map['source_name'] = Variable<String>(sourceName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('servingsNumerator: $servingsNumerator, ')
          ..write('servingsDenominator: $servingsDenominator, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('photoRef: $photoRef, ')
          ..write('prepTimeSeconds: $prepTimeSeconds, ')
          ..write('cookTimeSeconds: $cookTimeSeconds, ')
          ..write('totalTimeSeconds: $totalTimeSeconds, ')
          ..write('notes: $notes, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('sourceName: $sourceName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $IngredientSectionsTable extends IngredientSections
    with TableInfo<$IngredientSectionsTable, IngredientSectionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IngredientSectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortKeyMeta = const VerificationMeta(
    'sortKey',
  );
  @override
  late final GeneratedColumn<String> sortKey = GeneratedColumn<String>(
    'sort_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, recipeId, name, sortKey];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ingredient_sections';
  @override
  VerificationContext validateIntegrity(
    Insertable<IngredientSectionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sort_key')) {
      context.handle(
        _sortKeyMeta,
        sortKey.isAcceptableOrUnknown(data['sort_key']!, _sortKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_sortKeyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  IngredientSectionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IngredientSectionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      sortKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sort_key'],
      )!,
    );
  }

  @override
  $IngredientSectionsTable createAlias(String alias) {
    return $IngredientSectionsTable(attachedDatabase, alias);
  }
}

class IngredientSectionRow extends DataClass
    implements Insertable<IngredientSectionRow> {
  final String id;
  final String recipeId;
  final String name;
  final String sortKey;
  const IngredientSectionRow({
    required this.id,
    required this.recipeId,
    required this.name,
    required this.sortKey,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    map['name'] = Variable<String>(name);
    map['sort_key'] = Variable<String>(sortKey);
    return map;
  }

  IngredientSectionsCompanion toCompanion(bool nullToAbsent) {
    return IngredientSectionsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      name: Value(name),
      sortKey: Value(sortKey),
    );
  }

  factory IngredientSectionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IngredientSectionRow(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      name: serializer.fromJson<String>(json['name']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'name': serializer.toJson<String>(name),
      'sortKey': serializer.toJson<String>(sortKey),
    };
  }

  IngredientSectionRow copyWith({
    String? id,
    String? recipeId,
    String? name,
    String? sortKey,
  }) => IngredientSectionRow(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    name: name ?? this.name,
    sortKey: sortKey ?? this.sortKey,
  );
  IngredientSectionRow copyWithCompanion(IngredientSectionsCompanion data) {
    return IngredientSectionRow(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      name: data.name.present ? data.name.value : this.name,
      sortKey: data.sortKey.present ? data.sortKey.value : this.sortKey,
    );
  }

  @override
  String toString() {
    return (StringBuffer('IngredientSectionRow(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('sortKey: $sortKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recipeId, name, sortKey);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IngredientSectionRow &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.name == this.name &&
          other.sortKey == this.sortKey);
}

class IngredientSectionsCompanion
    extends UpdateCompanion<IngredientSectionRow> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<String> name;
  final Value<String> sortKey;
  final Value<int> rowid;
  const IngredientSectionsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.name = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  IngredientSectionsCompanion.insert({
    required String id,
    required String recipeId,
    required String name,
    required String sortKey,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       name = Value(name),
       sortKey = Value(sortKey);
  static Insertable<IngredientSectionRow> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<String>? name,
    Expression<String>? sortKey,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (name != null) 'name': name,
      if (sortKey != null) 'sort_key': sortKey,
      if (rowid != null) 'rowid': rowid,
    });
  }

  IngredientSectionsCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<String>? name,
    Value<String>? sortKey,
    Value<int>? rowid,
  }) {
    return IngredientSectionsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      name: name ?? this.name,
      sortKey: sortKey ?? this.sortKey,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sortKey.present) {
      map['sort_key'] = Variable<String>(sortKey.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IngredientSectionsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('sortKey: $sortKey, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $IngredientLinesTable extends IngredientLines
    with TableInfo<$IngredientLinesTable, IngredientLineRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IngredientLinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sectionIdMeta = const VerificationMeta(
    'sectionId',
  );
  @override
  late final GeneratedColumn<String> sectionId = GeneratedColumn<String>(
    'section_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rawTextMeta = const VerificationMeta(
    'rawText',
  );
  @override
  late final GeneratedColumn<String> rawText = GeneratedColumn<String>(
    'raw_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortKeyMeta = const VerificationMeta(
    'sortKey',
  );
  @override
  late final GeneratedColumn<String> sortKey = GeneratedColumn<String>(
    'sort_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityNumeratorMeta = const VerificationMeta(
    'quantityNumerator',
  );
  @override
  late final GeneratedColumn<int> quantityNumerator = GeneratedColumn<int>(
    'quantity_numerator',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quantityDenominatorMeta =
      const VerificationMeta('quantityDenominator');
  @override
  late final GeneratedColumn<int> quantityDenominator = GeneratedColumn<int>(
    'quantity_denominator',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quantityMaxNumeratorMeta =
      const VerificationMeta('quantityMaxNumerator');
  @override
  late final GeneratedColumn<int> quantityMaxNumerator = GeneratedColumn<int>(
    'quantity_max_numerator',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quantityMaxDenominatorMeta =
      const VerificationMeta('quantityMaxDenominator');
  @override
  late final GeneratedColumn<int> quantityMaxDenominator = GeneratedColumn<int>(
    'quantity_max_denominator',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Unit?, String> unit =
      GeneratedColumn<String>(
        'unit',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<Unit?>($IngredientLinesTable.$converterunitn);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _preparationMeta = const VerificationMeta(
    'preparation',
  );
  @override
  late final GeneratedColumn<String> preparation = GeneratedColumn<String>(
    'preparation',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recipeId,
    sectionId,
    rawText,
    sortKey,
    quantityNumerator,
    quantityDenominator,
    quantityMaxNumerator,
    quantityMaxDenominator,
    unit,
    name,
    preparation,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ingredient_lines';
  @override
  VerificationContext validateIntegrity(
    Insertable<IngredientLineRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
        _sectionIdMeta,
        sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta),
      );
    }
    if (data.containsKey('raw_text')) {
      context.handle(
        _rawTextMeta,
        rawText.isAcceptableOrUnknown(data['raw_text']!, _rawTextMeta),
      );
    } else if (isInserting) {
      context.missing(_rawTextMeta);
    }
    if (data.containsKey('sort_key')) {
      context.handle(
        _sortKeyMeta,
        sortKey.isAcceptableOrUnknown(data['sort_key']!, _sortKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_sortKeyMeta);
    }
    if (data.containsKey('quantity_numerator')) {
      context.handle(
        _quantityNumeratorMeta,
        quantityNumerator.isAcceptableOrUnknown(
          data['quantity_numerator']!,
          _quantityNumeratorMeta,
        ),
      );
    }
    if (data.containsKey('quantity_denominator')) {
      context.handle(
        _quantityDenominatorMeta,
        quantityDenominator.isAcceptableOrUnknown(
          data['quantity_denominator']!,
          _quantityDenominatorMeta,
        ),
      );
    }
    if (data.containsKey('quantity_max_numerator')) {
      context.handle(
        _quantityMaxNumeratorMeta,
        quantityMaxNumerator.isAcceptableOrUnknown(
          data['quantity_max_numerator']!,
          _quantityMaxNumeratorMeta,
        ),
      );
    }
    if (data.containsKey('quantity_max_denominator')) {
      context.handle(
        _quantityMaxDenominatorMeta,
        quantityMaxDenominator.isAcceptableOrUnknown(
          data['quantity_max_denominator']!,
          _quantityMaxDenominatorMeta,
        ),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('preparation')) {
      context.handle(
        _preparationMeta,
        preparation.isAcceptableOrUnknown(
          data['preparation']!,
          _preparationMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  IngredientLineRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IngredientLineRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      sectionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}section_id'],
      ),
      rawText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_text'],
      )!,
      sortKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sort_key'],
      )!,
      quantityNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity_numerator'],
      ),
      quantityDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity_denominator'],
      ),
      quantityMaxNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity_max_numerator'],
      ),
      quantityMaxDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity_max_denominator'],
      ),
      unit: $IngredientLinesTable.$converterunitn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}unit'],
        ),
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      preparation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}preparation'],
      ),
    );
  }

  @override
  $IngredientLinesTable createAlias(String alias) {
    return $IngredientLinesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Unit, String, String> $converterunit =
      const EnumNameConverter<Unit>(Unit.values);
  static JsonTypeConverter2<Unit?, String?, String?> $converterunitn =
      JsonTypeConverter2.asNullable($converterunit);
}

class IngredientLineRow extends DataClass
    implements Insertable<IngredientLineRow> {
  final String id;
  final String recipeId;
  final String? sectionId;
  final String rawText;
  final String sortKey;
  final int? quantityNumerator;
  final int? quantityDenominator;
  final int? quantityMaxNumerator;
  final int? quantityMaxDenominator;
  final Unit? unit;
  final String? name;
  final String? preparation;
  const IngredientLineRow({
    required this.id,
    required this.recipeId,
    this.sectionId,
    required this.rawText,
    required this.sortKey,
    this.quantityNumerator,
    this.quantityDenominator,
    this.quantityMaxNumerator,
    this.quantityMaxDenominator,
    this.unit,
    this.name,
    this.preparation,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<String>(sectionId);
    }
    map['raw_text'] = Variable<String>(rawText);
    map['sort_key'] = Variable<String>(sortKey);
    if (!nullToAbsent || quantityNumerator != null) {
      map['quantity_numerator'] = Variable<int>(quantityNumerator);
    }
    if (!nullToAbsent || quantityDenominator != null) {
      map['quantity_denominator'] = Variable<int>(quantityDenominator);
    }
    if (!nullToAbsent || quantityMaxNumerator != null) {
      map['quantity_max_numerator'] = Variable<int>(quantityMaxNumerator);
    }
    if (!nullToAbsent || quantityMaxDenominator != null) {
      map['quantity_max_denominator'] = Variable<int>(quantityMaxDenominator);
    }
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(
        $IngredientLinesTable.$converterunitn.toSql(unit),
      );
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || preparation != null) {
      map['preparation'] = Variable<String>(preparation);
    }
    return map;
  }

  IngredientLinesCompanion toCompanion(bool nullToAbsent) {
    return IngredientLinesCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      sectionId: sectionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionId),
      rawText: Value(rawText),
      sortKey: Value(sortKey),
      quantityNumerator: quantityNumerator == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityNumerator),
      quantityDenominator: quantityDenominator == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityDenominator),
      quantityMaxNumerator: quantityMaxNumerator == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityMaxNumerator),
      quantityMaxDenominator: quantityMaxDenominator == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityMaxDenominator),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      preparation: preparation == null && nullToAbsent
          ? const Value.absent()
          : Value(preparation),
    );
  }

  factory IngredientLineRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IngredientLineRow(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      sectionId: serializer.fromJson<String?>(json['sectionId']),
      rawText: serializer.fromJson<String>(json['rawText']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
      quantityNumerator: serializer.fromJson<int?>(json['quantityNumerator']),
      quantityDenominator: serializer.fromJson<int?>(
        json['quantityDenominator'],
      ),
      quantityMaxNumerator: serializer.fromJson<int?>(
        json['quantityMaxNumerator'],
      ),
      quantityMaxDenominator: serializer.fromJson<int?>(
        json['quantityMaxDenominator'],
      ),
      unit: $IngredientLinesTable.$converterunitn.fromJson(
        serializer.fromJson<String?>(json['unit']),
      ),
      name: serializer.fromJson<String?>(json['name']),
      preparation: serializer.fromJson<String?>(json['preparation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'sectionId': serializer.toJson<String?>(sectionId),
      'rawText': serializer.toJson<String>(rawText),
      'sortKey': serializer.toJson<String>(sortKey),
      'quantityNumerator': serializer.toJson<int?>(quantityNumerator),
      'quantityDenominator': serializer.toJson<int?>(quantityDenominator),
      'quantityMaxNumerator': serializer.toJson<int?>(quantityMaxNumerator),
      'quantityMaxDenominator': serializer.toJson<int?>(quantityMaxDenominator),
      'unit': serializer.toJson<String?>(
        $IngredientLinesTable.$converterunitn.toJson(unit),
      ),
      'name': serializer.toJson<String?>(name),
      'preparation': serializer.toJson<String?>(preparation),
    };
  }

  IngredientLineRow copyWith({
    String? id,
    String? recipeId,
    Value<String?> sectionId = const Value.absent(),
    String? rawText,
    String? sortKey,
    Value<int?> quantityNumerator = const Value.absent(),
    Value<int?> quantityDenominator = const Value.absent(),
    Value<int?> quantityMaxNumerator = const Value.absent(),
    Value<int?> quantityMaxDenominator = const Value.absent(),
    Value<Unit?> unit = const Value.absent(),
    Value<String?> name = const Value.absent(),
    Value<String?> preparation = const Value.absent(),
  }) => IngredientLineRow(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    sectionId: sectionId.present ? sectionId.value : this.sectionId,
    rawText: rawText ?? this.rawText,
    sortKey: sortKey ?? this.sortKey,
    quantityNumerator: quantityNumerator.present
        ? quantityNumerator.value
        : this.quantityNumerator,
    quantityDenominator: quantityDenominator.present
        ? quantityDenominator.value
        : this.quantityDenominator,
    quantityMaxNumerator: quantityMaxNumerator.present
        ? quantityMaxNumerator.value
        : this.quantityMaxNumerator,
    quantityMaxDenominator: quantityMaxDenominator.present
        ? quantityMaxDenominator.value
        : this.quantityMaxDenominator,
    unit: unit.present ? unit.value : this.unit,
    name: name.present ? name.value : this.name,
    preparation: preparation.present ? preparation.value : this.preparation,
  );
  IngredientLineRow copyWithCompanion(IngredientLinesCompanion data) {
    return IngredientLineRow(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      sectionId: data.sectionId.present ? data.sectionId.value : this.sectionId,
      rawText: data.rawText.present ? data.rawText.value : this.rawText,
      sortKey: data.sortKey.present ? data.sortKey.value : this.sortKey,
      quantityNumerator: data.quantityNumerator.present
          ? data.quantityNumerator.value
          : this.quantityNumerator,
      quantityDenominator: data.quantityDenominator.present
          ? data.quantityDenominator.value
          : this.quantityDenominator,
      quantityMaxNumerator: data.quantityMaxNumerator.present
          ? data.quantityMaxNumerator.value
          : this.quantityMaxNumerator,
      quantityMaxDenominator: data.quantityMaxDenominator.present
          ? data.quantityMaxDenominator.value
          : this.quantityMaxDenominator,
      unit: data.unit.present ? data.unit.value : this.unit,
      name: data.name.present ? data.name.value : this.name,
      preparation: data.preparation.present
          ? data.preparation.value
          : this.preparation,
    );
  }

  @override
  String toString() {
    return (StringBuffer('IngredientLineRow(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('sectionId: $sectionId, ')
          ..write('rawText: $rawText, ')
          ..write('sortKey: $sortKey, ')
          ..write('quantityNumerator: $quantityNumerator, ')
          ..write('quantityDenominator: $quantityDenominator, ')
          ..write('quantityMaxNumerator: $quantityMaxNumerator, ')
          ..write('quantityMaxDenominator: $quantityMaxDenominator, ')
          ..write('unit: $unit, ')
          ..write('name: $name, ')
          ..write('preparation: $preparation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recipeId,
    sectionId,
    rawText,
    sortKey,
    quantityNumerator,
    quantityDenominator,
    quantityMaxNumerator,
    quantityMaxDenominator,
    unit,
    name,
    preparation,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IngredientLineRow &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.sectionId == this.sectionId &&
          other.rawText == this.rawText &&
          other.sortKey == this.sortKey &&
          other.quantityNumerator == this.quantityNumerator &&
          other.quantityDenominator == this.quantityDenominator &&
          other.quantityMaxNumerator == this.quantityMaxNumerator &&
          other.quantityMaxDenominator == this.quantityMaxDenominator &&
          other.unit == this.unit &&
          other.name == this.name &&
          other.preparation == this.preparation);
}

class IngredientLinesCompanion extends UpdateCompanion<IngredientLineRow> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<String?> sectionId;
  final Value<String> rawText;
  final Value<String> sortKey;
  final Value<int?> quantityNumerator;
  final Value<int?> quantityDenominator;
  final Value<int?> quantityMaxNumerator;
  final Value<int?> quantityMaxDenominator;
  final Value<Unit?> unit;
  final Value<String?> name;
  final Value<String?> preparation;
  final Value<int> rowid;
  const IngredientLinesCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.rawText = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.quantityNumerator = const Value.absent(),
    this.quantityDenominator = const Value.absent(),
    this.quantityMaxNumerator = const Value.absent(),
    this.quantityMaxDenominator = const Value.absent(),
    this.unit = const Value.absent(),
    this.name = const Value.absent(),
    this.preparation = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  IngredientLinesCompanion.insert({
    required String id,
    required String recipeId,
    this.sectionId = const Value.absent(),
    required String rawText,
    required String sortKey,
    this.quantityNumerator = const Value.absent(),
    this.quantityDenominator = const Value.absent(),
    this.quantityMaxNumerator = const Value.absent(),
    this.quantityMaxDenominator = const Value.absent(),
    this.unit = const Value.absent(),
    this.name = const Value.absent(),
    this.preparation = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       rawText = Value(rawText),
       sortKey = Value(sortKey);
  static Insertable<IngredientLineRow> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<String>? sectionId,
    Expression<String>? rawText,
    Expression<String>? sortKey,
    Expression<int>? quantityNumerator,
    Expression<int>? quantityDenominator,
    Expression<int>? quantityMaxNumerator,
    Expression<int>? quantityMaxDenominator,
    Expression<String>? unit,
    Expression<String>? name,
    Expression<String>? preparation,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (sectionId != null) 'section_id': sectionId,
      if (rawText != null) 'raw_text': rawText,
      if (sortKey != null) 'sort_key': sortKey,
      if (quantityNumerator != null) 'quantity_numerator': quantityNumerator,
      if (quantityDenominator != null)
        'quantity_denominator': quantityDenominator,
      if (quantityMaxNumerator != null)
        'quantity_max_numerator': quantityMaxNumerator,
      if (quantityMaxDenominator != null)
        'quantity_max_denominator': quantityMaxDenominator,
      if (unit != null) 'unit': unit,
      if (name != null) 'name': name,
      if (preparation != null) 'preparation': preparation,
      if (rowid != null) 'rowid': rowid,
    });
  }

  IngredientLinesCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<String?>? sectionId,
    Value<String>? rawText,
    Value<String>? sortKey,
    Value<int?>? quantityNumerator,
    Value<int?>? quantityDenominator,
    Value<int?>? quantityMaxNumerator,
    Value<int?>? quantityMaxDenominator,
    Value<Unit?>? unit,
    Value<String?>? name,
    Value<String?>? preparation,
    Value<int>? rowid,
  }) {
    return IngredientLinesCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      sectionId: sectionId ?? this.sectionId,
      rawText: rawText ?? this.rawText,
      sortKey: sortKey ?? this.sortKey,
      quantityNumerator: quantityNumerator ?? this.quantityNumerator,
      quantityDenominator: quantityDenominator ?? this.quantityDenominator,
      quantityMaxNumerator: quantityMaxNumerator ?? this.quantityMaxNumerator,
      quantityMaxDenominator:
          quantityMaxDenominator ?? this.quantityMaxDenominator,
      unit: unit ?? this.unit,
      name: name ?? this.name,
      preparation: preparation ?? this.preparation,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<String>(sectionId.value);
    }
    if (rawText.present) {
      map['raw_text'] = Variable<String>(rawText.value);
    }
    if (sortKey.present) {
      map['sort_key'] = Variable<String>(sortKey.value);
    }
    if (quantityNumerator.present) {
      map['quantity_numerator'] = Variable<int>(quantityNumerator.value);
    }
    if (quantityDenominator.present) {
      map['quantity_denominator'] = Variable<int>(quantityDenominator.value);
    }
    if (quantityMaxNumerator.present) {
      map['quantity_max_numerator'] = Variable<int>(quantityMaxNumerator.value);
    }
    if (quantityMaxDenominator.present) {
      map['quantity_max_denominator'] = Variable<int>(
        quantityMaxDenominator.value,
      );
    }
    if (unit.present) {
      map['unit'] = Variable<String>(
        $IngredientLinesTable.$converterunitn.toSql(unit.value),
      );
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (preparation.present) {
      map['preparation'] = Variable<String>(preparation.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IngredientLinesCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('sectionId: $sectionId, ')
          ..write('rawText: $rawText, ')
          ..write('sortKey: $sortKey, ')
          ..write('quantityNumerator: $quantityNumerator, ')
          ..write('quantityDenominator: $quantityDenominator, ')
          ..write('quantityMaxNumerator: $quantityMaxNumerator, ')
          ..write('quantityMaxDenominator: $quantityMaxDenominator, ')
          ..write('unit: $unit, ')
          ..write('name: $name, ')
          ..write('preparation: $preparation, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StepSectionsTable extends StepSections
    with TableInfo<$StepSectionsTable, StepSectionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StepSectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortKeyMeta = const VerificationMeta(
    'sortKey',
  );
  @override
  late final GeneratedColumn<String> sortKey = GeneratedColumn<String>(
    'sort_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, recipeId, name, sortKey];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'step_sections';
  @override
  VerificationContext validateIntegrity(
    Insertable<StepSectionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sort_key')) {
      context.handle(
        _sortKeyMeta,
        sortKey.isAcceptableOrUnknown(data['sort_key']!, _sortKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_sortKeyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StepSectionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StepSectionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      sortKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sort_key'],
      )!,
    );
  }

  @override
  $StepSectionsTable createAlias(String alias) {
    return $StepSectionsTable(attachedDatabase, alias);
  }
}

class StepSectionRow extends DataClass implements Insertable<StepSectionRow> {
  final String id;
  final String recipeId;
  final String name;
  final String sortKey;
  const StepSectionRow({
    required this.id,
    required this.recipeId,
    required this.name,
    required this.sortKey,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    map['name'] = Variable<String>(name);
    map['sort_key'] = Variable<String>(sortKey);
    return map;
  }

  StepSectionsCompanion toCompanion(bool nullToAbsent) {
    return StepSectionsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      name: Value(name),
      sortKey: Value(sortKey),
    );
  }

  factory StepSectionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StepSectionRow(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      name: serializer.fromJson<String>(json['name']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'name': serializer.toJson<String>(name),
      'sortKey': serializer.toJson<String>(sortKey),
    };
  }

  StepSectionRow copyWith({
    String? id,
    String? recipeId,
    String? name,
    String? sortKey,
  }) => StepSectionRow(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    name: name ?? this.name,
    sortKey: sortKey ?? this.sortKey,
  );
  StepSectionRow copyWithCompanion(StepSectionsCompanion data) {
    return StepSectionRow(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      name: data.name.present ? data.name.value : this.name,
      sortKey: data.sortKey.present ? data.sortKey.value : this.sortKey,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StepSectionRow(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('sortKey: $sortKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recipeId, name, sortKey);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StepSectionRow &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.name == this.name &&
          other.sortKey == this.sortKey);
}

class StepSectionsCompanion extends UpdateCompanion<StepSectionRow> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<String> name;
  final Value<String> sortKey;
  final Value<int> rowid;
  const StepSectionsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.name = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StepSectionsCompanion.insert({
    required String id,
    required String recipeId,
    required String name,
    required String sortKey,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       name = Value(name),
       sortKey = Value(sortKey);
  static Insertable<StepSectionRow> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<String>? name,
    Expression<String>? sortKey,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (name != null) 'name': name,
      if (sortKey != null) 'sort_key': sortKey,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StepSectionsCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<String>? name,
    Value<String>? sortKey,
    Value<int>? rowid,
  }) {
    return StepSectionsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      name: name ?? this.name,
      sortKey: sortKey ?? this.sortKey,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sortKey.present) {
      map['sort_key'] = Variable<String>(sortKey.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StepSectionsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('sortKey: $sortKey, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecipeStepsTable extends RecipeSteps
    with TableInfo<$RecipeStepsTable, RecipeStepRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeStepsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sectionIdMeta = const VerificationMeta(
    'sectionId',
  );
  @override
  late final GeneratedColumn<String> sectionId = GeneratedColumn<String>(
    'section_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortKeyMeta = const VerificationMeta(
    'sortKey',
  );
  @override
  late final GeneratedColumn<String> sortKey = GeneratedColumn<String>(
    'sort_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recipeId,
    sectionId,
    body,
    sortKey,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipe_steps';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecipeStepRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
        _sectionIdMeta,
        sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta),
      );
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('sort_key')) {
      context.handle(
        _sortKeyMeta,
        sortKey.isAcceptableOrUnknown(data['sort_key']!, _sortKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_sortKeyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeStepRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeStepRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      sectionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}section_id'],
      ),
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      sortKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sort_key'],
      )!,
    );
  }

  @override
  $RecipeStepsTable createAlias(String alias) {
    return $RecipeStepsTable(attachedDatabase, alias);
  }
}

class RecipeStepRow extends DataClass implements Insertable<RecipeStepRow> {
  final String id;
  final String recipeId;
  final String? sectionId;

  /// The step text. Named `body` because `text` is a `Table` method.
  final String body;
  final String sortKey;
  const RecipeStepRow({
    required this.id,
    required this.recipeId,
    this.sectionId,
    required this.body,
    required this.sortKey,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<String>(sectionId);
    }
    map['body'] = Variable<String>(body);
    map['sort_key'] = Variable<String>(sortKey);
    return map;
  }

  RecipeStepsCompanion toCompanion(bool nullToAbsent) {
    return RecipeStepsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      sectionId: sectionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionId),
      body: Value(body),
      sortKey: Value(sortKey),
    );
  }

  factory RecipeStepRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeStepRow(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      sectionId: serializer.fromJson<String?>(json['sectionId']),
      body: serializer.fromJson<String>(json['body']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'sectionId': serializer.toJson<String?>(sectionId),
      'body': serializer.toJson<String>(body),
      'sortKey': serializer.toJson<String>(sortKey),
    };
  }

  RecipeStepRow copyWith({
    String? id,
    String? recipeId,
    Value<String?> sectionId = const Value.absent(),
    String? body,
    String? sortKey,
  }) => RecipeStepRow(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    sectionId: sectionId.present ? sectionId.value : this.sectionId,
    body: body ?? this.body,
    sortKey: sortKey ?? this.sortKey,
  );
  RecipeStepRow copyWithCompanion(RecipeStepsCompanion data) {
    return RecipeStepRow(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      sectionId: data.sectionId.present ? data.sectionId.value : this.sectionId,
      body: data.body.present ? data.body.value : this.body,
      sortKey: data.sortKey.present ? data.sortKey.value : this.sortKey,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecipeStepRow(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('sectionId: $sectionId, ')
          ..write('body: $body, ')
          ..write('sortKey: $sortKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recipeId, sectionId, body, sortKey);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeStepRow &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.sectionId == this.sectionId &&
          other.body == this.body &&
          other.sortKey == this.sortKey);
}

class RecipeStepsCompanion extends UpdateCompanion<RecipeStepRow> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<String?> sectionId;
  final Value<String> body;
  final Value<String> sortKey;
  final Value<int> rowid;
  const RecipeStepsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.body = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecipeStepsCompanion.insert({
    required String id,
    required String recipeId,
    this.sectionId = const Value.absent(),
    required String body,
    required String sortKey,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       body = Value(body),
       sortKey = Value(sortKey);
  static Insertable<RecipeStepRow> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<String>? sectionId,
    Expression<String>? body,
    Expression<String>? sortKey,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (sectionId != null) 'section_id': sectionId,
      if (body != null) 'body': body,
      if (sortKey != null) 'sort_key': sortKey,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecipeStepsCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<String?>? sectionId,
    Value<String>? body,
    Value<String>? sortKey,
    Value<int>? rowid,
  }) {
    return RecipeStepsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      sectionId: sectionId ?? this.sectionId,
      body: body ?? this.body,
      sortKey: sortKey ?? this.sortKey,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<String>(sectionId.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (sortKey.present) {
      map['sort_key'] = Variable<String>(sortKey.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeStepsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('sectionId: $sectionId, ')
          ..write('body: $body, ')
          ..write('sortKey: $sortKey, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FoldersTable extends Folders with TableInfo<$FoldersTable, FolderRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoldersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'folders';
  @override
  VerificationContext validateIntegrity(
    Insertable<FolderRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FolderRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FolderRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FoldersTable createAlias(String alias) {
    return $FoldersTable(attachedDatabase, alias);
  }
}

class FolderRow extends DataClass implements Insertable<FolderRow> {
  final String id;
  final String name;
  final DateTime createdAt;
  const FolderRow({
    required this.id,
    required this.name,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FoldersCompanion toCompanion(bool nullToAbsent) {
    return FoldersCompanion(
      id: Value(id),
      name: Value(name),
      createdAt: Value(createdAt),
    );
  }

  factory FolderRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FolderRow(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FolderRow copyWith({String? id, String? name, DateTime? createdAt}) =>
      FolderRow(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  FolderRow copyWithCompanion(FoldersCompanion data) {
    return FolderRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FolderRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FolderRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class FoldersCompanion extends UpdateCompanion<FolderRow> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FoldersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoldersCompanion.insert({
    required String id,
    required String name,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       createdAt = Value(createdAt);
  static Insertable<FolderRow> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoldersCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FoldersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoldersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FolderEntriesTable extends FolderEntries
    with TableInfo<$FolderEntriesTable, FolderEntryRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FolderEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _folderIdMeta = const VerificationMeta(
    'folderId',
  );
  @override
  late final GeneratedColumn<String> folderId = GeneratedColumn<String>(
    'folder_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addedAtMeta = const VerificationMeta(
    'addedAt',
  );
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
    'added_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [folderId, recipeId, addedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'folder_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<FolderEntryRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('folder_id')) {
      context.handle(
        _folderIdMeta,
        folderId.isAcceptableOrUnknown(data['folder_id']!, _folderIdMeta),
      );
    } else if (isInserting) {
      context.missing(_folderIdMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('added_at')) {
      context.handle(
        _addedAtMeta,
        addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {folderId, recipeId};
  @override
  FolderEntryRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FolderEntryRow(
      folderId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}folder_id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      addedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}added_at'],
      )!,
    );
  }

  @override
  $FolderEntriesTable createAlias(String alias) {
    return $FolderEntriesTable(attachedDatabase, alias);
  }
}

class FolderEntryRow extends DataClass implements Insertable<FolderEntryRow> {
  final String folderId;
  final String recipeId;
  final DateTime addedAt;
  const FolderEntryRow({
    required this.folderId,
    required this.recipeId,
    required this.addedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['folder_id'] = Variable<String>(folderId);
    map['recipe_id'] = Variable<String>(recipeId);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  FolderEntriesCompanion toCompanion(bool nullToAbsent) {
    return FolderEntriesCompanion(
      folderId: Value(folderId),
      recipeId: Value(recipeId),
      addedAt: Value(addedAt),
    );
  }

  factory FolderEntryRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FolderEntryRow(
      folderId: serializer.fromJson<String>(json['folderId']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'folderId': serializer.toJson<String>(folderId),
      'recipeId': serializer.toJson<String>(recipeId),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  FolderEntryRow copyWith({
    String? folderId,
    String? recipeId,
    DateTime? addedAt,
  }) => FolderEntryRow(
    folderId: folderId ?? this.folderId,
    recipeId: recipeId ?? this.recipeId,
    addedAt: addedAt ?? this.addedAt,
  );
  FolderEntryRow copyWithCompanion(FolderEntriesCompanion data) {
    return FolderEntryRow(
      folderId: data.folderId.present ? data.folderId.value : this.folderId,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FolderEntryRow(')
          ..write('folderId: $folderId, ')
          ..write('recipeId: $recipeId, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(folderId, recipeId, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FolderEntryRow &&
          other.folderId == this.folderId &&
          other.recipeId == this.recipeId &&
          other.addedAt == this.addedAt);
}

class FolderEntriesCompanion extends UpdateCompanion<FolderEntryRow> {
  final Value<String> folderId;
  final Value<String> recipeId;
  final Value<DateTime> addedAt;
  final Value<int> rowid;
  const FolderEntriesCompanion({
    this.folderId = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FolderEntriesCompanion.insert({
    required String folderId,
    required String recipeId,
    required DateTime addedAt,
    this.rowid = const Value.absent(),
  }) : folderId = Value(folderId),
       recipeId = Value(recipeId),
       addedAt = Value(addedAt);
  static Insertable<FolderEntryRow> custom({
    Expression<String>? folderId,
    Expression<String>? recipeId,
    Expression<DateTime>? addedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (folderId != null) 'folder_id': folderId,
      if (recipeId != null) 'recipe_id': recipeId,
      if (addedAt != null) 'added_at': addedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FolderEntriesCompanion copyWith({
    Value<String>? folderId,
    Value<String>? recipeId,
    Value<DateTime>? addedAt,
    Value<int>? rowid,
  }) {
    return FolderEntriesCompanion(
      folderId: folderId ?? this.folderId,
      recipeId: recipeId ?? this.recipeId,
      addedAt: addedAt ?? this.addedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (folderId.present) {
      map['folder_id'] = Variable<String>(folderId.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FolderEntriesCompanion(')
          ..write('folderId: $folderId, ')
          ..write('recipeId: $recipeId, ')
          ..write('addedAt: $addedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FoodsTable extends Foods with TableInfo<$FoodsTable, FoodRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<NutritionSource, String> source =
      GeneratedColumn<String>(
        'source',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<NutritionSource>($FoodsTable.$convertersource);
  static const VerificationMeta _externalIdMeta = const VerificationMeta(
    'externalId',
  );
  @override
  late final GeneratedColumn<String> externalId = GeneratedColumn<String>(
    'external_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, source, externalId, name, brand];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'foods';
  @override
  VerificationContext validateIntegrity(
    Insertable<FoodRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('external_id')) {
      context.handle(
        _externalIdMeta,
        externalId.isAcceptableOrUnknown(data['external_id']!, _externalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_externalIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      source: $FoodsTable.$convertersource.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}source'],
        )!,
      ),
      externalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}external_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      ),
    );
  }

  @override
  $FoodsTable createAlias(String alias) {
    return $FoodsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<NutritionSource, String, String> $convertersource =
      const EnumNameConverter<NutritionSource>(NutritionSource.values);
}

class FoodRow extends DataClass implements Insertable<FoodRow> {
  final String id;
  final NutritionSource source;
  final String externalId;
  final String name;
  final String? brand;
  const FoodRow({
    required this.id,
    required this.source,
    required this.externalId,
    required this.name,
    this.brand,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    {
      map['source'] = Variable<String>(
        $FoodsTable.$convertersource.toSql(source),
      );
    }
    map['external_id'] = Variable<String>(externalId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    return map;
  }

  FoodsCompanion toCompanion(bool nullToAbsent) {
    return FoodsCompanion(
      id: Value(id),
      source: Value(source),
      externalId: Value(externalId),
      name: Value(name),
      brand: brand == null && nullToAbsent
          ? const Value.absent()
          : Value(brand),
    );
  }

  factory FoodRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodRow(
      id: serializer.fromJson<String>(json['id']),
      source: $FoodsTable.$convertersource.fromJson(
        serializer.fromJson<String>(json['source']),
      ),
      externalId: serializer.fromJson<String>(json['externalId']),
      name: serializer.fromJson<String>(json['name']),
      brand: serializer.fromJson<String?>(json['brand']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'source': serializer.toJson<String>(
        $FoodsTable.$convertersource.toJson(source),
      ),
      'externalId': serializer.toJson<String>(externalId),
      'name': serializer.toJson<String>(name),
      'brand': serializer.toJson<String?>(brand),
    };
  }

  FoodRow copyWith({
    String? id,
    NutritionSource? source,
    String? externalId,
    String? name,
    Value<String?> brand = const Value.absent(),
  }) => FoodRow(
    id: id ?? this.id,
    source: source ?? this.source,
    externalId: externalId ?? this.externalId,
    name: name ?? this.name,
    brand: brand.present ? brand.value : this.brand,
  );
  FoodRow copyWithCompanion(FoodsCompanion data) {
    return FoodRow(
      id: data.id.present ? data.id.value : this.id,
      source: data.source.present ? data.source.value : this.source,
      externalId: data.externalId.present
          ? data.externalId.value
          : this.externalId,
      name: data.name.present ? data.name.value : this.name,
      brand: data.brand.present ? data.brand.value : this.brand,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodRow(')
          ..write('id: $id, ')
          ..write('source: $source, ')
          ..write('externalId: $externalId, ')
          ..write('name: $name, ')
          ..write('brand: $brand')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, source, externalId, name, brand);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodRow &&
          other.id == this.id &&
          other.source == this.source &&
          other.externalId == this.externalId &&
          other.name == this.name &&
          other.brand == this.brand);
}

class FoodsCompanion extends UpdateCompanion<FoodRow> {
  final Value<String> id;
  final Value<NutritionSource> source;
  final Value<String> externalId;
  final Value<String> name;
  final Value<String?> brand;
  final Value<int> rowid;
  const FoodsCompanion({
    this.id = const Value.absent(),
    this.source = const Value.absent(),
    this.externalId = const Value.absent(),
    this.name = const Value.absent(),
    this.brand = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodsCompanion.insert({
    required String id,
    required NutritionSource source,
    required String externalId,
    required String name,
    this.brand = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       source = Value(source),
       externalId = Value(externalId),
       name = Value(name);
  static Insertable<FoodRow> custom({
    Expression<String>? id,
    Expression<String>? source,
    Expression<String>? externalId,
    Expression<String>? name,
    Expression<String>? brand,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (source != null) 'source': source,
      if (externalId != null) 'external_id': externalId,
      if (name != null) 'name': name,
      if (brand != null) 'brand': brand,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodsCompanion copyWith({
    Value<String>? id,
    Value<NutritionSource>? source,
    Value<String>? externalId,
    Value<String>? name,
    Value<String?>? brand,
    Value<int>? rowid,
  }) {
    return FoodsCompanion(
      id: id ?? this.id,
      source: source ?? this.source,
      externalId: externalId ?? this.externalId,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(
        $FoodsTable.$convertersource.toSql(source.value),
      );
    }
    if (externalId.present) {
      map['external_id'] = Variable<String>(externalId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsCompanion(')
          ..write('id: $id, ')
          ..write('source: $source, ')
          ..write('externalId: $externalId, ')
          ..write('name: $name, ')
          ..write('brand: $brand, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FoodNutrientsTable extends FoodNutrients
    with TableInfo<$FoodNutrientsTable, FoodNutrientRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodNutrientsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<String> foodId = GeneratedColumn<String>(
    'food_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nutrientCodeMeta = const VerificationMeta(
    'nutrientCode',
  );
  @override
  late final GeneratedColumn<String> nutrientCode = GeneratedColumn<String>(
    'nutrient_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountPer100gMeta = const VerificationMeta(
    'amountPer100g',
  );
  @override
  late final GeneratedColumn<double> amountPer100g = GeneratedColumn<double>(
    'amount_per100g',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [foodId, nutrientCode, amountPer100g];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_nutrients';
  @override
  VerificationContext validateIntegrity(
    Insertable<FoodNutrientRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('food_id')) {
      context.handle(
        _foodIdMeta,
        foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta),
      );
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    if (data.containsKey('nutrient_code')) {
      context.handle(
        _nutrientCodeMeta,
        nutrientCode.isAcceptableOrUnknown(
          data['nutrient_code']!,
          _nutrientCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nutrientCodeMeta);
    }
    if (data.containsKey('amount_per100g')) {
      context.handle(
        _amountPer100gMeta,
        amountPer100g.isAcceptableOrUnknown(
          data['amount_per100g']!,
          _amountPer100gMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountPer100gMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {foodId, nutrientCode};
  @override
  FoodNutrientRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodNutrientRow(
      foodId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}food_id'],
      )!,
      nutrientCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nutrient_code'],
      )!,
      amountPer100g: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount_per100g'],
      )!,
    );
  }

  @override
  $FoodNutrientsTable createAlias(String alias) {
    return $FoodNutrientsTable(attachedDatabase, alias);
  }
}

class FoodNutrientRow extends DataClass implements Insertable<FoodNutrientRow> {
  final String foodId;
  final String nutrientCode;
  final double amountPer100g;
  const FoodNutrientRow({
    required this.foodId,
    required this.nutrientCode,
    required this.amountPer100g,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['food_id'] = Variable<String>(foodId);
    map['nutrient_code'] = Variable<String>(nutrientCode);
    map['amount_per100g'] = Variable<double>(amountPer100g);
    return map;
  }

  FoodNutrientsCompanion toCompanion(bool nullToAbsent) {
    return FoodNutrientsCompanion(
      foodId: Value(foodId),
      nutrientCode: Value(nutrientCode),
      amountPer100g: Value(amountPer100g),
    );
  }

  factory FoodNutrientRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodNutrientRow(
      foodId: serializer.fromJson<String>(json['foodId']),
      nutrientCode: serializer.fromJson<String>(json['nutrientCode']),
      amountPer100g: serializer.fromJson<double>(json['amountPer100g']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'foodId': serializer.toJson<String>(foodId),
      'nutrientCode': serializer.toJson<String>(nutrientCode),
      'amountPer100g': serializer.toJson<double>(amountPer100g),
    };
  }

  FoodNutrientRow copyWith({
    String? foodId,
    String? nutrientCode,
    double? amountPer100g,
  }) => FoodNutrientRow(
    foodId: foodId ?? this.foodId,
    nutrientCode: nutrientCode ?? this.nutrientCode,
    amountPer100g: amountPer100g ?? this.amountPer100g,
  );
  FoodNutrientRow copyWithCompanion(FoodNutrientsCompanion data) {
    return FoodNutrientRow(
      foodId: data.foodId.present ? data.foodId.value : this.foodId,
      nutrientCode: data.nutrientCode.present
          ? data.nutrientCode.value
          : this.nutrientCode,
      amountPer100g: data.amountPer100g.present
          ? data.amountPer100g.value
          : this.amountPer100g,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodNutrientRow(')
          ..write('foodId: $foodId, ')
          ..write('nutrientCode: $nutrientCode, ')
          ..write('amountPer100g: $amountPer100g')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(foodId, nutrientCode, amountPer100g);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodNutrientRow &&
          other.foodId == this.foodId &&
          other.nutrientCode == this.nutrientCode &&
          other.amountPer100g == this.amountPer100g);
}

class FoodNutrientsCompanion extends UpdateCompanion<FoodNutrientRow> {
  final Value<String> foodId;
  final Value<String> nutrientCode;
  final Value<double> amountPer100g;
  final Value<int> rowid;
  const FoodNutrientsCompanion({
    this.foodId = const Value.absent(),
    this.nutrientCode = const Value.absent(),
    this.amountPer100g = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodNutrientsCompanion.insert({
    required String foodId,
    required String nutrientCode,
    required double amountPer100g,
    this.rowid = const Value.absent(),
  }) : foodId = Value(foodId),
       nutrientCode = Value(nutrientCode),
       amountPer100g = Value(amountPer100g);
  static Insertable<FoodNutrientRow> custom({
    Expression<String>? foodId,
    Expression<String>? nutrientCode,
    Expression<double>? amountPer100g,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (foodId != null) 'food_id': foodId,
      if (nutrientCode != null) 'nutrient_code': nutrientCode,
      if (amountPer100g != null) 'amount_per100g': amountPer100g,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodNutrientsCompanion copyWith({
    Value<String>? foodId,
    Value<String>? nutrientCode,
    Value<double>? amountPer100g,
    Value<int>? rowid,
  }) {
    return FoodNutrientsCompanion(
      foodId: foodId ?? this.foodId,
      nutrientCode: nutrientCode ?? this.nutrientCode,
      amountPer100g: amountPer100g ?? this.amountPer100g,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (foodId.present) {
      map['food_id'] = Variable<String>(foodId.value);
    }
    if (nutrientCode.present) {
      map['nutrient_code'] = Variable<String>(nutrientCode.value);
    }
    if (amountPer100g.present) {
      map['amount_per100g'] = Variable<double>(amountPer100g.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodNutrientsCompanion(')
          ..write('foodId: $foodId, ')
          ..write('nutrientCode: $nutrientCode, ')
          ..write('amountPer100g: $amountPer100g, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FoodPortionsTable extends FoodPortions
    with TableInfo<$FoodPortionsTable, FoodPortionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodPortionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<String> foodId = GeneratedColumn<String>(
    'food_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountNumeratorMeta = const VerificationMeta(
    'amountNumerator',
  );
  @override
  late final GeneratedColumn<int> amountNumerator = GeneratedColumn<int>(
    'amount_numerator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountDenominatorMeta = const VerificationMeta(
    'amountDenominator',
  );
  @override
  late final GeneratedColumn<int> amountDenominator = GeneratedColumn<int>(
    'amount_denominator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _gramWeightMeta = const VerificationMeta(
    'gramWeight',
  );
  @override
  late final GeneratedColumn<double> gramWeight = GeneratedColumn<double>(
    'gram_weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Unit?, String> unit =
      GeneratedColumn<String>(
        'unit',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<Unit?>($FoodPortionsTable.$converterunitn);
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    foodId,
    amountNumerator,
    amountDenominator,
    gramWeight,
    unit,
    description,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_portions';
  @override
  VerificationContext validateIntegrity(
    Insertable<FoodPortionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('food_id')) {
      context.handle(
        _foodIdMeta,
        foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta),
      );
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    if (data.containsKey('amount_numerator')) {
      context.handle(
        _amountNumeratorMeta,
        amountNumerator.isAcceptableOrUnknown(
          data['amount_numerator']!,
          _amountNumeratorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountNumeratorMeta);
    }
    if (data.containsKey('amount_denominator')) {
      context.handle(
        _amountDenominatorMeta,
        amountDenominator.isAcceptableOrUnknown(
          data['amount_denominator']!,
          _amountDenominatorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountDenominatorMeta);
    }
    if (data.containsKey('gram_weight')) {
      context.handle(
        _gramWeightMeta,
        gramWeight.isAcceptableOrUnknown(data['gram_weight']!, _gramWeightMeta),
      );
    } else if (isInserting) {
      context.missing(_gramWeightMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodPortionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodPortionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      foodId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}food_id'],
      )!,
      amountNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount_numerator'],
      )!,
      amountDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount_denominator'],
      )!,
      gramWeight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gram_weight'],
      )!,
      unit: $FoodPortionsTable.$converterunitn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}unit'],
        ),
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
    );
  }

  @override
  $FoodPortionsTable createAlias(String alias) {
    return $FoodPortionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Unit, String, String> $converterunit =
      const EnumNameConverter<Unit>(Unit.values);
  static JsonTypeConverter2<Unit?, String?, String?> $converterunitn =
      JsonTypeConverter2.asNullable($converterunit);
}

class FoodPortionRow extends DataClass implements Insertable<FoodPortionRow> {
  final String id;
  final String foodId;
  final int amountNumerator;
  final int amountDenominator;
  final double gramWeight;
  final Unit? unit;
  final String description;
  const FoodPortionRow({
    required this.id,
    required this.foodId,
    required this.amountNumerator,
    required this.amountDenominator,
    required this.gramWeight,
    this.unit,
    required this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['food_id'] = Variable<String>(foodId);
    map['amount_numerator'] = Variable<int>(amountNumerator);
    map['amount_denominator'] = Variable<int>(amountDenominator);
    map['gram_weight'] = Variable<double>(gramWeight);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(
        $FoodPortionsTable.$converterunitn.toSql(unit),
      );
    }
    map['description'] = Variable<String>(description);
    return map;
  }

  FoodPortionsCompanion toCompanion(bool nullToAbsent) {
    return FoodPortionsCompanion(
      id: Value(id),
      foodId: Value(foodId),
      amountNumerator: Value(amountNumerator),
      amountDenominator: Value(amountDenominator),
      gramWeight: Value(gramWeight),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      description: Value(description),
    );
  }

  factory FoodPortionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodPortionRow(
      id: serializer.fromJson<String>(json['id']),
      foodId: serializer.fromJson<String>(json['foodId']),
      amountNumerator: serializer.fromJson<int>(json['amountNumerator']),
      amountDenominator: serializer.fromJson<int>(json['amountDenominator']),
      gramWeight: serializer.fromJson<double>(json['gramWeight']),
      unit: $FoodPortionsTable.$converterunitn.fromJson(
        serializer.fromJson<String?>(json['unit']),
      ),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'foodId': serializer.toJson<String>(foodId),
      'amountNumerator': serializer.toJson<int>(amountNumerator),
      'amountDenominator': serializer.toJson<int>(amountDenominator),
      'gramWeight': serializer.toJson<double>(gramWeight),
      'unit': serializer.toJson<String?>(
        $FoodPortionsTable.$converterunitn.toJson(unit),
      ),
      'description': serializer.toJson<String>(description),
    };
  }

  FoodPortionRow copyWith({
    String? id,
    String? foodId,
    int? amountNumerator,
    int? amountDenominator,
    double? gramWeight,
    Value<Unit?> unit = const Value.absent(),
    String? description,
  }) => FoodPortionRow(
    id: id ?? this.id,
    foodId: foodId ?? this.foodId,
    amountNumerator: amountNumerator ?? this.amountNumerator,
    amountDenominator: amountDenominator ?? this.amountDenominator,
    gramWeight: gramWeight ?? this.gramWeight,
    unit: unit.present ? unit.value : this.unit,
    description: description ?? this.description,
  );
  FoodPortionRow copyWithCompanion(FoodPortionsCompanion data) {
    return FoodPortionRow(
      id: data.id.present ? data.id.value : this.id,
      foodId: data.foodId.present ? data.foodId.value : this.foodId,
      amountNumerator: data.amountNumerator.present
          ? data.amountNumerator.value
          : this.amountNumerator,
      amountDenominator: data.amountDenominator.present
          ? data.amountDenominator.value
          : this.amountDenominator,
      gramWeight: data.gramWeight.present
          ? data.gramWeight.value
          : this.gramWeight,
      unit: data.unit.present ? data.unit.value : this.unit,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodPortionRow(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('amountNumerator: $amountNumerator, ')
          ..write('amountDenominator: $amountDenominator, ')
          ..write('gramWeight: $gramWeight, ')
          ..write('unit: $unit, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    foodId,
    amountNumerator,
    amountDenominator,
    gramWeight,
    unit,
    description,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodPortionRow &&
          other.id == this.id &&
          other.foodId == this.foodId &&
          other.amountNumerator == this.amountNumerator &&
          other.amountDenominator == this.amountDenominator &&
          other.gramWeight == this.gramWeight &&
          other.unit == this.unit &&
          other.description == this.description);
}

class FoodPortionsCompanion extends UpdateCompanion<FoodPortionRow> {
  final Value<String> id;
  final Value<String> foodId;
  final Value<int> amountNumerator;
  final Value<int> amountDenominator;
  final Value<double> gramWeight;
  final Value<Unit?> unit;
  final Value<String> description;
  final Value<int> rowid;
  const FoodPortionsCompanion({
    this.id = const Value.absent(),
    this.foodId = const Value.absent(),
    this.amountNumerator = const Value.absent(),
    this.amountDenominator = const Value.absent(),
    this.gramWeight = const Value.absent(),
    this.unit = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodPortionsCompanion.insert({
    required String id,
    required String foodId,
    required int amountNumerator,
    required int amountDenominator,
    required double gramWeight,
    this.unit = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       foodId = Value(foodId),
       amountNumerator = Value(amountNumerator),
       amountDenominator = Value(amountDenominator),
       gramWeight = Value(gramWeight);
  static Insertable<FoodPortionRow> custom({
    Expression<String>? id,
    Expression<String>? foodId,
    Expression<int>? amountNumerator,
    Expression<int>? amountDenominator,
    Expression<double>? gramWeight,
    Expression<String>? unit,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (foodId != null) 'food_id': foodId,
      if (amountNumerator != null) 'amount_numerator': amountNumerator,
      if (amountDenominator != null) 'amount_denominator': amountDenominator,
      if (gramWeight != null) 'gram_weight': gramWeight,
      if (unit != null) 'unit': unit,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodPortionsCompanion copyWith({
    Value<String>? id,
    Value<String>? foodId,
    Value<int>? amountNumerator,
    Value<int>? amountDenominator,
    Value<double>? gramWeight,
    Value<Unit?>? unit,
    Value<String>? description,
    Value<int>? rowid,
  }) {
    return FoodPortionsCompanion(
      id: id ?? this.id,
      foodId: foodId ?? this.foodId,
      amountNumerator: amountNumerator ?? this.amountNumerator,
      amountDenominator: amountDenominator ?? this.amountDenominator,
      gramWeight: gramWeight ?? this.gramWeight,
      unit: unit ?? this.unit,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<String>(foodId.value);
    }
    if (amountNumerator.present) {
      map['amount_numerator'] = Variable<int>(amountNumerator.value);
    }
    if (amountDenominator.present) {
      map['amount_denominator'] = Variable<int>(amountDenominator.value);
    }
    if (gramWeight.present) {
      map['gram_weight'] = Variable<double>(gramWeight.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(
        $FoodPortionsTable.$converterunitn.toSql(unit.value),
      );
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodPortionsCompanion(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('amountNumerator: $amountNumerator, ')
          ..write('amountDenominator: $amountDenominator, ')
          ..write('gramWeight: $gramWeight, ')
          ..write('unit: $unit, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NutritionMatchesTable extends NutritionMatches
    with TableInfo<$NutritionMatchesTable, NutritionMatchRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NutritionMatchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ingredientLineIdMeta = const VerificationMeta(
    'ingredientLineId',
  );
  @override
  late final GeneratedColumn<String> ingredientLineId = GeneratedColumn<String>(
    'ingredient_line_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<String> foodId = GeneratedColumn<String>(
    'food_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<NutritionSource, String> source =
      GeneratedColumn<String>(
        'source',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<NutritionSource>($NutritionMatchesTable.$convertersource);
  static const VerificationMeta _gramWeightMeta = const VerificationMeta(
    'gramWeight',
  );
  @override
  late final GeneratedColumn<double> gramWeight = GeneratedColumn<double>(
    'gram_weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userConfirmedMeta = const VerificationMeta(
    'userConfirmed',
  );
  @override
  late final GeneratedColumn<bool> userConfirmed = GeneratedColumn<bool>(
    'user_confirmed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("user_confirmed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ingredientLineId,
    foodId,
    source,
    gramWeight,
    userConfirmed,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nutrition_matches';
  @override
  VerificationContext validateIntegrity(
    Insertable<NutritionMatchRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ingredient_line_id')) {
      context.handle(
        _ingredientLineIdMeta,
        ingredientLineId.isAcceptableOrUnknown(
          data['ingredient_line_id']!,
          _ingredientLineIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ingredientLineIdMeta);
    }
    if (data.containsKey('food_id')) {
      context.handle(
        _foodIdMeta,
        foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta),
      );
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    if (data.containsKey('gram_weight')) {
      context.handle(
        _gramWeightMeta,
        gramWeight.isAcceptableOrUnknown(data['gram_weight']!, _gramWeightMeta),
      );
    } else if (isInserting) {
      context.missing(_gramWeightMeta);
    }
    if (data.containsKey('user_confirmed')) {
      context.handle(
        _userConfirmedMeta,
        userConfirmed.isAcceptableOrUnknown(
          data['user_confirmed']!,
          _userConfirmedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NutritionMatchRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NutritionMatchRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      ingredientLineId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_line_id'],
      )!,
      foodId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}food_id'],
      )!,
      source: $NutritionMatchesTable.$convertersource.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}source'],
        )!,
      ),
      gramWeight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}gram_weight'],
      )!,
      userConfirmed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}user_confirmed'],
      )!,
    );
  }

  @override
  $NutritionMatchesTable createAlias(String alias) {
    return $NutritionMatchesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<NutritionSource, String, String> $convertersource =
      const EnumNameConverter<NutritionSource>(NutritionSource.values);
}

class NutritionMatchRow extends DataClass
    implements Insertable<NutritionMatchRow> {
  final String id;
  final String ingredientLineId;
  final String foodId;
  final NutritionSource source;
  final double gramWeight;
  final bool userConfirmed;
  const NutritionMatchRow({
    required this.id,
    required this.ingredientLineId,
    required this.foodId,
    required this.source,
    required this.gramWeight,
    required this.userConfirmed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['ingredient_line_id'] = Variable<String>(ingredientLineId);
    map['food_id'] = Variable<String>(foodId);
    {
      map['source'] = Variable<String>(
        $NutritionMatchesTable.$convertersource.toSql(source),
      );
    }
    map['gram_weight'] = Variable<double>(gramWeight);
    map['user_confirmed'] = Variable<bool>(userConfirmed);
    return map;
  }

  NutritionMatchesCompanion toCompanion(bool nullToAbsent) {
    return NutritionMatchesCompanion(
      id: Value(id),
      ingredientLineId: Value(ingredientLineId),
      foodId: Value(foodId),
      source: Value(source),
      gramWeight: Value(gramWeight),
      userConfirmed: Value(userConfirmed),
    );
  }

  factory NutritionMatchRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NutritionMatchRow(
      id: serializer.fromJson<String>(json['id']),
      ingredientLineId: serializer.fromJson<String>(json['ingredientLineId']),
      foodId: serializer.fromJson<String>(json['foodId']),
      source: $NutritionMatchesTable.$convertersource.fromJson(
        serializer.fromJson<String>(json['source']),
      ),
      gramWeight: serializer.fromJson<double>(json['gramWeight']),
      userConfirmed: serializer.fromJson<bool>(json['userConfirmed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ingredientLineId': serializer.toJson<String>(ingredientLineId),
      'foodId': serializer.toJson<String>(foodId),
      'source': serializer.toJson<String>(
        $NutritionMatchesTable.$convertersource.toJson(source),
      ),
      'gramWeight': serializer.toJson<double>(gramWeight),
      'userConfirmed': serializer.toJson<bool>(userConfirmed),
    };
  }

  NutritionMatchRow copyWith({
    String? id,
    String? ingredientLineId,
    String? foodId,
    NutritionSource? source,
    double? gramWeight,
    bool? userConfirmed,
  }) => NutritionMatchRow(
    id: id ?? this.id,
    ingredientLineId: ingredientLineId ?? this.ingredientLineId,
    foodId: foodId ?? this.foodId,
    source: source ?? this.source,
    gramWeight: gramWeight ?? this.gramWeight,
    userConfirmed: userConfirmed ?? this.userConfirmed,
  );
  NutritionMatchRow copyWithCompanion(NutritionMatchesCompanion data) {
    return NutritionMatchRow(
      id: data.id.present ? data.id.value : this.id,
      ingredientLineId: data.ingredientLineId.present
          ? data.ingredientLineId.value
          : this.ingredientLineId,
      foodId: data.foodId.present ? data.foodId.value : this.foodId,
      source: data.source.present ? data.source.value : this.source,
      gramWeight: data.gramWeight.present
          ? data.gramWeight.value
          : this.gramWeight,
      userConfirmed: data.userConfirmed.present
          ? data.userConfirmed.value
          : this.userConfirmed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NutritionMatchRow(')
          ..write('id: $id, ')
          ..write('ingredientLineId: $ingredientLineId, ')
          ..write('foodId: $foodId, ')
          ..write('source: $source, ')
          ..write('gramWeight: $gramWeight, ')
          ..write('userConfirmed: $userConfirmed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    ingredientLineId,
    foodId,
    source,
    gramWeight,
    userConfirmed,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NutritionMatchRow &&
          other.id == this.id &&
          other.ingredientLineId == this.ingredientLineId &&
          other.foodId == this.foodId &&
          other.source == this.source &&
          other.gramWeight == this.gramWeight &&
          other.userConfirmed == this.userConfirmed);
}

class NutritionMatchesCompanion extends UpdateCompanion<NutritionMatchRow> {
  final Value<String> id;
  final Value<String> ingredientLineId;
  final Value<String> foodId;
  final Value<NutritionSource> source;
  final Value<double> gramWeight;
  final Value<bool> userConfirmed;
  final Value<int> rowid;
  const NutritionMatchesCompanion({
    this.id = const Value.absent(),
    this.ingredientLineId = const Value.absent(),
    this.foodId = const Value.absent(),
    this.source = const Value.absent(),
    this.gramWeight = const Value.absent(),
    this.userConfirmed = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NutritionMatchesCompanion.insert({
    required String id,
    required String ingredientLineId,
    required String foodId,
    required NutritionSource source,
    required double gramWeight,
    this.userConfirmed = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       ingredientLineId = Value(ingredientLineId),
       foodId = Value(foodId),
       source = Value(source),
       gramWeight = Value(gramWeight);
  static Insertable<NutritionMatchRow> custom({
    Expression<String>? id,
    Expression<String>? ingredientLineId,
    Expression<String>? foodId,
    Expression<String>? source,
    Expression<double>? gramWeight,
    Expression<bool>? userConfirmed,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ingredientLineId != null) 'ingredient_line_id': ingredientLineId,
      if (foodId != null) 'food_id': foodId,
      if (source != null) 'source': source,
      if (gramWeight != null) 'gram_weight': gramWeight,
      if (userConfirmed != null) 'user_confirmed': userConfirmed,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NutritionMatchesCompanion copyWith({
    Value<String>? id,
    Value<String>? ingredientLineId,
    Value<String>? foodId,
    Value<NutritionSource>? source,
    Value<double>? gramWeight,
    Value<bool>? userConfirmed,
    Value<int>? rowid,
  }) {
    return NutritionMatchesCompanion(
      id: id ?? this.id,
      ingredientLineId: ingredientLineId ?? this.ingredientLineId,
      foodId: foodId ?? this.foodId,
      source: source ?? this.source,
      gramWeight: gramWeight ?? this.gramWeight,
      userConfirmed: userConfirmed ?? this.userConfirmed,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ingredientLineId.present) {
      map['ingredient_line_id'] = Variable<String>(ingredientLineId.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<String>(foodId.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(
        $NutritionMatchesTable.$convertersource.toSql(source.value),
      );
    }
    if (gramWeight.present) {
      map['gram_weight'] = Variable<double>(gramWeight.value);
    }
    if (userConfirmed.present) {
      map['user_confirmed'] = Variable<bool>(userConfirmed.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NutritionMatchesCompanion(')
          ..write('id: $id, ')
          ..write('ingredientLineId: $ingredientLineId, ')
          ..write('foodId: $foodId, ')
          ..write('source: $source, ')
          ..write('gramWeight: $gramWeight, ')
          ..write('userConfirmed: $userConfirmed, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecipeVersionsTable extends RecipeVersions
    with TableInfo<$RecipeVersionsTable, RecipeVersionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeVersionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _snapshotJsonMeta = const VerificationMeta(
    'snapshotJson',
  );
  @override
  late final GeneratedColumn<String> snapshotJson = GeneratedColumn<String>(
    'snapshot_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _summaryMeta = const VerificationMeta(
    'summary',
  );
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
    'summary',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recipeId,
    createdAt,
    snapshotJson,
    summary,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipe_versions';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecipeVersionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('snapshot_json')) {
      context.handle(
        _snapshotJsonMeta,
        snapshotJson.isAcceptableOrUnknown(
          data['snapshot_json']!,
          _snapshotJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_snapshotJsonMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(
        _summaryMeta,
        summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeVersionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeVersionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      snapshotJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}snapshot_json'],
      )!,
      summary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}summary'],
      )!,
    );
  }

  @override
  $RecipeVersionsTable createAlias(String alias) {
    return $RecipeVersionsTable(attachedDatabase, alias);
  }
}

class RecipeVersionRow extends DataClass
    implements Insertable<RecipeVersionRow> {
  final String id;
  final String recipeId;
  final DateTime createdAt;
  final String snapshotJson;
  final String summary;
  const RecipeVersionRow({
    required this.id,
    required this.recipeId,
    required this.createdAt,
    required this.snapshotJson,
    required this.summary,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['snapshot_json'] = Variable<String>(snapshotJson);
    map['summary'] = Variable<String>(summary);
    return map;
  }

  RecipeVersionsCompanion toCompanion(bool nullToAbsent) {
    return RecipeVersionsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      createdAt: Value(createdAt),
      snapshotJson: Value(snapshotJson),
      summary: Value(summary),
    );
  }

  factory RecipeVersionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeVersionRow(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      snapshotJson: serializer.fromJson<String>(json['snapshotJson']),
      summary: serializer.fromJson<String>(json['summary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'snapshotJson': serializer.toJson<String>(snapshotJson),
      'summary': serializer.toJson<String>(summary),
    };
  }

  RecipeVersionRow copyWith({
    String? id,
    String? recipeId,
    DateTime? createdAt,
    String? snapshotJson,
    String? summary,
  }) => RecipeVersionRow(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    createdAt: createdAt ?? this.createdAt,
    snapshotJson: snapshotJson ?? this.snapshotJson,
    summary: summary ?? this.summary,
  );
  RecipeVersionRow copyWithCompanion(RecipeVersionsCompanion data) {
    return RecipeVersionRow(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      snapshotJson: data.snapshotJson.present
          ? data.snapshotJson.value
          : this.snapshotJson,
      summary: data.summary.present ? data.summary.value : this.summary,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecipeVersionRow(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('createdAt: $createdAt, ')
          ..write('snapshotJson: $snapshotJson, ')
          ..write('summary: $summary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, recipeId, createdAt, snapshotJson, summary);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeVersionRow &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.createdAt == this.createdAt &&
          other.snapshotJson == this.snapshotJson &&
          other.summary == this.summary);
}

class RecipeVersionsCompanion extends UpdateCompanion<RecipeVersionRow> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<DateTime> createdAt;
  final Value<String> snapshotJson;
  final Value<String> summary;
  final Value<int> rowid;
  const RecipeVersionsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.snapshotJson = const Value.absent(),
    this.summary = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecipeVersionsCompanion.insert({
    required String id,
    required String recipeId,
    required DateTime createdAt,
    required String snapshotJson,
    this.summary = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       createdAt = Value(createdAt),
       snapshotJson = Value(snapshotJson);
  static Insertable<RecipeVersionRow> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<DateTime>? createdAt,
    Expression<String>? snapshotJson,
    Expression<String>? summary,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (createdAt != null) 'created_at': createdAt,
      if (snapshotJson != null) 'snapshot_json': snapshotJson,
      if (summary != null) 'summary': summary,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecipeVersionsCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<DateTime>? createdAt,
    Value<String>? snapshotJson,
    Value<String>? summary,
    Value<int>? rowid,
  }) {
    return RecipeVersionsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      createdAt: createdAt ?? this.createdAt,
      snapshotJson: snapshotJson ?? this.snapshotJson,
      summary: summary ?? this.summary,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (snapshotJson.present) {
      map['snapshot_json'] = Variable<String>(snapshotJson.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeVersionsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('createdAt: $createdAt, ')
          ..write('snapshotJson: $snapshotJson, ')
          ..write('summary: $summary, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExperimentsTable extends Experiments
    with TableInfo<$ExperimentsTable, ExperimentRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExperimentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _baseVersionIdMeta = const VerificationMeta(
    'baseVersionId',
  );
  @override
  late final GeneratedColumn<String> baseVersionId = GeneratedColumn<String>(
    'base_version_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _workingRecipeIdMeta = const VerificationMeta(
    'workingRecipeId',
  );
  @override
  late final GeneratedColumn<String> workingRecipeId = GeneratedColumn<String>(
    'working_recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _changeDescriptionMeta = const VerificationMeta(
    'changeDescription',
  );
  @override
  late final GeneratedColumn<String> changeDescription =
      GeneratedColumn<String>(
        'change_description',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant(''),
      );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _sharedWithOthersMeta = const VerificationMeta(
    'sharedWithOthers',
  );
  @override
  late final GeneratedColumn<bool> sharedWithOthers = GeneratedColumn<bool>(
    'shared_with_others',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("shared_with_others" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  late final GeneratedColumnWithTypeConverter<ExperimentOutcome, String>
  outcome = GeneratedColumn<String>(
    'outcome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  ).withConverter<ExperimentOutcome>($ExperimentsTable.$converteroutcome);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recipeId,
    baseVersionId,
    workingRecipeId,
    createdAt,
    changeDescription,
    notes,
    sharedWithOthers,
    outcome,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'experiments';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExperimentRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('base_version_id')) {
      context.handle(
        _baseVersionIdMeta,
        baseVersionId.isAcceptableOrUnknown(
          data['base_version_id']!,
          _baseVersionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_baseVersionIdMeta);
    }
    if (data.containsKey('working_recipe_id')) {
      context.handle(
        _workingRecipeIdMeta,
        workingRecipeId.isAcceptableOrUnknown(
          data['working_recipe_id']!,
          _workingRecipeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_workingRecipeIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('change_description')) {
      context.handle(
        _changeDescriptionMeta,
        changeDescription.isAcceptableOrUnknown(
          data['change_description']!,
          _changeDescriptionMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('shared_with_others')) {
      context.handle(
        _sharedWithOthersMeta,
        sharedWithOthers.isAcceptableOrUnknown(
          data['shared_with_others']!,
          _sharedWithOthersMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExperimentRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExperimentRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      baseVersionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}base_version_id'],
      )!,
      workingRecipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}working_recipe_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      changeDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}change_description'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      )!,
      sharedWithOthers: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}shared_with_others'],
      )!,
      outcome: $ExperimentsTable.$converteroutcome.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}outcome'],
        )!,
      ),
    );
  }

  @override
  $ExperimentsTable createAlias(String alias) {
    return $ExperimentsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ExperimentOutcome, String, String>
  $converteroutcome = const EnumNameConverter<ExperimentOutcome>(
    ExperimentOutcome.values,
  );
}

class ExperimentRow extends DataClass implements Insertable<ExperimentRow> {
  final String id;
  final String recipeId;
  final String baseVersionId;
  final String workingRecipeId;
  final DateTime createdAt;
  final String changeDescription;
  final String notes;
  final bool sharedWithOthers;
  final ExperimentOutcome outcome;
  const ExperimentRow({
    required this.id,
    required this.recipeId,
    required this.baseVersionId,
    required this.workingRecipeId,
    required this.createdAt,
    required this.changeDescription,
    required this.notes,
    required this.sharedWithOthers,
    required this.outcome,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    map['base_version_id'] = Variable<String>(baseVersionId);
    map['working_recipe_id'] = Variable<String>(workingRecipeId);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['change_description'] = Variable<String>(changeDescription);
    map['notes'] = Variable<String>(notes);
    map['shared_with_others'] = Variable<bool>(sharedWithOthers);
    {
      map['outcome'] = Variable<String>(
        $ExperimentsTable.$converteroutcome.toSql(outcome),
      );
    }
    return map;
  }

  ExperimentsCompanion toCompanion(bool nullToAbsent) {
    return ExperimentsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      baseVersionId: Value(baseVersionId),
      workingRecipeId: Value(workingRecipeId),
      createdAt: Value(createdAt),
      changeDescription: Value(changeDescription),
      notes: Value(notes),
      sharedWithOthers: Value(sharedWithOthers),
      outcome: Value(outcome),
    );
  }

  factory ExperimentRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExperimentRow(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      baseVersionId: serializer.fromJson<String>(json['baseVersionId']),
      workingRecipeId: serializer.fromJson<String>(json['workingRecipeId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      changeDescription: serializer.fromJson<String>(json['changeDescription']),
      notes: serializer.fromJson<String>(json['notes']),
      sharedWithOthers: serializer.fromJson<bool>(json['sharedWithOthers']),
      outcome: $ExperimentsTable.$converteroutcome.fromJson(
        serializer.fromJson<String>(json['outcome']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'baseVersionId': serializer.toJson<String>(baseVersionId),
      'workingRecipeId': serializer.toJson<String>(workingRecipeId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'changeDescription': serializer.toJson<String>(changeDescription),
      'notes': serializer.toJson<String>(notes),
      'sharedWithOthers': serializer.toJson<bool>(sharedWithOthers),
      'outcome': serializer.toJson<String>(
        $ExperimentsTable.$converteroutcome.toJson(outcome),
      ),
    };
  }

  ExperimentRow copyWith({
    String? id,
    String? recipeId,
    String? baseVersionId,
    String? workingRecipeId,
    DateTime? createdAt,
    String? changeDescription,
    String? notes,
    bool? sharedWithOthers,
    ExperimentOutcome? outcome,
  }) => ExperimentRow(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    baseVersionId: baseVersionId ?? this.baseVersionId,
    workingRecipeId: workingRecipeId ?? this.workingRecipeId,
    createdAt: createdAt ?? this.createdAt,
    changeDescription: changeDescription ?? this.changeDescription,
    notes: notes ?? this.notes,
    sharedWithOthers: sharedWithOthers ?? this.sharedWithOthers,
    outcome: outcome ?? this.outcome,
  );
  ExperimentRow copyWithCompanion(ExperimentsCompanion data) {
    return ExperimentRow(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      baseVersionId: data.baseVersionId.present
          ? data.baseVersionId.value
          : this.baseVersionId,
      workingRecipeId: data.workingRecipeId.present
          ? data.workingRecipeId.value
          : this.workingRecipeId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      changeDescription: data.changeDescription.present
          ? data.changeDescription.value
          : this.changeDescription,
      notes: data.notes.present ? data.notes.value : this.notes,
      sharedWithOthers: data.sharedWithOthers.present
          ? data.sharedWithOthers.value
          : this.sharedWithOthers,
      outcome: data.outcome.present ? data.outcome.value : this.outcome,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExperimentRow(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('baseVersionId: $baseVersionId, ')
          ..write('workingRecipeId: $workingRecipeId, ')
          ..write('createdAt: $createdAt, ')
          ..write('changeDescription: $changeDescription, ')
          ..write('notes: $notes, ')
          ..write('sharedWithOthers: $sharedWithOthers, ')
          ..write('outcome: $outcome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recipeId,
    baseVersionId,
    workingRecipeId,
    createdAt,
    changeDescription,
    notes,
    sharedWithOthers,
    outcome,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExperimentRow &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.baseVersionId == this.baseVersionId &&
          other.workingRecipeId == this.workingRecipeId &&
          other.createdAt == this.createdAt &&
          other.changeDescription == this.changeDescription &&
          other.notes == this.notes &&
          other.sharedWithOthers == this.sharedWithOthers &&
          other.outcome == this.outcome);
}

class ExperimentsCompanion extends UpdateCompanion<ExperimentRow> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<String> baseVersionId;
  final Value<String> workingRecipeId;
  final Value<DateTime> createdAt;
  final Value<String> changeDescription;
  final Value<String> notes;
  final Value<bool> sharedWithOthers;
  final Value<ExperimentOutcome> outcome;
  final Value<int> rowid;
  const ExperimentsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.baseVersionId = const Value.absent(),
    this.workingRecipeId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.changeDescription = const Value.absent(),
    this.notes = const Value.absent(),
    this.sharedWithOthers = const Value.absent(),
    this.outcome = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExperimentsCompanion.insert({
    required String id,
    required String recipeId,
    required String baseVersionId,
    required String workingRecipeId,
    required DateTime createdAt,
    this.changeDescription = const Value.absent(),
    this.notes = const Value.absent(),
    this.sharedWithOthers = const Value.absent(),
    required ExperimentOutcome outcome,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       baseVersionId = Value(baseVersionId),
       workingRecipeId = Value(workingRecipeId),
       createdAt = Value(createdAt),
       outcome = Value(outcome);
  static Insertable<ExperimentRow> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<String>? baseVersionId,
    Expression<String>? workingRecipeId,
    Expression<DateTime>? createdAt,
    Expression<String>? changeDescription,
    Expression<String>? notes,
    Expression<bool>? sharedWithOthers,
    Expression<String>? outcome,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (baseVersionId != null) 'base_version_id': baseVersionId,
      if (workingRecipeId != null) 'working_recipe_id': workingRecipeId,
      if (createdAt != null) 'created_at': createdAt,
      if (changeDescription != null) 'change_description': changeDescription,
      if (notes != null) 'notes': notes,
      if (sharedWithOthers != null) 'shared_with_others': sharedWithOthers,
      if (outcome != null) 'outcome': outcome,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExperimentsCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<String>? baseVersionId,
    Value<String>? workingRecipeId,
    Value<DateTime>? createdAt,
    Value<String>? changeDescription,
    Value<String>? notes,
    Value<bool>? sharedWithOthers,
    Value<ExperimentOutcome>? outcome,
    Value<int>? rowid,
  }) {
    return ExperimentsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      baseVersionId: baseVersionId ?? this.baseVersionId,
      workingRecipeId: workingRecipeId ?? this.workingRecipeId,
      createdAt: createdAt ?? this.createdAt,
      changeDescription: changeDescription ?? this.changeDescription,
      notes: notes ?? this.notes,
      sharedWithOthers: sharedWithOthers ?? this.sharedWithOthers,
      outcome: outcome ?? this.outcome,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (baseVersionId.present) {
      map['base_version_id'] = Variable<String>(baseVersionId.value);
    }
    if (workingRecipeId.present) {
      map['working_recipe_id'] = Variable<String>(workingRecipeId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (changeDescription.present) {
      map['change_description'] = Variable<String>(changeDescription.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (sharedWithOthers.present) {
      map['shared_with_others'] = Variable<bool>(sharedWithOthers.value);
    }
    if (outcome.present) {
      map['outcome'] = Variable<String>(
        $ExperimentsTable.$converteroutcome.toSql(outcome.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExperimentsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('baseVersionId: $baseVersionId, ')
          ..write('workingRecipeId: $workingRecipeId, ')
          ..write('createdAt: $createdAt, ')
          ..write('changeDescription: $changeDescription, ')
          ..write('notes: $notes, ')
          ..write('sharedWithOthers: $sharedWithOthers, ')
          ..write('outcome: $outcome, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GroceryListsTable extends GroceryLists
    with TableInfo<$GroceryListsTable, GroceryListRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroceryListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'grocery_lists';
  @override
  VerificationContext validateIntegrity(
    Insertable<GroceryListRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GroceryListRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroceryListRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $GroceryListsTable createAlias(String alias) {
    return $GroceryListsTable(attachedDatabase, alias);
  }
}

class GroceryListRow extends DataClass implements Insertable<GroceryListRow> {
  final String id;
  final String name;
  final DateTime createdAt;
  const GroceryListRow({
    required this.id,
    required this.name,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  GroceryListsCompanion toCompanion(bool nullToAbsent) {
    return GroceryListsCompanion(
      id: Value(id),
      name: Value(name),
      createdAt: Value(createdAt),
    );
  }

  factory GroceryListRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroceryListRow(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  GroceryListRow copyWith({String? id, String? name, DateTime? createdAt}) =>
      GroceryListRow(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  GroceryListRow copyWithCompanion(GroceryListsCompanion data) {
    return GroceryListRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GroceryListRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroceryListRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class GroceryListsCompanion extends UpdateCompanion<GroceryListRow> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const GroceryListsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroceryListsCompanion.insert({
    required String id,
    required String name,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       createdAt = Value(createdAt);
  static Insertable<GroceryListRow> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroceryListsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return GroceryListsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroceryListsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GroceryItemsTable extends GroceryItems
    with TableInfo<$GroceryItemsTable, GroceryItemRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroceryItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _listIdMeta = const VerificationMeta('listId');
  @override
  late final GeneratedColumn<String> listId = GeneratedColumn<String>(
    'list_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortKeyMeta = const VerificationMeta(
    'sortKey',
  );
  @override
  late final GeneratedColumn<String> sortKey = GeneratedColumn<String>(
    'sort_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityNumeratorMeta = const VerificationMeta(
    'quantityNumerator',
  );
  @override
  late final GeneratedColumn<int> quantityNumerator = GeneratedColumn<int>(
    'quantity_numerator',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quantityDenominatorMeta =
      const VerificationMeta('quantityDenominator');
  @override
  late final GeneratedColumn<int> quantityDenominator = GeneratedColumn<int>(
    'quantity_denominator',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Unit?, String> unit =
      GeneratedColumn<String>(
        'unit',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<Unit?>($GroceryItemsTable.$converterunitn);
  static const VerificationMeta _storeSectionMeta = const VerificationMeta(
    'storeSection',
  );
  @override
  late final GeneratedColumn<String> storeSection = GeneratedColumn<String>(
    'store_section',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _checkedMeta = const VerificationMeta(
    'checked',
  );
  @override
  late final GeneratedColumn<bool> checked = GeneratedColumn<bool>(
    'checked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("checked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _sourceIngredientLineIdMeta =
      const VerificationMeta('sourceIngredientLineId');
  @override
  late final GeneratedColumn<String> sourceIngredientLineId =
      GeneratedColumn<String>(
        'source_ingredient_line_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _sourceRecipeIdMeta = const VerificationMeta(
    'sourceRecipeId',
  );
  @override
  late final GeneratedColumn<String> sourceRecipeId = GeneratedColumn<String>(
    'source_recipe_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    listId,
    name,
    sortKey,
    quantityNumerator,
    quantityDenominator,
    unit,
    storeSection,
    checked,
    sourceIngredientLineId,
    sourceRecipeId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'grocery_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<GroceryItemRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('list_id')) {
      context.handle(
        _listIdMeta,
        listId.isAcceptableOrUnknown(data['list_id']!, _listIdMeta),
      );
    } else if (isInserting) {
      context.missing(_listIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sort_key')) {
      context.handle(
        _sortKeyMeta,
        sortKey.isAcceptableOrUnknown(data['sort_key']!, _sortKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_sortKeyMeta);
    }
    if (data.containsKey('quantity_numerator')) {
      context.handle(
        _quantityNumeratorMeta,
        quantityNumerator.isAcceptableOrUnknown(
          data['quantity_numerator']!,
          _quantityNumeratorMeta,
        ),
      );
    }
    if (data.containsKey('quantity_denominator')) {
      context.handle(
        _quantityDenominatorMeta,
        quantityDenominator.isAcceptableOrUnknown(
          data['quantity_denominator']!,
          _quantityDenominatorMeta,
        ),
      );
    }
    if (data.containsKey('store_section')) {
      context.handle(
        _storeSectionMeta,
        storeSection.isAcceptableOrUnknown(
          data['store_section']!,
          _storeSectionMeta,
        ),
      );
    }
    if (data.containsKey('checked')) {
      context.handle(
        _checkedMeta,
        checked.isAcceptableOrUnknown(data['checked']!, _checkedMeta),
      );
    }
    if (data.containsKey('source_ingredient_line_id')) {
      context.handle(
        _sourceIngredientLineIdMeta,
        sourceIngredientLineId.isAcceptableOrUnknown(
          data['source_ingredient_line_id']!,
          _sourceIngredientLineIdMeta,
        ),
      );
    }
    if (data.containsKey('source_recipe_id')) {
      context.handle(
        _sourceRecipeIdMeta,
        sourceRecipeId.isAcceptableOrUnknown(
          data['source_recipe_id']!,
          _sourceRecipeIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GroceryItemRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroceryItemRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      listId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}list_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      sortKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sort_key'],
      )!,
      quantityNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity_numerator'],
      ),
      quantityDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity_denominator'],
      ),
      unit: $GroceryItemsTable.$converterunitn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}unit'],
        ),
      ),
      storeSection: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}store_section'],
      ),
      checked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}checked'],
      )!,
      sourceIngredientLineId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_ingredient_line_id'],
      ),
      sourceRecipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_recipe_id'],
      ),
    );
  }

  @override
  $GroceryItemsTable createAlias(String alias) {
    return $GroceryItemsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Unit, String, String> $converterunit =
      const EnumNameConverter<Unit>(Unit.values);
  static JsonTypeConverter2<Unit?, String?, String?> $converterunitn =
      JsonTypeConverter2.asNullable($converterunit);
}

class GroceryItemRow extends DataClass implements Insertable<GroceryItemRow> {
  final String id;
  final String listId;
  final String name;
  final String sortKey;
  final int? quantityNumerator;
  final int? quantityDenominator;
  final Unit? unit;
  final String? storeSection;
  final bool checked;
  final String? sourceIngredientLineId;
  final String? sourceRecipeId;
  const GroceryItemRow({
    required this.id,
    required this.listId,
    required this.name,
    required this.sortKey,
    this.quantityNumerator,
    this.quantityDenominator,
    this.unit,
    this.storeSection,
    required this.checked,
    this.sourceIngredientLineId,
    this.sourceRecipeId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['list_id'] = Variable<String>(listId);
    map['name'] = Variable<String>(name);
    map['sort_key'] = Variable<String>(sortKey);
    if (!nullToAbsent || quantityNumerator != null) {
      map['quantity_numerator'] = Variable<int>(quantityNumerator);
    }
    if (!nullToAbsent || quantityDenominator != null) {
      map['quantity_denominator'] = Variable<int>(quantityDenominator);
    }
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(
        $GroceryItemsTable.$converterunitn.toSql(unit),
      );
    }
    if (!nullToAbsent || storeSection != null) {
      map['store_section'] = Variable<String>(storeSection);
    }
    map['checked'] = Variable<bool>(checked);
    if (!nullToAbsent || sourceIngredientLineId != null) {
      map['source_ingredient_line_id'] = Variable<String>(
        sourceIngredientLineId,
      );
    }
    if (!nullToAbsent || sourceRecipeId != null) {
      map['source_recipe_id'] = Variable<String>(sourceRecipeId);
    }
    return map;
  }

  GroceryItemsCompanion toCompanion(bool nullToAbsent) {
    return GroceryItemsCompanion(
      id: Value(id),
      listId: Value(listId),
      name: Value(name),
      sortKey: Value(sortKey),
      quantityNumerator: quantityNumerator == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityNumerator),
      quantityDenominator: quantityDenominator == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityDenominator),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      storeSection: storeSection == null && nullToAbsent
          ? const Value.absent()
          : Value(storeSection),
      checked: Value(checked),
      sourceIngredientLineId: sourceIngredientLineId == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceIngredientLineId),
      sourceRecipeId: sourceRecipeId == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceRecipeId),
    );
  }

  factory GroceryItemRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroceryItemRow(
      id: serializer.fromJson<String>(json['id']),
      listId: serializer.fromJson<String>(json['listId']),
      name: serializer.fromJson<String>(json['name']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
      quantityNumerator: serializer.fromJson<int?>(json['quantityNumerator']),
      quantityDenominator: serializer.fromJson<int?>(
        json['quantityDenominator'],
      ),
      unit: $GroceryItemsTable.$converterunitn.fromJson(
        serializer.fromJson<String?>(json['unit']),
      ),
      storeSection: serializer.fromJson<String?>(json['storeSection']),
      checked: serializer.fromJson<bool>(json['checked']),
      sourceIngredientLineId: serializer.fromJson<String?>(
        json['sourceIngredientLineId'],
      ),
      sourceRecipeId: serializer.fromJson<String?>(json['sourceRecipeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'listId': serializer.toJson<String>(listId),
      'name': serializer.toJson<String>(name),
      'sortKey': serializer.toJson<String>(sortKey),
      'quantityNumerator': serializer.toJson<int?>(quantityNumerator),
      'quantityDenominator': serializer.toJson<int?>(quantityDenominator),
      'unit': serializer.toJson<String?>(
        $GroceryItemsTable.$converterunitn.toJson(unit),
      ),
      'storeSection': serializer.toJson<String?>(storeSection),
      'checked': serializer.toJson<bool>(checked),
      'sourceIngredientLineId': serializer.toJson<String?>(
        sourceIngredientLineId,
      ),
      'sourceRecipeId': serializer.toJson<String?>(sourceRecipeId),
    };
  }

  GroceryItemRow copyWith({
    String? id,
    String? listId,
    String? name,
    String? sortKey,
    Value<int?> quantityNumerator = const Value.absent(),
    Value<int?> quantityDenominator = const Value.absent(),
    Value<Unit?> unit = const Value.absent(),
    Value<String?> storeSection = const Value.absent(),
    bool? checked,
    Value<String?> sourceIngredientLineId = const Value.absent(),
    Value<String?> sourceRecipeId = const Value.absent(),
  }) => GroceryItemRow(
    id: id ?? this.id,
    listId: listId ?? this.listId,
    name: name ?? this.name,
    sortKey: sortKey ?? this.sortKey,
    quantityNumerator: quantityNumerator.present
        ? quantityNumerator.value
        : this.quantityNumerator,
    quantityDenominator: quantityDenominator.present
        ? quantityDenominator.value
        : this.quantityDenominator,
    unit: unit.present ? unit.value : this.unit,
    storeSection: storeSection.present ? storeSection.value : this.storeSection,
    checked: checked ?? this.checked,
    sourceIngredientLineId: sourceIngredientLineId.present
        ? sourceIngredientLineId.value
        : this.sourceIngredientLineId,
    sourceRecipeId: sourceRecipeId.present
        ? sourceRecipeId.value
        : this.sourceRecipeId,
  );
  GroceryItemRow copyWithCompanion(GroceryItemsCompanion data) {
    return GroceryItemRow(
      id: data.id.present ? data.id.value : this.id,
      listId: data.listId.present ? data.listId.value : this.listId,
      name: data.name.present ? data.name.value : this.name,
      sortKey: data.sortKey.present ? data.sortKey.value : this.sortKey,
      quantityNumerator: data.quantityNumerator.present
          ? data.quantityNumerator.value
          : this.quantityNumerator,
      quantityDenominator: data.quantityDenominator.present
          ? data.quantityDenominator.value
          : this.quantityDenominator,
      unit: data.unit.present ? data.unit.value : this.unit,
      storeSection: data.storeSection.present
          ? data.storeSection.value
          : this.storeSection,
      checked: data.checked.present ? data.checked.value : this.checked,
      sourceIngredientLineId: data.sourceIngredientLineId.present
          ? data.sourceIngredientLineId.value
          : this.sourceIngredientLineId,
      sourceRecipeId: data.sourceRecipeId.present
          ? data.sourceRecipeId.value
          : this.sourceRecipeId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GroceryItemRow(')
          ..write('id: $id, ')
          ..write('listId: $listId, ')
          ..write('name: $name, ')
          ..write('sortKey: $sortKey, ')
          ..write('quantityNumerator: $quantityNumerator, ')
          ..write('quantityDenominator: $quantityDenominator, ')
          ..write('unit: $unit, ')
          ..write('storeSection: $storeSection, ')
          ..write('checked: $checked, ')
          ..write('sourceIngredientLineId: $sourceIngredientLineId, ')
          ..write('sourceRecipeId: $sourceRecipeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    listId,
    name,
    sortKey,
    quantityNumerator,
    quantityDenominator,
    unit,
    storeSection,
    checked,
    sourceIngredientLineId,
    sourceRecipeId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroceryItemRow &&
          other.id == this.id &&
          other.listId == this.listId &&
          other.name == this.name &&
          other.sortKey == this.sortKey &&
          other.quantityNumerator == this.quantityNumerator &&
          other.quantityDenominator == this.quantityDenominator &&
          other.unit == this.unit &&
          other.storeSection == this.storeSection &&
          other.checked == this.checked &&
          other.sourceIngredientLineId == this.sourceIngredientLineId &&
          other.sourceRecipeId == this.sourceRecipeId);
}

class GroceryItemsCompanion extends UpdateCompanion<GroceryItemRow> {
  final Value<String> id;
  final Value<String> listId;
  final Value<String> name;
  final Value<String> sortKey;
  final Value<int?> quantityNumerator;
  final Value<int?> quantityDenominator;
  final Value<Unit?> unit;
  final Value<String?> storeSection;
  final Value<bool> checked;
  final Value<String?> sourceIngredientLineId;
  final Value<String?> sourceRecipeId;
  final Value<int> rowid;
  const GroceryItemsCompanion({
    this.id = const Value.absent(),
    this.listId = const Value.absent(),
    this.name = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.quantityNumerator = const Value.absent(),
    this.quantityDenominator = const Value.absent(),
    this.unit = const Value.absent(),
    this.storeSection = const Value.absent(),
    this.checked = const Value.absent(),
    this.sourceIngredientLineId = const Value.absent(),
    this.sourceRecipeId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroceryItemsCompanion.insert({
    required String id,
    required String listId,
    required String name,
    required String sortKey,
    this.quantityNumerator = const Value.absent(),
    this.quantityDenominator = const Value.absent(),
    this.unit = const Value.absent(),
    this.storeSection = const Value.absent(),
    this.checked = const Value.absent(),
    this.sourceIngredientLineId = const Value.absent(),
    this.sourceRecipeId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       listId = Value(listId),
       name = Value(name),
       sortKey = Value(sortKey);
  static Insertable<GroceryItemRow> custom({
    Expression<String>? id,
    Expression<String>? listId,
    Expression<String>? name,
    Expression<String>? sortKey,
    Expression<int>? quantityNumerator,
    Expression<int>? quantityDenominator,
    Expression<String>? unit,
    Expression<String>? storeSection,
    Expression<bool>? checked,
    Expression<String>? sourceIngredientLineId,
    Expression<String>? sourceRecipeId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (listId != null) 'list_id': listId,
      if (name != null) 'name': name,
      if (sortKey != null) 'sort_key': sortKey,
      if (quantityNumerator != null) 'quantity_numerator': quantityNumerator,
      if (quantityDenominator != null)
        'quantity_denominator': quantityDenominator,
      if (unit != null) 'unit': unit,
      if (storeSection != null) 'store_section': storeSection,
      if (checked != null) 'checked': checked,
      if (sourceIngredientLineId != null)
        'source_ingredient_line_id': sourceIngredientLineId,
      if (sourceRecipeId != null) 'source_recipe_id': sourceRecipeId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroceryItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? listId,
    Value<String>? name,
    Value<String>? sortKey,
    Value<int?>? quantityNumerator,
    Value<int?>? quantityDenominator,
    Value<Unit?>? unit,
    Value<String?>? storeSection,
    Value<bool>? checked,
    Value<String?>? sourceIngredientLineId,
    Value<String?>? sourceRecipeId,
    Value<int>? rowid,
  }) {
    return GroceryItemsCompanion(
      id: id ?? this.id,
      listId: listId ?? this.listId,
      name: name ?? this.name,
      sortKey: sortKey ?? this.sortKey,
      quantityNumerator: quantityNumerator ?? this.quantityNumerator,
      quantityDenominator: quantityDenominator ?? this.quantityDenominator,
      unit: unit ?? this.unit,
      storeSection: storeSection ?? this.storeSection,
      checked: checked ?? this.checked,
      sourceIngredientLineId:
          sourceIngredientLineId ?? this.sourceIngredientLineId,
      sourceRecipeId: sourceRecipeId ?? this.sourceRecipeId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (listId.present) {
      map['list_id'] = Variable<String>(listId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sortKey.present) {
      map['sort_key'] = Variable<String>(sortKey.value);
    }
    if (quantityNumerator.present) {
      map['quantity_numerator'] = Variable<int>(quantityNumerator.value);
    }
    if (quantityDenominator.present) {
      map['quantity_denominator'] = Variable<int>(quantityDenominator.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(
        $GroceryItemsTable.$converterunitn.toSql(unit.value),
      );
    }
    if (storeSection.present) {
      map['store_section'] = Variable<String>(storeSection.value);
    }
    if (checked.present) {
      map['checked'] = Variable<bool>(checked.value);
    }
    if (sourceIngredientLineId.present) {
      map['source_ingredient_line_id'] = Variable<String>(
        sourceIngredientLineId.value,
      );
    }
    if (sourceRecipeId.present) {
      map['source_recipe_id'] = Variable<String>(sourceRecipeId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroceryItemsCompanion(')
          ..write('id: $id, ')
          ..write('listId: $listId, ')
          ..write('name: $name, ')
          ..write('sortKey: $sortKey, ')
          ..write('quantityNumerator: $quantityNumerator, ')
          ..write('quantityDenominator: $quantityDenominator, ')
          ..write('unit: $unit, ')
          ..write('storeSection: $storeSection, ')
          ..write('checked: $checked, ')
          ..write('sourceIngredientLineId: $sourceIngredientLineId, ')
          ..write('sourceRecipeId: $sourceRecipeId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MeasuringToolsTable extends MeasuringTools
    with TableInfo<$MeasuringToolsTable, MeasuringToolRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MeasuringToolsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _capacityNumeratorMeta = const VerificationMeta(
    'capacityNumerator',
  );
  @override
  late final GeneratedColumn<int> capacityNumerator = GeneratedColumn<int>(
    'capacity_numerator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _capacityDenominatorMeta =
      const VerificationMeta('capacityDenominator');
  @override
  late final GeneratedColumn<int> capacityDenominator = GeneratedColumn<int>(
    'capacity_denominator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Unit, String> unit =
      GeneratedColumn<String>(
        'unit',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<Unit>($MeasuringToolsTable.$converterunit);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    capacityNumerator,
    capacityDenominator,
    unit,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'measuring_tools';
  @override
  VerificationContext validateIntegrity(
    Insertable<MeasuringToolRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('capacity_numerator')) {
      context.handle(
        _capacityNumeratorMeta,
        capacityNumerator.isAcceptableOrUnknown(
          data['capacity_numerator']!,
          _capacityNumeratorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_capacityNumeratorMeta);
    }
    if (data.containsKey('capacity_denominator')) {
      context.handle(
        _capacityDenominatorMeta,
        capacityDenominator.isAcceptableOrUnknown(
          data['capacity_denominator']!,
          _capacityDenominatorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_capacityDenominatorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MeasuringToolRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MeasuringToolRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      capacityNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}capacity_numerator'],
      )!,
      capacityDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}capacity_denominator'],
      )!,
      unit: $MeasuringToolsTable.$converterunit.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}unit'],
        )!,
      ),
    );
  }

  @override
  $MeasuringToolsTable createAlias(String alias) {
    return $MeasuringToolsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Unit, String, String> $converterunit =
      const EnumNameConverter<Unit>(Unit.values);
}

class MeasuringToolRow extends DataClass
    implements Insertable<MeasuringToolRow> {
  final String id;
  final int capacityNumerator;
  final int capacityDenominator;
  final Unit unit;
  const MeasuringToolRow({
    required this.id,
    required this.capacityNumerator,
    required this.capacityDenominator,
    required this.unit,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['capacity_numerator'] = Variable<int>(capacityNumerator);
    map['capacity_denominator'] = Variable<int>(capacityDenominator);
    {
      map['unit'] = Variable<String>(
        $MeasuringToolsTable.$converterunit.toSql(unit),
      );
    }
    return map;
  }

  MeasuringToolsCompanion toCompanion(bool nullToAbsent) {
    return MeasuringToolsCompanion(
      id: Value(id),
      capacityNumerator: Value(capacityNumerator),
      capacityDenominator: Value(capacityDenominator),
      unit: Value(unit),
    );
  }

  factory MeasuringToolRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MeasuringToolRow(
      id: serializer.fromJson<String>(json['id']),
      capacityNumerator: serializer.fromJson<int>(json['capacityNumerator']),
      capacityDenominator: serializer.fromJson<int>(
        json['capacityDenominator'],
      ),
      unit: $MeasuringToolsTable.$converterunit.fromJson(
        serializer.fromJson<String>(json['unit']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'capacityNumerator': serializer.toJson<int>(capacityNumerator),
      'capacityDenominator': serializer.toJson<int>(capacityDenominator),
      'unit': serializer.toJson<String>(
        $MeasuringToolsTable.$converterunit.toJson(unit),
      ),
    };
  }

  MeasuringToolRow copyWith({
    String? id,
    int? capacityNumerator,
    int? capacityDenominator,
    Unit? unit,
  }) => MeasuringToolRow(
    id: id ?? this.id,
    capacityNumerator: capacityNumerator ?? this.capacityNumerator,
    capacityDenominator: capacityDenominator ?? this.capacityDenominator,
    unit: unit ?? this.unit,
  );
  MeasuringToolRow copyWithCompanion(MeasuringToolsCompanion data) {
    return MeasuringToolRow(
      id: data.id.present ? data.id.value : this.id,
      capacityNumerator: data.capacityNumerator.present
          ? data.capacityNumerator.value
          : this.capacityNumerator,
      capacityDenominator: data.capacityDenominator.present
          ? data.capacityDenominator.value
          : this.capacityDenominator,
      unit: data.unit.present ? data.unit.value : this.unit,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MeasuringToolRow(')
          ..write('id: $id, ')
          ..write('capacityNumerator: $capacityNumerator, ')
          ..write('capacityDenominator: $capacityDenominator, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, capacityNumerator, capacityDenominator, unit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MeasuringToolRow &&
          other.id == this.id &&
          other.capacityNumerator == this.capacityNumerator &&
          other.capacityDenominator == this.capacityDenominator &&
          other.unit == this.unit);
}

class MeasuringToolsCompanion extends UpdateCompanion<MeasuringToolRow> {
  final Value<String> id;
  final Value<int> capacityNumerator;
  final Value<int> capacityDenominator;
  final Value<Unit> unit;
  final Value<int> rowid;
  const MeasuringToolsCompanion({
    this.id = const Value.absent(),
    this.capacityNumerator = const Value.absent(),
    this.capacityDenominator = const Value.absent(),
    this.unit = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MeasuringToolsCompanion.insert({
    required String id,
    required int capacityNumerator,
    required int capacityDenominator,
    required Unit unit,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       capacityNumerator = Value(capacityNumerator),
       capacityDenominator = Value(capacityDenominator),
       unit = Value(unit);
  static Insertable<MeasuringToolRow> custom({
    Expression<String>? id,
    Expression<int>? capacityNumerator,
    Expression<int>? capacityDenominator,
    Expression<String>? unit,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (capacityNumerator != null) 'capacity_numerator': capacityNumerator,
      if (capacityDenominator != null)
        'capacity_denominator': capacityDenominator,
      if (unit != null) 'unit': unit,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MeasuringToolsCompanion copyWith({
    Value<String>? id,
    Value<int>? capacityNumerator,
    Value<int>? capacityDenominator,
    Value<Unit>? unit,
    Value<int>? rowid,
  }) {
    return MeasuringToolsCompanion(
      id: id ?? this.id,
      capacityNumerator: capacityNumerator ?? this.capacityNumerator,
      capacityDenominator: capacityDenominator ?? this.capacityDenominator,
      unit: unit ?? this.unit,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (capacityNumerator.present) {
      map['capacity_numerator'] = Variable<int>(capacityNumerator.value);
    }
    if (capacityDenominator.present) {
      map['capacity_denominator'] = Variable<int>(capacityDenominator.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(
        $MeasuringToolsTable.$converterunit.toSql(unit.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MeasuringToolsCompanion(')
          ..write('id: $id, ')
          ..write('capacityNumerator: $capacityNumerator, ')
          ..write('capacityDenominator: $capacityDenominator, ')
          ..write('unit: $unit, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserRecipePrefsTableTable extends UserRecipePrefsTable
    with TableInfo<$UserRecipePrefsTableTable, UserRecipePrefsRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserRecipePrefsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingsNumeratorMeta = const VerificationMeta(
    'servingsNumerator',
  );
  @override
  late final GeneratedColumn<int> servingsNumerator = GeneratedColumn<int>(
    'servings_numerator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingsDenominatorMeta =
      const VerificationMeta('servingsDenominator');
  @override
  late final GeneratedColumn<int> servingsDenominator = GeneratedColumn<int>(
    'servings_denominator',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<UnitSystem, String> unitSystem =
      GeneratedColumn<String>(
        'unit_system',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<UnitSystem>(
        $UserRecipePrefsTableTable.$converterunitSystem,
      );
  @override
  List<GeneratedColumn> get $columns => [
    recipeId,
    servingsNumerator,
    servingsDenominator,
    unitSystem,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_recipe_prefs';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserRecipePrefsRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('servings_numerator')) {
      context.handle(
        _servingsNumeratorMeta,
        servingsNumerator.isAcceptableOrUnknown(
          data['servings_numerator']!,
          _servingsNumeratorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingsNumeratorMeta);
    }
    if (data.containsKey('servings_denominator')) {
      context.handle(
        _servingsDenominatorMeta,
        servingsDenominator.isAcceptableOrUnknown(
          data['servings_denominator']!,
          _servingsDenominatorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingsDenominatorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {recipeId};
  @override
  UserRecipePrefsRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserRecipePrefsRow(
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      servingsNumerator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}servings_numerator'],
      )!,
      servingsDenominator: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}servings_denominator'],
      )!,
      unitSystem: $UserRecipePrefsTableTable.$converterunitSystem.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}unit_system'],
        )!,
      ),
    );
  }

  @override
  $UserRecipePrefsTableTable createAlias(String alias) {
    return $UserRecipePrefsTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<UnitSystem, String, String> $converterunitSystem =
      const EnumNameConverter<UnitSystem>(UnitSystem.values);
}

class UserRecipePrefsRow extends DataClass
    implements Insertable<UserRecipePrefsRow> {
  final String recipeId;
  final int servingsNumerator;
  final int servingsDenominator;
  final UnitSystem unitSystem;
  const UserRecipePrefsRow({
    required this.recipeId,
    required this.servingsNumerator,
    required this.servingsDenominator,
    required this.unitSystem,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['recipe_id'] = Variable<String>(recipeId);
    map['servings_numerator'] = Variable<int>(servingsNumerator);
    map['servings_denominator'] = Variable<int>(servingsDenominator);
    {
      map['unit_system'] = Variable<String>(
        $UserRecipePrefsTableTable.$converterunitSystem.toSql(unitSystem),
      );
    }
    return map;
  }

  UserRecipePrefsTableCompanion toCompanion(bool nullToAbsent) {
    return UserRecipePrefsTableCompanion(
      recipeId: Value(recipeId),
      servingsNumerator: Value(servingsNumerator),
      servingsDenominator: Value(servingsDenominator),
      unitSystem: Value(unitSystem),
    );
  }

  factory UserRecipePrefsRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserRecipePrefsRow(
      recipeId: serializer.fromJson<String>(json['recipeId']),
      servingsNumerator: serializer.fromJson<int>(json['servingsNumerator']),
      servingsDenominator: serializer.fromJson<int>(
        json['servingsDenominator'],
      ),
      unitSystem: $UserRecipePrefsTableTable.$converterunitSystem.fromJson(
        serializer.fromJson<String>(json['unitSystem']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'recipeId': serializer.toJson<String>(recipeId),
      'servingsNumerator': serializer.toJson<int>(servingsNumerator),
      'servingsDenominator': serializer.toJson<int>(servingsDenominator),
      'unitSystem': serializer.toJson<String>(
        $UserRecipePrefsTableTable.$converterunitSystem.toJson(unitSystem),
      ),
    };
  }

  UserRecipePrefsRow copyWith({
    String? recipeId,
    int? servingsNumerator,
    int? servingsDenominator,
    UnitSystem? unitSystem,
  }) => UserRecipePrefsRow(
    recipeId: recipeId ?? this.recipeId,
    servingsNumerator: servingsNumerator ?? this.servingsNumerator,
    servingsDenominator: servingsDenominator ?? this.servingsDenominator,
    unitSystem: unitSystem ?? this.unitSystem,
  );
  UserRecipePrefsRow copyWithCompanion(UserRecipePrefsTableCompanion data) {
    return UserRecipePrefsRow(
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      servingsNumerator: data.servingsNumerator.present
          ? data.servingsNumerator.value
          : this.servingsNumerator,
      servingsDenominator: data.servingsDenominator.present
          ? data.servingsDenominator.value
          : this.servingsDenominator,
      unitSystem: data.unitSystem.present
          ? data.unitSystem.value
          : this.unitSystem,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserRecipePrefsRow(')
          ..write('recipeId: $recipeId, ')
          ..write('servingsNumerator: $servingsNumerator, ')
          ..write('servingsDenominator: $servingsDenominator, ')
          ..write('unitSystem: $unitSystem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(recipeId, servingsNumerator, servingsDenominator, unitSystem);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserRecipePrefsRow &&
          other.recipeId == this.recipeId &&
          other.servingsNumerator == this.servingsNumerator &&
          other.servingsDenominator == this.servingsDenominator &&
          other.unitSystem == this.unitSystem);
}

class UserRecipePrefsTableCompanion
    extends UpdateCompanion<UserRecipePrefsRow> {
  final Value<String> recipeId;
  final Value<int> servingsNumerator;
  final Value<int> servingsDenominator;
  final Value<UnitSystem> unitSystem;
  final Value<int> rowid;
  const UserRecipePrefsTableCompanion({
    this.recipeId = const Value.absent(),
    this.servingsNumerator = const Value.absent(),
    this.servingsDenominator = const Value.absent(),
    this.unitSystem = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserRecipePrefsTableCompanion.insert({
    required String recipeId,
    required int servingsNumerator,
    required int servingsDenominator,
    required UnitSystem unitSystem,
    this.rowid = const Value.absent(),
  }) : recipeId = Value(recipeId),
       servingsNumerator = Value(servingsNumerator),
       servingsDenominator = Value(servingsDenominator),
       unitSystem = Value(unitSystem);
  static Insertable<UserRecipePrefsRow> custom({
    Expression<String>? recipeId,
    Expression<int>? servingsNumerator,
    Expression<int>? servingsDenominator,
    Expression<String>? unitSystem,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (recipeId != null) 'recipe_id': recipeId,
      if (servingsNumerator != null) 'servings_numerator': servingsNumerator,
      if (servingsDenominator != null)
        'servings_denominator': servingsDenominator,
      if (unitSystem != null) 'unit_system': unitSystem,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserRecipePrefsTableCompanion copyWith({
    Value<String>? recipeId,
    Value<int>? servingsNumerator,
    Value<int>? servingsDenominator,
    Value<UnitSystem>? unitSystem,
    Value<int>? rowid,
  }) {
    return UserRecipePrefsTableCompanion(
      recipeId: recipeId ?? this.recipeId,
      servingsNumerator: servingsNumerator ?? this.servingsNumerator,
      servingsDenominator: servingsDenominator ?? this.servingsDenominator,
      unitSystem: unitSystem ?? this.unitSystem,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (servingsNumerator.present) {
      map['servings_numerator'] = Variable<int>(servingsNumerator.value);
    }
    if (servingsDenominator.present) {
      map['servings_denominator'] = Variable<int>(servingsDenominator.value);
    }
    if (unitSystem.present) {
      map['unit_system'] = Variable<String>(
        $UserRecipePrefsTableTable.$converterunitSystem.toSql(unitSystem.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserRecipePrefsTableCompanion(')
          ..write('recipeId: $recipeId, ')
          ..write('servingsNumerator: $servingsNumerator, ')
          ..write('servingsDenominator: $servingsDenominator, ')
          ..write('unitSystem: $unitSystem, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChangeLogTable extends ChangeLog
    with TableInfo<$ChangeLogTable, ChangeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChangeLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityMeta = const VerificationMeta('entity');
  @override
  late final GeneratedColumn<String> entity = GeneratedColumn<String>(
    'entity',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityIdMeta = const VerificationMeta(
    'entityId',
  );
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
    'entity_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldMeta = const VerificationMeta('field');
  @override
  late final GeneratedColumn<String> field = GeneratedColumn<String>(
    'field',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hlcMeta = const VerificationMeta('hlc');
  @override
  late final GeneratedColumn<String> hlc = GeneratedColumn<String>(
    'hlc',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deviceIdMeta = const VerificationMeta(
    'deviceId',
  );
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
    'device_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _spaceIdMeta = const VerificationMeta(
    'spaceId',
  );
  @override
  late final GeneratedColumn<String> spaceId = GeneratedColumn<String>(
    'space_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    entity,
    entityId,
    field,
    value,
    hlc,
    deviceId,
    spaceId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'change_log';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChangeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('entity')) {
      context.handle(
        _entityMeta,
        entity.isAcceptableOrUnknown(data['entity']!, _entityMeta),
      );
    } else if (isInserting) {
      context.missing(_entityMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(
        _entityIdMeta,
        entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('field')) {
      context.handle(
        _fieldMeta,
        field.isAcceptableOrUnknown(data['field']!, _fieldMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('hlc')) {
      context.handle(
        _hlcMeta,
        hlc.isAcceptableOrUnknown(data['hlc']!, _hlcMeta),
      );
    } else if (isInserting) {
      context.missing(_hlcMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(
        _deviceIdMeta,
        deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('space_id')) {
      context.handle(
        _spaceIdMeta,
        spaceId.isAcceptableOrUnknown(data['space_id']!, _spaceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_spaceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChangeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChangeRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      entity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity'],
      )!,
      entityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity_id'],
      )!,
      field: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
      hlc: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}hlc'],
      )!,
      deviceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_id'],
      )!,
      spaceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}space_id'],
      )!,
    );
  }

  @override
  $ChangeLogTable createAlias(String alias) {
    return $ChangeLogTable(attachedDatabase, alias);
  }
}

class ChangeRow extends DataClass implements Insertable<ChangeRow> {
  final String id;

  /// Entity kind, such as "recipe" or "ingredient_line".
  final String entity;
  final String entityId;

  /// Field name, or "_deleted" for a tombstone.
  final String field;

  /// The new value, JSON encoded.
  final String value;

  /// Hybrid logical clock timestamp, encoded so that string order is
  /// time order.
  final String hlc;
  final String deviceId;

  /// The library or share this change belongs to.
  final String spaceId;
  const ChangeRow({
    required this.id,
    required this.entity,
    required this.entityId,
    required this.field,
    required this.value,
    required this.hlc,
    required this.deviceId,
    required this.spaceId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['entity'] = Variable<String>(entity);
    map['entity_id'] = Variable<String>(entityId);
    map['field'] = Variable<String>(field);
    map['value'] = Variable<String>(value);
    map['hlc'] = Variable<String>(hlc);
    map['device_id'] = Variable<String>(deviceId);
    map['space_id'] = Variable<String>(spaceId);
    return map;
  }

  ChangeLogCompanion toCompanion(bool nullToAbsent) {
    return ChangeLogCompanion(
      id: Value(id),
      entity: Value(entity),
      entityId: Value(entityId),
      field: Value(field),
      value: Value(value),
      hlc: Value(hlc),
      deviceId: Value(deviceId),
      spaceId: Value(spaceId),
    );
  }

  factory ChangeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChangeRow(
      id: serializer.fromJson<String>(json['id']),
      entity: serializer.fromJson<String>(json['entity']),
      entityId: serializer.fromJson<String>(json['entityId']),
      field: serializer.fromJson<String>(json['field']),
      value: serializer.fromJson<String>(json['value']),
      hlc: serializer.fromJson<String>(json['hlc']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      spaceId: serializer.fromJson<String>(json['spaceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'entity': serializer.toJson<String>(entity),
      'entityId': serializer.toJson<String>(entityId),
      'field': serializer.toJson<String>(field),
      'value': serializer.toJson<String>(value),
      'hlc': serializer.toJson<String>(hlc),
      'deviceId': serializer.toJson<String>(deviceId),
      'spaceId': serializer.toJson<String>(spaceId),
    };
  }

  ChangeRow copyWith({
    String? id,
    String? entity,
    String? entityId,
    String? field,
    String? value,
    String? hlc,
    String? deviceId,
    String? spaceId,
  }) => ChangeRow(
    id: id ?? this.id,
    entity: entity ?? this.entity,
    entityId: entityId ?? this.entityId,
    field: field ?? this.field,
    value: value ?? this.value,
    hlc: hlc ?? this.hlc,
    deviceId: deviceId ?? this.deviceId,
    spaceId: spaceId ?? this.spaceId,
  );
  ChangeRow copyWithCompanion(ChangeLogCompanion data) {
    return ChangeRow(
      id: data.id.present ? data.id.value : this.id,
      entity: data.entity.present ? data.entity.value : this.entity,
      entityId: data.entityId.present ? data.entityId.value : this.entityId,
      field: data.field.present ? data.field.value : this.field,
      value: data.value.present ? data.value.value : this.value,
      hlc: data.hlc.present ? data.hlc.value : this.hlc,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      spaceId: data.spaceId.present ? data.spaceId.value : this.spaceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChangeRow(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('entityId: $entityId, ')
          ..write('field: $field, ')
          ..write('value: $value, ')
          ..write('hlc: $hlc, ')
          ..write('deviceId: $deviceId, ')
          ..write('spaceId: $spaceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, entity, entityId, field, value, hlc, deviceId, spaceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChangeRow &&
          other.id == this.id &&
          other.entity == this.entity &&
          other.entityId == this.entityId &&
          other.field == this.field &&
          other.value == this.value &&
          other.hlc == this.hlc &&
          other.deviceId == this.deviceId &&
          other.spaceId == this.spaceId);
}

class ChangeLogCompanion extends UpdateCompanion<ChangeRow> {
  final Value<String> id;
  final Value<String> entity;
  final Value<String> entityId;
  final Value<String> field;
  final Value<String> value;
  final Value<String> hlc;
  final Value<String> deviceId;
  final Value<String> spaceId;
  final Value<int> rowid;
  const ChangeLogCompanion({
    this.id = const Value.absent(),
    this.entity = const Value.absent(),
    this.entityId = const Value.absent(),
    this.field = const Value.absent(),
    this.value = const Value.absent(),
    this.hlc = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.spaceId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChangeLogCompanion.insert({
    required String id,
    required String entity,
    required String entityId,
    required String field,
    required String value,
    required String hlc,
    required String deviceId,
    required String spaceId,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       entity = Value(entity),
       entityId = Value(entityId),
       field = Value(field),
       value = Value(value),
       hlc = Value(hlc),
       deviceId = Value(deviceId),
       spaceId = Value(spaceId);
  static Insertable<ChangeRow> custom({
    Expression<String>? id,
    Expression<String>? entity,
    Expression<String>? entityId,
    Expression<String>? field,
    Expression<String>? value,
    Expression<String>? hlc,
    Expression<String>? deviceId,
    Expression<String>? spaceId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entity != null) 'entity': entity,
      if (entityId != null) 'entity_id': entityId,
      if (field != null) 'field': field,
      if (value != null) 'value': value,
      if (hlc != null) 'hlc': hlc,
      if (deviceId != null) 'device_id': deviceId,
      if (spaceId != null) 'space_id': spaceId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChangeLogCompanion copyWith({
    Value<String>? id,
    Value<String>? entity,
    Value<String>? entityId,
    Value<String>? field,
    Value<String>? value,
    Value<String>? hlc,
    Value<String>? deviceId,
    Value<String>? spaceId,
    Value<int>? rowid,
  }) {
    return ChangeLogCompanion(
      id: id ?? this.id,
      entity: entity ?? this.entity,
      entityId: entityId ?? this.entityId,
      field: field ?? this.field,
      value: value ?? this.value,
      hlc: hlc ?? this.hlc,
      deviceId: deviceId ?? this.deviceId,
      spaceId: spaceId ?? this.spaceId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (entity.present) {
      map['entity'] = Variable<String>(entity.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (field.present) {
      map['field'] = Variable<String>(field.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (hlc.present) {
      map['hlc'] = Variable<String>(hlc.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (spaceId.present) {
      map['space_id'] = Variable<String>(spaceId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChangeLogCompanion(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('entityId: $entityId, ')
          ..write('field: $field, ')
          ..write('value: $value, ')
          ..write('hlc: $hlc, ')
          ..write('deviceId: $deviceId, ')
          ..write('spaceId: $spaceId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncStateTable extends SyncState
    with TableInfo<$SyncStateTable, SyncStateRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncStateTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _transportKeyMeta = const VerificationMeta(
    'transportKey',
  );
  @override
  late final GeneratedColumn<String> transportKey = GeneratedColumn<String>(
    'transport_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pullCursorMeta = const VerificationMeta(
    'pullCursor',
  );
  @override
  late final GeneratedColumn<String> pullCursor = GeneratedColumn<String>(
    'pull_cursor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pushedThroughHlcMeta = const VerificationMeta(
    'pushedThroughHlc',
  );
  @override
  late final GeneratedColumn<String> pushedThroughHlc = GeneratedColumn<String>(
    'pushed_through_hlc',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastSyncedAtMeta = const VerificationMeta(
    'lastSyncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSyncedAt = GeneratedColumn<DateTime>(
    'last_synced_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    transportKey,
    pullCursor,
    pushedThroughHlc,
    lastSyncedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_state';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncStateRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('transport_key')) {
      context.handle(
        _transportKeyMeta,
        transportKey.isAcceptableOrUnknown(
          data['transport_key']!,
          _transportKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_transportKeyMeta);
    }
    if (data.containsKey('pull_cursor')) {
      context.handle(
        _pullCursorMeta,
        pullCursor.isAcceptableOrUnknown(data['pull_cursor']!, _pullCursorMeta),
      );
    }
    if (data.containsKey('pushed_through_hlc')) {
      context.handle(
        _pushedThroughHlcMeta,
        pushedThroughHlc.isAcceptableOrUnknown(
          data['pushed_through_hlc']!,
          _pushedThroughHlcMeta,
        ),
      );
    }
    if (data.containsKey('last_synced_at')) {
      context.handle(
        _lastSyncedAtMeta,
        lastSyncedAt.isAcceptableOrUnknown(
          data['last_synced_at']!,
          _lastSyncedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {transportKey};
  @override
  SyncStateRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncStateRow(
      transportKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transport_key'],
      )!,
      pullCursor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pull_cursor'],
      ),
      pushedThroughHlc: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pushed_through_hlc'],
      ),
      lastSyncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_synced_at'],
      ),
    );
  }

  @override
  $SyncStateTable createAlias(String alias) {
    return $SyncStateTable(attachedDatabase, alias);
  }
}

class SyncStateRow extends DataClass implements Insertable<SyncStateRow> {
  /// Which transport and space, such as `drive` or `firestore:<spaceId>`.
  final String transportKey;

  /// Opaque cursor of the last pulled change.
  final String? pullCursor;

  /// HLC of the last local change pushed.
  final String? pushedThroughHlc;
  final DateTime? lastSyncedAt;
  const SyncStateRow({
    required this.transportKey,
    this.pullCursor,
    this.pushedThroughHlc,
    this.lastSyncedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['transport_key'] = Variable<String>(transportKey);
    if (!nullToAbsent || pullCursor != null) {
      map['pull_cursor'] = Variable<String>(pullCursor);
    }
    if (!nullToAbsent || pushedThroughHlc != null) {
      map['pushed_through_hlc'] = Variable<String>(pushedThroughHlc);
    }
    if (!nullToAbsent || lastSyncedAt != null) {
      map['last_synced_at'] = Variable<DateTime>(lastSyncedAt);
    }
    return map;
  }

  SyncStateCompanion toCompanion(bool nullToAbsent) {
    return SyncStateCompanion(
      transportKey: Value(transportKey),
      pullCursor: pullCursor == null && nullToAbsent
          ? const Value.absent()
          : Value(pullCursor),
      pushedThroughHlc: pushedThroughHlc == null && nullToAbsent
          ? const Value.absent()
          : Value(pushedThroughHlc),
      lastSyncedAt: lastSyncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncedAt),
    );
  }

  factory SyncStateRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncStateRow(
      transportKey: serializer.fromJson<String>(json['transportKey']),
      pullCursor: serializer.fromJson<String?>(json['pullCursor']),
      pushedThroughHlc: serializer.fromJson<String?>(json['pushedThroughHlc']),
      lastSyncedAt: serializer.fromJson<DateTime?>(json['lastSyncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'transportKey': serializer.toJson<String>(transportKey),
      'pullCursor': serializer.toJson<String?>(pullCursor),
      'pushedThroughHlc': serializer.toJson<String?>(pushedThroughHlc),
      'lastSyncedAt': serializer.toJson<DateTime?>(lastSyncedAt),
    };
  }

  SyncStateRow copyWith({
    String? transportKey,
    Value<String?> pullCursor = const Value.absent(),
    Value<String?> pushedThroughHlc = const Value.absent(),
    Value<DateTime?> lastSyncedAt = const Value.absent(),
  }) => SyncStateRow(
    transportKey: transportKey ?? this.transportKey,
    pullCursor: pullCursor.present ? pullCursor.value : this.pullCursor,
    pushedThroughHlc: pushedThroughHlc.present
        ? pushedThroughHlc.value
        : this.pushedThroughHlc,
    lastSyncedAt: lastSyncedAt.present ? lastSyncedAt.value : this.lastSyncedAt,
  );
  SyncStateRow copyWithCompanion(SyncStateCompanion data) {
    return SyncStateRow(
      transportKey: data.transportKey.present
          ? data.transportKey.value
          : this.transportKey,
      pullCursor: data.pullCursor.present
          ? data.pullCursor.value
          : this.pullCursor,
      pushedThroughHlc: data.pushedThroughHlc.present
          ? data.pushedThroughHlc.value
          : this.pushedThroughHlc,
      lastSyncedAt: data.lastSyncedAt.present
          ? data.lastSyncedAt.value
          : this.lastSyncedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncStateRow(')
          ..write('transportKey: $transportKey, ')
          ..write('pullCursor: $pullCursor, ')
          ..write('pushedThroughHlc: $pushedThroughHlc, ')
          ..write('lastSyncedAt: $lastSyncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(transportKey, pullCursor, pushedThroughHlc, lastSyncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncStateRow &&
          other.transportKey == this.transportKey &&
          other.pullCursor == this.pullCursor &&
          other.pushedThroughHlc == this.pushedThroughHlc &&
          other.lastSyncedAt == this.lastSyncedAt);
}

class SyncStateCompanion extends UpdateCompanion<SyncStateRow> {
  final Value<String> transportKey;
  final Value<String?> pullCursor;
  final Value<String?> pushedThroughHlc;
  final Value<DateTime?> lastSyncedAt;
  final Value<int> rowid;
  const SyncStateCompanion({
    this.transportKey = const Value.absent(),
    this.pullCursor = const Value.absent(),
    this.pushedThroughHlc = const Value.absent(),
    this.lastSyncedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncStateCompanion.insert({
    required String transportKey,
    this.pullCursor = const Value.absent(),
    this.pushedThroughHlc = const Value.absent(),
    this.lastSyncedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : transportKey = Value(transportKey);
  static Insertable<SyncStateRow> custom({
    Expression<String>? transportKey,
    Expression<String>? pullCursor,
    Expression<String>? pushedThroughHlc,
    Expression<DateTime>? lastSyncedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (transportKey != null) 'transport_key': transportKey,
      if (pullCursor != null) 'pull_cursor': pullCursor,
      if (pushedThroughHlc != null) 'pushed_through_hlc': pushedThroughHlc,
      if (lastSyncedAt != null) 'last_synced_at': lastSyncedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncStateCompanion copyWith({
    Value<String>? transportKey,
    Value<String?>? pullCursor,
    Value<String?>? pushedThroughHlc,
    Value<DateTime?>? lastSyncedAt,
    Value<int>? rowid,
  }) {
    return SyncStateCompanion(
      transportKey: transportKey ?? this.transportKey,
      pullCursor: pullCursor ?? this.pullCursor,
      pushedThroughHlc: pushedThroughHlc ?? this.pushedThroughHlc,
      lastSyncedAt: lastSyncedAt ?? this.lastSyncedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (transportKey.present) {
      map['transport_key'] = Variable<String>(transportKey.value);
    }
    if (pullCursor.present) {
      map['pull_cursor'] = Variable<String>(pullCursor.value);
    }
    if (pushedThroughHlc.present) {
      map['pushed_through_hlc'] = Variable<String>(pushedThroughHlc.value);
    }
    if (lastSyncedAt.present) {
      map['last_synced_at'] = Variable<DateTime>(lastSyncedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncStateCompanion(')
          ..write('transportKey: $transportKey, ')
          ..write('pullCursor: $pullCursor, ')
          ..write('pushedThroughHlc: $pushedThroughHlc, ')
          ..write('lastSyncedAt: $lastSyncedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $RecipesTable recipes = $RecipesTable(this);
  late final $IngredientSectionsTable ingredientSections =
      $IngredientSectionsTable(this);
  late final $IngredientLinesTable ingredientLines = $IngredientLinesTable(
    this,
  );
  late final $StepSectionsTable stepSections = $StepSectionsTable(this);
  late final $RecipeStepsTable recipeSteps = $RecipeStepsTable(this);
  late final $FoldersTable folders = $FoldersTable(this);
  late final $FolderEntriesTable folderEntries = $FolderEntriesTable(this);
  late final $FoodsTable foods = $FoodsTable(this);
  late final $FoodNutrientsTable foodNutrients = $FoodNutrientsTable(this);
  late final $FoodPortionsTable foodPortions = $FoodPortionsTable(this);
  late final $NutritionMatchesTable nutritionMatches = $NutritionMatchesTable(
    this,
  );
  late final $RecipeVersionsTable recipeVersions = $RecipeVersionsTable(this);
  late final $ExperimentsTable experiments = $ExperimentsTable(this);
  late final $GroceryListsTable groceryLists = $GroceryListsTable(this);
  late final $GroceryItemsTable groceryItems = $GroceryItemsTable(this);
  late final $MeasuringToolsTable measuringTools = $MeasuringToolsTable(this);
  late final $UserRecipePrefsTableTable userRecipePrefsTable =
      $UserRecipePrefsTableTable(this);
  late final $ChangeLogTable changeLog = $ChangeLogTable(this);
  late final $SyncStateTable syncState = $SyncStateTable(this);
  late final Index ingredientSectionsRecipe = Index(
    'ingredient_sections_recipe',
    'CREATE INDEX ingredient_sections_recipe ON ingredient_sections (recipe_id)',
  );
  late final Index ingredientLinesRecipe = Index(
    'ingredient_lines_recipe',
    'CREATE INDEX ingredient_lines_recipe ON ingredient_lines (recipe_id)',
  );
  late final Index stepSectionsRecipe = Index(
    'step_sections_recipe',
    'CREATE INDEX step_sections_recipe ON step_sections (recipe_id)',
  );
  late final Index recipeStepsRecipe = Index(
    'recipe_steps_recipe',
    'CREATE INDEX recipe_steps_recipe ON recipe_steps (recipe_id)',
  );
  late final Index folderEntriesRecipe = Index(
    'folder_entries_recipe',
    'CREATE INDEX folder_entries_recipe ON folder_entries (recipe_id)',
  );
  late final Index foodsSourceExternal = Index(
    'foods_source_external',
    'CREATE UNIQUE INDEX foods_source_external ON foods (source, external_id)',
  );
  late final Index foodPortionsFood = Index(
    'food_portions_food',
    'CREATE INDEX food_portions_food ON food_portions (food_id)',
  );
  late final Index nutritionMatchesLine = Index(
    'nutrition_matches_line',
    'CREATE UNIQUE INDEX nutrition_matches_line ON nutrition_matches (ingredient_line_id)',
  );
  late final Index recipeVersionsRecipe = Index(
    'recipe_versions_recipe',
    'CREATE INDEX recipe_versions_recipe ON recipe_versions (recipe_id)',
  );
  late final Index experimentsRecipe = Index(
    'experiments_recipe',
    'CREATE INDEX experiments_recipe ON experiments (recipe_id)',
  );
  late final Index groceryItemsList = Index(
    'grocery_items_list',
    'CREATE INDEX grocery_items_list ON grocery_items (list_id)',
  );
  late final Index changeLogField = Index(
    'change_log_field',
    'CREATE INDEX change_log_field ON change_log (entity, entity_id, field)',
  );
  late final Index changeLogHlc = Index(
    'change_log_hlc',
    'CREATE INDEX change_log_hlc ON change_log (hlc)',
  );
  late final RecipeDao recipeDao = RecipeDao(this as AppDatabase);
  late final FolderDao folderDao = FolderDao(this as AppDatabase);
  late final FoodDao foodDao = FoodDao(this as AppDatabase);
  late final HistoryDao historyDao = HistoryDao(this as AppDatabase);
  late final GroceryDao groceryDao = GroceryDao(this as AppDatabase);
  late final MeasuringToolDao measuringToolDao = MeasuringToolDao(
    this as AppDatabase,
  );
  late final UserRecipePrefsDao userRecipePrefsDao = UserRecipePrefsDao(
    this as AppDatabase,
  );
  late final SyncDao syncDao = SyncDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    recipes,
    ingredientSections,
    ingredientLines,
    stepSections,
    recipeSteps,
    folders,
    folderEntries,
    foods,
    foodNutrients,
    foodPortions,
    nutritionMatches,
    recipeVersions,
    experiments,
    groceryLists,
    groceryItems,
    measuringTools,
    userRecipePrefsTable,
    changeLog,
    syncState,
    ingredientSectionsRecipe,
    ingredientLinesRecipe,
    stepSectionsRecipe,
    recipeStepsRecipe,
    folderEntriesRecipe,
    foodsSourceExternal,
    foodPortionsFood,
    nutritionMatchesLine,
    recipeVersionsRecipe,
    experimentsRecipe,
    groceryItemsList,
    changeLogField,
    changeLogHlc,
  ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$RecipesTableCreateCompanionBuilder = RecipesCompanion Function({
  required String id,
  required String title,
  required int servingsNumerator,
  required int servingsDenominator,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<String?> photoRef,
  Value<int?> prepTimeSeconds,
  Value<int?> cookTimeSeconds,
  Value<int?> totalTimeSeconds,
  Value<String> notes,
  Value<String?> sourceUrl,
  Value<String?> sourceName,
  Value<int> rowid,
});
typedef $$RecipesTableUpdateCompanionBuilder = RecipesCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<int> servingsNumerator,
  Value<int> servingsDenominator,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String?> photoRef,
  Value<int?> prepTimeSeconds,
  Value<int?> cookTimeSeconds,
  Value<int?> totalTimeSeconds,
  Value<String> notes,
  Value<String?> sourceUrl,
  Value<String?> sourceName,
  Value<int> rowid,
});

class $$RecipesTableFilterComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get servingsNumerator => $composableBuilder(
    column: $table.servingsNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get servingsDenominator => $composableBuilder(
    column: $table.servingsDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoRef => $composableBuilder(
    column: $table.photoRef,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get prepTimeSeconds => $composableBuilder(
    column: $table.prepTimeSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cookTimeSeconds => $composableBuilder(
    column: $table.cookTimeSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalTimeSeconds => $composableBuilder(
    column: $table.totalTimeSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceName => $composableBuilder(
    column: $table.sourceName,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RecipesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get servingsNumerator => $composableBuilder(
    column: $table.servingsNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get servingsDenominator => $composableBuilder(
    column: $table.servingsDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoRef => $composableBuilder(
    column: $table.photoRef,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get prepTimeSeconds => $composableBuilder(
    column: $table.prepTimeSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cookTimeSeconds => $composableBuilder(
    column: $table.cookTimeSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalTimeSeconds => $composableBuilder(
    column: $table.totalTimeSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceName => $composableBuilder(
    column: $table.sourceName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecipesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get servingsNumerator => $composableBuilder(
    column: $table.servingsNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get servingsDenominator => $composableBuilder(
    column: $table.servingsDenominator,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get photoRef =>
      $composableBuilder(column: $table.photoRef, builder: (column) => column);

  GeneratedColumn<int> get prepTimeSeconds => $composableBuilder(
    column: $table.prepTimeSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cookTimeSeconds => $composableBuilder(
    column: $table.cookTimeSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalTimeSeconds => $composableBuilder(
    column: $table.totalTimeSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get sourceUrl =>
      $composableBuilder(column: $table.sourceUrl, builder: (column) => column);

  GeneratedColumn<String> get sourceName => $composableBuilder(
    column: $table.sourceName,
    builder: (column) => column,
  );
}

class $$RecipesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecipesTable,
          RecipeRow,
          $$RecipesTableFilterComposer,
          $$RecipesTableOrderingComposer,
          $$RecipesTableAnnotationComposer,
          $$RecipesTableCreateCompanionBuilder,
          $$RecipesTableUpdateCompanionBuilder,
          (RecipeRow, BaseReferences<_$AppDatabase, $RecipesTable, RecipeRow>),
          RecipeRow,
          PrefetchHooks Function()
        > {
  $$RecipesTableTableManager(_$AppDatabase db, $RecipesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> servingsNumerator = const Value.absent(),
                Value<int> servingsDenominator = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<String?> photoRef = const Value.absent(),
                Value<int?> prepTimeSeconds = const Value.absent(),
                Value<int?> cookTimeSeconds = const Value.absent(),
                Value<int?> totalTimeSeconds = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<String?> sourceUrl = const Value.absent(),
                Value<String?> sourceName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipesCompanion(
                id: id,
                title: title,
                servingsNumerator: servingsNumerator,
                servingsDenominator: servingsDenominator,
                createdAt: createdAt,
                updatedAt: updatedAt,
                photoRef: photoRef,
                prepTimeSeconds: prepTimeSeconds,
                cookTimeSeconds: cookTimeSeconds,
                totalTimeSeconds: totalTimeSeconds,
                notes: notes,
                sourceUrl: sourceUrl,
                sourceName: sourceName,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required int servingsNumerator,
                required int servingsDenominator,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<String?> photoRef = const Value.absent(),
                Value<int?> prepTimeSeconds = const Value.absent(),
                Value<int?> cookTimeSeconds = const Value.absent(),
                Value<int?> totalTimeSeconds = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<String?> sourceUrl = const Value.absent(),
                Value<String?> sourceName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipesCompanion.insert(
                id: id,
                title: title,
                servingsNumerator: servingsNumerator,
                servingsDenominator: servingsDenominator,
                createdAt: createdAt,
                updatedAt: updatedAt,
                photoRef: photoRef,
                prepTimeSeconds: prepTimeSeconds,
                cookTimeSeconds: cookTimeSeconds,
                totalTimeSeconds: totalTimeSeconds,
                notes: notes,
                sourceUrl: sourceUrl,
                sourceName: sourceName,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RecipesTable, RecipeRow>(table),
                  BaseReferences<_$AppDatabase, $RecipesTable, RecipeRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RecipesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecipesTable,
      RecipeRow,
      $$RecipesTableFilterComposer,
      $$RecipesTableOrderingComposer,
      $$RecipesTableAnnotationComposer,
      $$RecipesTableCreateCompanionBuilder,
      $$RecipesTableUpdateCompanionBuilder,
      (RecipeRow, BaseReferences<_$AppDatabase, $RecipesTable, RecipeRow>),
      RecipeRow,
      PrefetchHooks Function()
    >;
typedef $$IngredientSectionsTableCreateCompanionBuilder =
    IngredientSectionsCompanion Function({
      required String id,
      required String recipeId,
      required String name,
      required String sortKey,
      Value<int> rowid,
    });
typedef $$IngredientSectionsTableUpdateCompanionBuilder =
    IngredientSectionsCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<String> name,
      Value<String> sortKey,
      Value<int> rowid,
    });

class $$IngredientSectionsTableFilterComposer
    extends Composer<_$AppDatabase, $IngredientSectionsTable> {
  $$IngredientSectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnFilters(column),
  );
}

class $$IngredientSectionsTableOrderingComposer
    extends Composer<_$AppDatabase, $IngredientSectionsTable> {
  $$IngredientSectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$IngredientSectionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $IngredientSectionsTable> {
  $$IngredientSectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get sortKey =>
      $composableBuilder(column: $table.sortKey, builder: (column) => column);
}

class $$IngredientSectionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $IngredientSectionsTable,
          IngredientSectionRow,
          $$IngredientSectionsTableFilterComposer,
          $$IngredientSectionsTableOrderingComposer,
          $$IngredientSectionsTableAnnotationComposer,
          $$IngredientSectionsTableCreateCompanionBuilder,
          $$IngredientSectionsTableUpdateCompanionBuilder,
          (
            IngredientSectionRow,
            BaseReferences<
              _$AppDatabase,
              $IngredientSectionsTable,
              IngredientSectionRow
            >,
          ),
          IngredientSectionRow,
          PrefetchHooks Function()
        > {
  $$IngredientSectionsTableTableManager(
    _$AppDatabase db,
    $IngredientSectionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IngredientSectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$IngredientSectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$IngredientSectionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> sortKey = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => IngredientSectionsCompanion(
                id: id,
                recipeId: recipeId,
                name: name,
                sortKey: sortKey,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                required String name,
                required String sortKey,
                Value<int> rowid = const Value.absent(),
              }) => IngredientSectionsCompanion.insert(
                id: id,
                recipeId: recipeId,
                name: name,
                sortKey: sortKey,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$IngredientSectionsTable, IngredientSectionRow>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $IngredientSectionsTable,
                    IngredientSectionRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$IngredientSectionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $IngredientSectionsTable,
      IngredientSectionRow,
      $$IngredientSectionsTableFilterComposer,
      $$IngredientSectionsTableOrderingComposer,
      $$IngredientSectionsTableAnnotationComposer,
      $$IngredientSectionsTableCreateCompanionBuilder,
      $$IngredientSectionsTableUpdateCompanionBuilder,
      (
        IngredientSectionRow,
        BaseReferences<
          _$AppDatabase,
          $IngredientSectionsTable,
          IngredientSectionRow
        >,
      ),
      IngredientSectionRow,
      PrefetchHooks Function()
    >;
typedef $$IngredientLinesTableCreateCompanionBuilder =
    IngredientLinesCompanion Function({
      required String id,
      required String recipeId,
      Value<String?> sectionId,
      required String rawText,
      required String sortKey,
      Value<int?> quantityNumerator,
      Value<int?> quantityDenominator,
      Value<int?> quantityMaxNumerator,
      Value<int?> quantityMaxDenominator,
      Value<Unit?> unit,
      Value<String?> name,
      Value<String?> preparation,
      Value<int> rowid,
    });
typedef $$IngredientLinesTableUpdateCompanionBuilder =
    IngredientLinesCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<String?> sectionId,
      Value<String> rawText,
      Value<String> sortKey,
      Value<int?> quantityNumerator,
      Value<int?> quantityDenominator,
      Value<int?> quantityMaxNumerator,
      Value<int?> quantityMaxDenominator,
      Value<Unit?> unit,
      Value<String?> name,
      Value<String?> preparation,
      Value<int> rowid,
    });

class $$IngredientLinesTableFilterComposer
    extends Composer<_$AppDatabase, $IngredientLinesTable> {
  $$IngredientLinesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawText => $composableBuilder(
    column: $table.rawText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityNumerator => $composableBuilder(
    column: $table.quantityNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityDenominator => $composableBuilder(
    column: $table.quantityDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityMaxNumerator => $composableBuilder(
    column: $table.quantityMaxNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityMaxDenominator => $composableBuilder(
    column: $table.quantityMaxDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Unit?, Unit, String> get unit =>
      $composableBuilder(
        column: $table.unit,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preparation => $composableBuilder(
    column: $table.preparation,
    builder: (column) => ColumnFilters(column),
  );
}

class $$IngredientLinesTableOrderingComposer
    extends Composer<_$AppDatabase, $IngredientLinesTable> {
  $$IngredientLinesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawText => $composableBuilder(
    column: $table.rawText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityNumerator => $composableBuilder(
    column: $table.quantityNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityDenominator => $composableBuilder(
    column: $table.quantityDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityMaxNumerator => $composableBuilder(
    column: $table.quantityMaxNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityMaxDenominator => $composableBuilder(
    column: $table.quantityMaxDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preparation => $composableBuilder(
    column: $table.preparation,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$IngredientLinesTableAnnotationComposer
    extends Composer<_$AppDatabase, $IngredientLinesTable> {
  $$IngredientLinesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<String> get sectionId =>
      $composableBuilder(column: $table.sectionId, builder: (column) => column);

  GeneratedColumn<String> get rawText =>
      $composableBuilder(column: $table.rawText, builder: (column) => column);

  GeneratedColumn<String> get sortKey =>
      $composableBuilder(column: $table.sortKey, builder: (column) => column);

  GeneratedColumn<int> get quantityNumerator => $composableBuilder(
    column: $table.quantityNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantityDenominator => $composableBuilder(
    column: $table.quantityDenominator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantityMaxNumerator => $composableBuilder(
    column: $table.quantityMaxNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantityMaxDenominator => $composableBuilder(
    column: $table.quantityMaxDenominator,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<Unit?, String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get preparation => $composableBuilder(
    column: $table.preparation,
    builder: (column) => column,
  );
}

class $$IngredientLinesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $IngredientLinesTable,
          IngredientLineRow,
          $$IngredientLinesTableFilterComposer,
          $$IngredientLinesTableOrderingComposer,
          $$IngredientLinesTableAnnotationComposer,
          $$IngredientLinesTableCreateCompanionBuilder,
          $$IngredientLinesTableUpdateCompanionBuilder,
          (
            IngredientLineRow,
            BaseReferences<
              _$AppDatabase,
              $IngredientLinesTable,
              IngredientLineRow
            >,
          ),
          IngredientLineRow,
          PrefetchHooks Function()
        > {
  $$IngredientLinesTableTableManager(
    _$AppDatabase db,
    $IngredientLinesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IngredientLinesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$IngredientLinesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$IngredientLinesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<String?> sectionId = const Value.absent(),
                Value<String> rawText = const Value.absent(),
                Value<String> sortKey = const Value.absent(),
                Value<int?> quantityNumerator = const Value.absent(),
                Value<int?> quantityDenominator = const Value.absent(),
                Value<int?> quantityMaxNumerator = const Value.absent(),
                Value<int?> quantityMaxDenominator = const Value.absent(),
                Value<Unit?> unit = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String?> preparation = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => IngredientLinesCompanion(
                id: id,
                recipeId: recipeId,
                sectionId: sectionId,
                rawText: rawText,
                sortKey: sortKey,
                quantityNumerator: quantityNumerator,
                quantityDenominator: quantityDenominator,
                quantityMaxNumerator: quantityMaxNumerator,
                quantityMaxDenominator: quantityMaxDenominator,
                unit: unit,
                name: name,
                preparation: preparation,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                Value<String?> sectionId = const Value.absent(),
                required String rawText,
                required String sortKey,
                Value<int?> quantityNumerator = const Value.absent(),
                Value<int?> quantityDenominator = const Value.absent(),
                Value<int?> quantityMaxNumerator = const Value.absent(),
                Value<int?> quantityMaxDenominator = const Value.absent(),
                Value<Unit?> unit = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String?> preparation = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => IngredientLinesCompanion.insert(
                id: id,
                recipeId: recipeId,
                sectionId: sectionId,
                rawText: rawText,
                sortKey: sortKey,
                quantityNumerator: quantityNumerator,
                quantityDenominator: quantityDenominator,
                quantityMaxNumerator: quantityMaxNumerator,
                quantityMaxDenominator: quantityMaxDenominator,
                unit: unit,
                name: name,
                preparation: preparation,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$IngredientLinesTable, IngredientLineRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $IngredientLinesTable,
                    IngredientLineRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$IngredientLinesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $IngredientLinesTable,
      IngredientLineRow,
      $$IngredientLinesTableFilterComposer,
      $$IngredientLinesTableOrderingComposer,
      $$IngredientLinesTableAnnotationComposer,
      $$IngredientLinesTableCreateCompanionBuilder,
      $$IngredientLinesTableUpdateCompanionBuilder,
      (
        IngredientLineRow,
        BaseReferences<_$AppDatabase, $IngredientLinesTable, IngredientLineRow>,
      ),
      IngredientLineRow,
      PrefetchHooks Function()
    >;
typedef $$StepSectionsTableCreateCompanionBuilder =
    StepSectionsCompanion Function({
      required String id,
      required String recipeId,
      required String name,
      required String sortKey,
      Value<int> rowid,
    });
typedef $$StepSectionsTableUpdateCompanionBuilder =
    StepSectionsCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<String> name,
      Value<String> sortKey,
      Value<int> rowid,
    });

class $$StepSectionsTableFilterComposer
    extends Composer<_$AppDatabase, $StepSectionsTable> {
  $$StepSectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StepSectionsTableOrderingComposer
    extends Composer<_$AppDatabase, $StepSectionsTable> {
  $$StepSectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StepSectionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StepSectionsTable> {
  $$StepSectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get sortKey =>
      $composableBuilder(column: $table.sortKey, builder: (column) => column);
}

class $$StepSectionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StepSectionsTable,
          StepSectionRow,
          $$StepSectionsTableFilterComposer,
          $$StepSectionsTableOrderingComposer,
          $$StepSectionsTableAnnotationComposer,
          $$StepSectionsTableCreateCompanionBuilder,
          $$StepSectionsTableUpdateCompanionBuilder,
          (
            StepSectionRow,
            BaseReferences<_$AppDatabase, $StepSectionsTable, StepSectionRow>,
          ),
          StepSectionRow,
          PrefetchHooks Function()
        > {
  $$StepSectionsTableTableManager(_$AppDatabase db, $StepSectionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StepSectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StepSectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StepSectionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> sortKey = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StepSectionsCompanion(
                id: id,
                recipeId: recipeId,
                name: name,
                sortKey: sortKey,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                required String name,
                required String sortKey,
                Value<int> rowid = const Value.absent(),
              }) => StepSectionsCompanion.insert(
                id: id,
                recipeId: recipeId,
                name: name,
                sortKey: sortKey,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$StepSectionsTable, StepSectionRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $StepSectionsTable,
                    StepSectionRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StepSectionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StepSectionsTable,
      StepSectionRow,
      $$StepSectionsTableFilterComposer,
      $$StepSectionsTableOrderingComposer,
      $$StepSectionsTableAnnotationComposer,
      $$StepSectionsTableCreateCompanionBuilder,
      $$StepSectionsTableUpdateCompanionBuilder,
      (
        StepSectionRow,
        BaseReferences<_$AppDatabase, $StepSectionsTable, StepSectionRow>,
      ),
      StepSectionRow,
      PrefetchHooks Function()
    >;
typedef $$RecipeStepsTableCreateCompanionBuilder =
    RecipeStepsCompanion Function({
      required String id,
      required String recipeId,
      Value<String?> sectionId,
      required String body,
      required String sortKey,
      Value<int> rowid,
    });
typedef $$RecipeStepsTableUpdateCompanionBuilder =
    RecipeStepsCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<String?> sectionId,
      Value<String> body,
      Value<String> sortKey,
      Value<int> rowid,
    });

class $$RecipeStepsTableFilterComposer
    extends Composer<_$AppDatabase, $RecipeStepsTable> {
  $$RecipeStepsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RecipeStepsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipeStepsTable> {
  $$RecipeStepsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sectionId => $composableBuilder(
    column: $table.sectionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecipeStepsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipeStepsTable> {
  $$RecipeStepsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<String> get sectionId =>
      $composableBuilder(column: $table.sectionId, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<String> get sortKey =>
      $composableBuilder(column: $table.sortKey, builder: (column) => column);
}

class $$RecipeStepsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecipeStepsTable,
          RecipeStepRow,
          $$RecipeStepsTableFilterComposer,
          $$RecipeStepsTableOrderingComposer,
          $$RecipeStepsTableAnnotationComposer,
          $$RecipeStepsTableCreateCompanionBuilder,
          $$RecipeStepsTableUpdateCompanionBuilder,
          (
            RecipeStepRow,
            BaseReferences<_$AppDatabase, $RecipeStepsTable, RecipeStepRow>,
          ),
          RecipeStepRow,
          PrefetchHooks Function()
        > {
  $$RecipeStepsTableTableManager(_$AppDatabase db, $RecipeStepsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipeStepsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipeStepsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipeStepsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<String?> sectionId = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<String> sortKey = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipeStepsCompanion(
                id: id,
                recipeId: recipeId,
                sectionId: sectionId,
                body: body,
                sortKey: sortKey,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                Value<String?> sectionId = const Value.absent(),
                required String body,
                required String sortKey,
                Value<int> rowid = const Value.absent(),
              }) => RecipeStepsCompanion.insert(
                id: id,
                recipeId: recipeId,
                sectionId: sectionId,
                body: body,
                sortKey: sortKey,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RecipeStepsTable, RecipeStepRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $RecipeStepsTable,
                    RecipeStepRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RecipeStepsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecipeStepsTable,
      RecipeStepRow,
      $$RecipeStepsTableFilterComposer,
      $$RecipeStepsTableOrderingComposer,
      $$RecipeStepsTableAnnotationComposer,
      $$RecipeStepsTableCreateCompanionBuilder,
      $$RecipeStepsTableUpdateCompanionBuilder,
      (
        RecipeStepRow,
        BaseReferences<_$AppDatabase, $RecipeStepsTable, RecipeStepRow>,
      ),
      RecipeStepRow,
      PrefetchHooks Function()
    >;
typedef $$FoldersTableCreateCompanionBuilder = FoldersCompanion Function({
  required String id,
  required String name,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$FoldersTableUpdateCompanionBuilder = FoldersCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$FoldersTableFilterComposer
    extends Composer<_$AppDatabase, $FoldersTable> {
  $$FoldersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FoldersTableOrderingComposer
    extends Composer<_$AppDatabase, $FoldersTable> {
  $$FoldersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FoldersTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoldersTable> {
  $$FoldersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$FoldersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FoldersTable,
          FolderRow,
          $$FoldersTableFilterComposer,
          $$FoldersTableOrderingComposer,
          $$FoldersTableAnnotationComposer,
          $$FoldersTableCreateCompanionBuilder,
          $$FoldersTableUpdateCompanionBuilder,
          (FolderRow, BaseReferences<_$AppDatabase, $FoldersTable, FolderRow>),
          FolderRow,
          PrefetchHooks Function()
        > {
  $$FoldersTableTableManager(_$AppDatabase db, $FoldersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoldersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoldersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoldersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoldersCompanion(
                id: id,
                name: name,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => FoldersCompanion.insert(
                id: id,
                name: name,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FoldersTable, FolderRow>(table),
                  BaseReferences<_$AppDatabase, $FoldersTable, FolderRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FoldersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FoldersTable,
      FolderRow,
      $$FoldersTableFilterComposer,
      $$FoldersTableOrderingComposer,
      $$FoldersTableAnnotationComposer,
      $$FoldersTableCreateCompanionBuilder,
      $$FoldersTableUpdateCompanionBuilder,
      (FolderRow, BaseReferences<_$AppDatabase, $FoldersTable, FolderRow>),
      FolderRow,
      PrefetchHooks Function()
    >;
typedef $$FolderEntriesTableCreateCompanionBuilder =
    FolderEntriesCompanion Function({
      required String folderId,
      required String recipeId,
      required DateTime addedAt,
      Value<int> rowid,
    });
typedef $$FolderEntriesTableUpdateCompanionBuilder =
    FolderEntriesCompanion Function({
      Value<String> folderId,
      Value<String> recipeId,
      Value<DateTime> addedAt,
      Value<int> rowid,
    });

class $$FolderEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $FolderEntriesTable> {
  $$FolderEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get folderId => $composableBuilder(
    column: $table.folderId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FolderEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $FolderEntriesTable> {
  $$FolderEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get folderId => $composableBuilder(
    column: $table.folderId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FolderEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FolderEntriesTable> {
  $$FolderEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get folderId =>
      $composableBuilder(column: $table.folderId, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);
}

class $$FolderEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FolderEntriesTable,
          FolderEntryRow,
          $$FolderEntriesTableFilterComposer,
          $$FolderEntriesTableOrderingComposer,
          $$FolderEntriesTableAnnotationComposer,
          $$FolderEntriesTableCreateCompanionBuilder,
          $$FolderEntriesTableUpdateCompanionBuilder,
          (
            FolderEntryRow,
            BaseReferences<_$AppDatabase, $FolderEntriesTable, FolderEntryRow>,
          ),
          FolderEntryRow,
          PrefetchHooks Function()
        > {
  $$FolderEntriesTableTableManager(_$AppDatabase db, $FolderEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FolderEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FolderEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FolderEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> folderId = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FolderEntriesCompanion(
                folderId: folderId,
                recipeId: recipeId,
                addedAt: addedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String folderId,
                required String recipeId,
                required DateTime addedAt,
                Value<int> rowid = const Value.absent(),
              }) => FolderEntriesCompanion.insert(
                folderId: folderId,
                recipeId: recipeId,
                addedAt: addedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FolderEntriesTable, FolderEntryRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $FolderEntriesTable,
                    FolderEntryRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FolderEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FolderEntriesTable,
      FolderEntryRow,
      $$FolderEntriesTableFilterComposer,
      $$FolderEntriesTableOrderingComposer,
      $$FolderEntriesTableAnnotationComposer,
      $$FolderEntriesTableCreateCompanionBuilder,
      $$FolderEntriesTableUpdateCompanionBuilder,
      (
        FolderEntryRow,
        BaseReferences<_$AppDatabase, $FolderEntriesTable, FolderEntryRow>,
      ),
      FolderEntryRow,
      PrefetchHooks Function()
    >;
typedef $$FoodsTableCreateCompanionBuilder = FoodsCompanion Function({
  required String id,
  required NutritionSource source,
  required String externalId,
  required String name,
  Value<String?> brand,
  Value<int> rowid,
});
typedef $$FoodsTableUpdateCompanionBuilder = FoodsCompanion Function({
  Value<String> id,
  Value<NutritionSource> source,
  Value<String> externalId,
  Value<String> name,
  Value<String?> brand,
  Value<int> rowid,
});

class $$FoodsTableFilterComposer extends Composer<_$AppDatabase, $FoodsTable> {
  $$FoodsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<NutritionSource, NutritionSource, String>
  get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get externalId => $composableBuilder(
    column: $table.externalId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FoodsTableOrderingComposer
    extends Composer<_$AppDatabase, $FoodsTable> {
  $$FoodsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get externalId => $composableBuilder(
    column: $table.externalId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FoodsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoodsTable> {
  $$FoodsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<NutritionSource, String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<String> get externalId => $composableBuilder(
    column: $table.externalId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);
}

class $$FoodsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FoodsTable,
          FoodRow,
          $$FoodsTableFilterComposer,
          $$FoodsTableOrderingComposer,
          $$FoodsTableAnnotationComposer,
          $$FoodsTableCreateCompanionBuilder,
          $$FoodsTableUpdateCompanionBuilder,
          (FoodRow, BaseReferences<_$AppDatabase, $FoodsTable, FoodRow>),
          FoodRow,
          PrefetchHooks Function()
        > {
  $$FoodsTableTableManager(_$AppDatabase db, $FoodsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<NutritionSource> source = const Value.absent(),
                Value<String> externalId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> brand = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodsCompanion(
                id: id,
                source: source,
                externalId: externalId,
                name: name,
                brand: brand,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required NutritionSource source,
                required String externalId,
                required String name,
                Value<String?> brand = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodsCompanion.insert(
                id: id,
                source: source,
                externalId: externalId,
                name: name,
                brand: brand,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FoodsTable, FoodRow>(table),
                  BaseReferences<_$AppDatabase, $FoodsTable, FoodRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FoodsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FoodsTable,
      FoodRow,
      $$FoodsTableFilterComposer,
      $$FoodsTableOrderingComposer,
      $$FoodsTableAnnotationComposer,
      $$FoodsTableCreateCompanionBuilder,
      $$FoodsTableUpdateCompanionBuilder,
      (FoodRow, BaseReferences<_$AppDatabase, $FoodsTable, FoodRow>),
      FoodRow,
      PrefetchHooks Function()
    >;
typedef $$FoodNutrientsTableCreateCompanionBuilder =
    FoodNutrientsCompanion Function({
      required String foodId,
      required String nutrientCode,
      required double amountPer100g,
      Value<int> rowid,
    });
typedef $$FoodNutrientsTableUpdateCompanionBuilder =
    FoodNutrientsCompanion Function({
      Value<String> foodId,
      Value<String> nutrientCode,
      Value<double> amountPer100g,
      Value<int> rowid,
    });

class $$FoodNutrientsTableFilterComposer
    extends Composer<_$AppDatabase, $FoodNutrientsTable> {
  $$FoodNutrientsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nutrientCode => $composableBuilder(
    column: $table.nutrientCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amountPer100g => $composableBuilder(
    column: $table.amountPer100g,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FoodNutrientsTableOrderingComposer
    extends Composer<_$AppDatabase, $FoodNutrientsTable> {
  $$FoodNutrientsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nutrientCode => $composableBuilder(
    column: $table.nutrientCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amountPer100g => $composableBuilder(
    column: $table.amountPer100g,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FoodNutrientsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoodNutrientsTable> {
  $$FoodNutrientsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get foodId =>
      $composableBuilder(column: $table.foodId, builder: (column) => column);

  GeneratedColumn<String> get nutrientCode => $composableBuilder(
    column: $table.nutrientCode,
    builder: (column) => column,
  );

  GeneratedColumn<double> get amountPer100g => $composableBuilder(
    column: $table.amountPer100g,
    builder: (column) => column,
  );
}

class $$FoodNutrientsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FoodNutrientsTable,
          FoodNutrientRow,
          $$FoodNutrientsTableFilterComposer,
          $$FoodNutrientsTableOrderingComposer,
          $$FoodNutrientsTableAnnotationComposer,
          $$FoodNutrientsTableCreateCompanionBuilder,
          $$FoodNutrientsTableUpdateCompanionBuilder,
          (
            FoodNutrientRow,
            BaseReferences<_$AppDatabase, $FoodNutrientsTable, FoodNutrientRow>,
          ),
          FoodNutrientRow,
          PrefetchHooks Function()
        > {
  $$FoodNutrientsTableTableManager(_$AppDatabase db, $FoodNutrientsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodNutrientsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodNutrientsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodNutrientsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> foodId = const Value.absent(),
                Value<String> nutrientCode = const Value.absent(),
                Value<double> amountPer100g = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodNutrientsCompanion(
                foodId: foodId,
                nutrientCode: nutrientCode,
                amountPer100g: amountPer100g,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String foodId,
                required String nutrientCode,
                required double amountPer100g,
                Value<int> rowid = const Value.absent(),
              }) => FoodNutrientsCompanion.insert(
                foodId: foodId,
                nutrientCode: nutrientCode,
                amountPer100g: amountPer100g,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FoodNutrientsTable, FoodNutrientRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $FoodNutrientsTable,
                    FoodNutrientRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FoodNutrientsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FoodNutrientsTable,
      FoodNutrientRow,
      $$FoodNutrientsTableFilterComposer,
      $$FoodNutrientsTableOrderingComposer,
      $$FoodNutrientsTableAnnotationComposer,
      $$FoodNutrientsTableCreateCompanionBuilder,
      $$FoodNutrientsTableUpdateCompanionBuilder,
      (
        FoodNutrientRow,
        BaseReferences<_$AppDatabase, $FoodNutrientsTable, FoodNutrientRow>,
      ),
      FoodNutrientRow,
      PrefetchHooks Function()
    >;
typedef $$FoodPortionsTableCreateCompanionBuilder =
    FoodPortionsCompanion Function({
      required String id,
      required String foodId,
      required int amountNumerator,
      required int amountDenominator,
      required double gramWeight,
      Value<Unit?> unit,
      Value<String> description,
      Value<int> rowid,
    });
typedef $$FoodPortionsTableUpdateCompanionBuilder =
    FoodPortionsCompanion Function({
      Value<String> id,
      Value<String> foodId,
      Value<int> amountNumerator,
      Value<int> amountDenominator,
      Value<double> gramWeight,
      Value<Unit?> unit,
      Value<String> description,
      Value<int> rowid,
    });

class $$FoodPortionsTableFilterComposer
    extends Composer<_$AppDatabase, $FoodPortionsTable> {
  $$FoodPortionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amountNumerator => $composableBuilder(
    column: $table.amountNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amountDenominator => $composableBuilder(
    column: $table.amountDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get gramWeight => $composableBuilder(
    column: $table.gramWeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Unit?, Unit, String> get unit =>
      $composableBuilder(
        column: $table.unit,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FoodPortionsTableOrderingComposer
    extends Composer<_$AppDatabase, $FoodPortionsTable> {
  $$FoodPortionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amountNumerator => $composableBuilder(
    column: $table.amountNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amountDenominator => $composableBuilder(
    column: $table.amountDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gramWeight => $composableBuilder(
    column: $table.gramWeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FoodPortionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoodPortionsTable> {
  $$FoodPortionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get foodId =>
      $composableBuilder(column: $table.foodId, builder: (column) => column);

  GeneratedColumn<int> get amountNumerator => $composableBuilder(
    column: $table.amountNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get amountDenominator => $composableBuilder(
    column: $table.amountDenominator,
    builder: (column) => column,
  );

  GeneratedColumn<double> get gramWeight => $composableBuilder(
    column: $table.gramWeight,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<Unit?, String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );
}

class $$FoodPortionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FoodPortionsTable,
          FoodPortionRow,
          $$FoodPortionsTableFilterComposer,
          $$FoodPortionsTableOrderingComposer,
          $$FoodPortionsTableAnnotationComposer,
          $$FoodPortionsTableCreateCompanionBuilder,
          $$FoodPortionsTableUpdateCompanionBuilder,
          (
            FoodPortionRow,
            BaseReferences<_$AppDatabase, $FoodPortionsTable, FoodPortionRow>,
          ),
          FoodPortionRow,
          PrefetchHooks Function()
        > {
  $$FoodPortionsTableTableManager(_$AppDatabase db, $FoodPortionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodPortionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodPortionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodPortionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> foodId = const Value.absent(),
                Value<int> amountNumerator = const Value.absent(),
                Value<int> amountDenominator = const Value.absent(),
                Value<double> gramWeight = const Value.absent(),
                Value<Unit?> unit = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodPortionsCompanion(
                id: id,
                foodId: foodId,
                amountNumerator: amountNumerator,
                amountDenominator: amountDenominator,
                gramWeight: gramWeight,
                unit: unit,
                description: description,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String foodId,
                required int amountNumerator,
                required int amountDenominator,
                required double gramWeight,
                Value<Unit?> unit = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodPortionsCompanion.insert(
                id: id,
                foodId: foodId,
                amountNumerator: amountNumerator,
                amountDenominator: amountDenominator,
                gramWeight: gramWeight,
                unit: unit,
                description: description,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FoodPortionsTable, FoodPortionRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $FoodPortionsTable,
                    FoodPortionRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FoodPortionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FoodPortionsTable,
      FoodPortionRow,
      $$FoodPortionsTableFilterComposer,
      $$FoodPortionsTableOrderingComposer,
      $$FoodPortionsTableAnnotationComposer,
      $$FoodPortionsTableCreateCompanionBuilder,
      $$FoodPortionsTableUpdateCompanionBuilder,
      (
        FoodPortionRow,
        BaseReferences<_$AppDatabase, $FoodPortionsTable, FoodPortionRow>,
      ),
      FoodPortionRow,
      PrefetchHooks Function()
    >;
typedef $$NutritionMatchesTableCreateCompanionBuilder =
    NutritionMatchesCompanion Function({
      required String id,
      required String ingredientLineId,
      required String foodId,
      required NutritionSource source,
      required double gramWeight,
      Value<bool> userConfirmed,
      Value<int> rowid,
    });
typedef $$NutritionMatchesTableUpdateCompanionBuilder =
    NutritionMatchesCompanion Function({
      Value<String> id,
      Value<String> ingredientLineId,
      Value<String> foodId,
      Value<NutritionSource> source,
      Value<double> gramWeight,
      Value<bool> userConfirmed,
      Value<int> rowid,
    });

class $$NutritionMatchesTableFilterComposer
    extends Composer<_$AppDatabase, $NutritionMatchesTable> {
  $$NutritionMatchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ingredientLineId => $composableBuilder(
    column: $table.ingredientLineId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<NutritionSource, NutritionSource, String>
  get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<double> get gramWeight => $composableBuilder(
    column: $table.gramWeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get userConfirmed => $composableBuilder(
    column: $table.userConfirmed,
    builder: (column) => ColumnFilters(column),
  );
}

class $$NutritionMatchesTableOrderingComposer
    extends Composer<_$AppDatabase, $NutritionMatchesTable> {
  $$NutritionMatchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ingredientLineId => $composableBuilder(
    column: $table.ingredientLineId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get gramWeight => $composableBuilder(
    column: $table.gramWeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get userConfirmed => $composableBuilder(
    column: $table.userConfirmed,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$NutritionMatchesTableAnnotationComposer
    extends Composer<_$AppDatabase, $NutritionMatchesTable> {
  $$NutritionMatchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ingredientLineId => $composableBuilder(
    column: $table.ingredientLineId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get foodId =>
      $composableBuilder(column: $table.foodId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<NutritionSource, String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<double> get gramWeight => $composableBuilder(
    column: $table.gramWeight,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get userConfirmed => $composableBuilder(
    column: $table.userConfirmed,
    builder: (column) => column,
  );
}

class $$NutritionMatchesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NutritionMatchesTable,
          NutritionMatchRow,
          $$NutritionMatchesTableFilterComposer,
          $$NutritionMatchesTableOrderingComposer,
          $$NutritionMatchesTableAnnotationComposer,
          $$NutritionMatchesTableCreateCompanionBuilder,
          $$NutritionMatchesTableUpdateCompanionBuilder,
          (
            NutritionMatchRow,
            BaseReferences<
              _$AppDatabase,
              $NutritionMatchesTable,
              NutritionMatchRow
            >,
          ),
          NutritionMatchRow,
          PrefetchHooks Function()
        > {
  $$NutritionMatchesTableTableManager(
    _$AppDatabase db,
    $NutritionMatchesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NutritionMatchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NutritionMatchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NutritionMatchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> ingredientLineId = const Value.absent(),
                Value<String> foodId = const Value.absent(),
                Value<NutritionSource> source = const Value.absent(),
                Value<double> gramWeight = const Value.absent(),
                Value<bool> userConfirmed = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NutritionMatchesCompanion(
                id: id,
                ingredientLineId: ingredientLineId,
                foodId: foodId,
                source: source,
                gramWeight: gramWeight,
                userConfirmed: userConfirmed,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String ingredientLineId,
                required String foodId,
                required NutritionSource source,
                required double gramWeight,
                Value<bool> userConfirmed = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NutritionMatchesCompanion.insert(
                id: id,
                ingredientLineId: ingredientLineId,
                foodId: foodId,
                source: source,
                gramWeight: gramWeight,
                userConfirmed: userConfirmed,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$NutritionMatchesTable, NutritionMatchRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $NutritionMatchesTable,
                    NutritionMatchRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$NutritionMatchesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NutritionMatchesTable,
      NutritionMatchRow,
      $$NutritionMatchesTableFilterComposer,
      $$NutritionMatchesTableOrderingComposer,
      $$NutritionMatchesTableAnnotationComposer,
      $$NutritionMatchesTableCreateCompanionBuilder,
      $$NutritionMatchesTableUpdateCompanionBuilder,
      (
        NutritionMatchRow,
        BaseReferences<
          _$AppDatabase,
          $NutritionMatchesTable,
          NutritionMatchRow
        >,
      ),
      NutritionMatchRow,
      PrefetchHooks Function()
    >;
typedef $$RecipeVersionsTableCreateCompanionBuilder =
    RecipeVersionsCompanion Function({
      required String id,
      required String recipeId,
      required DateTime createdAt,
      required String snapshotJson,
      Value<String> summary,
      Value<int> rowid,
    });
typedef $$RecipeVersionsTableUpdateCompanionBuilder =
    RecipeVersionsCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<DateTime> createdAt,
      Value<String> snapshotJson,
      Value<String> summary,
      Value<int> rowid,
    });

class $$RecipeVersionsTableFilterComposer
    extends Composer<_$AppDatabase, $RecipeVersionsTable> {
  $$RecipeVersionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get snapshotJson => $composableBuilder(
    column: $table.snapshotJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RecipeVersionsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipeVersionsTable> {
  $$RecipeVersionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get snapshotJson => $composableBuilder(
    column: $table.snapshotJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecipeVersionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipeVersionsTable> {
  $$RecipeVersionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get snapshotJson => $composableBuilder(
    column: $table.snapshotJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get summary =>
      $composableBuilder(column: $table.summary, builder: (column) => column);
}

class $$RecipeVersionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecipeVersionsTable,
          RecipeVersionRow,
          $$RecipeVersionsTableFilterComposer,
          $$RecipeVersionsTableOrderingComposer,
          $$RecipeVersionsTableAnnotationComposer,
          $$RecipeVersionsTableCreateCompanionBuilder,
          $$RecipeVersionsTableUpdateCompanionBuilder,
          (
            RecipeVersionRow,
            BaseReferences<
              _$AppDatabase,
              $RecipeVersionsTable,
              RecipeVersionRow
            >,
          ),
          RecipeVersionRow,
          PrefetchHooks Function()
        > {
  $$RecipeVersionsTableTableManager(
    _$AppDatabase db,
    $RecipeVersionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipeVersionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipeVersionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipeVersionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> snapshotJson = const Value.absent(),
                Value<String> summary = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipeVersionsCompanion(
                id: id,
                recipeId: recipeId,
                createdAt: createdAt,
                snapshotJson: snapshotJson,
                summary: summary,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                required DateTime createdAt,
                required String snapshotJson,
                Value<String> summary = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipeVersionsCompanion.insert(
                id: id,
                recipeId: recipeId,
                createdAt: createdAt,
                snapshotJson: snapshotJson,
                summary: summary,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RecipeVersionsTable, RecipeVersionRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $RecipeVersionsTable,
                    RecipeVersionRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RecipeVersionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecipeVersionsTable,
      RecipeVersionRow,
      $$RecipeVersionsTableFilterComposer,
      $$RecipeVersionsTableOrderingComposer,
      $$RecipeVersionsTableAnnotationComposer,
      $$RecipeVersionsTableCreateCompanionBuilder,
      $$RecipeVersionsTableUpdateCompanionBuilder,
      (
        RecipeVersionRow,
        BaseReferences<_$AppDatabase, $RecipeVersionsTable, RecipeVersionRow>,
      ),
      RecipeVersionRow,
      PrefetchHooks Function()
    >;
typedef $$ExperimentsTableCreateCompanionBuilder =
    ExperimentsCompanion Function({
      required String id,
      required String recipeId,
      required String baseVersionId,
      required String workingRecipeId,
      required DateTime createdAt,
      Value<String> changeDescription,
      Value<String> notes,
      Value<bool> sharedWithOthers,
      required ExperimentOutcome outcome,
      Value<int> rowid,
    });
typedef $$ExperimentsTableUpdateCompanionBuilder =
    ExperimentsCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<String> baseVersionId,
      Value<String> workingRecipeId,
      Value<DateTime> createdAt,
      Value<String> changeDescription,
      Value<String> notes,
      Value<bool> sharedWithOthers,
      Value<ExperimentOutcome> outcome,
      Value<int> rowid,
    });

class $$ExperimentsTableFilterComposer
    extends Composer<_$AppDatabase, $ExperimentsTable> {
  $$ExperimentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get baseVersionId => $composableBuilder(
    column: $table.baseVersionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get workingRecipeId => $composableBuilder(
    column: $table.workingRecipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get changeDescription => $composableBuilder(
    column: $table.changeDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sharedWithOthers => $composableBuilder(
    column: $table.sharedWithOthers,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<ExperimentOutcome, ExperimentOutcome, String>
  get outcome => $composableBuilder(
    column: $table.outcome,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );
}

class $$ExperimentsTableOrderingComposer
    extends Composer<_$AppDatabase, $ExperimentsTable> {
  $$ExperimentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get baseVersionId => $composableBuilder(
    column: $table.baseVersionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get workingRecipeId => $composableBuilder(
    column: $table.workingRecipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get changeDescription => $composableBuilder(
    column: $table.changeDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sharedWithOthers => $composableBuilder(
    column: $table.sharedWithOthers,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get outcome => $composableBuilder(
    column: $table.outcome,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExperimentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExperimentsTable> {
  $$ExperimentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<String> get baseVersionId => $composableBuilder(
    column: $table.baseVersionId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get workingRecipeId => $composableBuilder(
    column: $table.workingRecipeId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get changeDescription => $composableBuilder(
    column: $table.changeDescription,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<bool> get sharedWithOthers => $composableBuilder(
    column: $table.sharedWithOthers,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<ExperimentOutcome, String> get outcome =>
      $composableBuilder(column: $table.outcome, builder: (column) => column);
}

class $$ExperimentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExperimentsTable,
          ExperimentRow,
          $$ExperimentsTableFilterComposer,
          $$ExperimentsTableOrderingComposer,
          $$ExperimentsTableAnnotationComposer,
          $$ExperimentsTableCreateCompanionBuilder,
          $$ExperimentsTableUpdateCompanionBuilder,
          (
            ExperimentRow,
            BaseReferences<_$AppDatabase, $ExperimentsTable, ExperimentRow>,
          ),
          ExperimentRow,
          PrefetchHooks Function()
        > {
  $$ExperimentsTableTableManager(_$AppDatabase db, $ExperimentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExperimentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExperimentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExperimentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<String> baseVersionId = const Value.absent(),
                Value<String> workingRecipeId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> changeDescription = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<bool> sharedWithOthers = const Value.absent(),
                Value<ExperimentOutcome> outcome = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExperimentsCompanion(
                id: id,
                recipeId: recipeId,
                baseVersionId: baseVersionId,
                workingRecipeId: workingRecipeId,
                createdAt: createdAt,
                changeDescription: changeDescription,
                notes: notes,
                sharedWithOthers: sharedWithOthers,
                outcome: outcome,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                required String baseVersionId,
                required String workingRecipeId,
                required DateTime createdAt,
                Value<String> changeDescription = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<bool> sharedWithOthers = const Value.absent(),
                required ExperimentOutcome outcome,
                Value<int> rowid = const Value.absent(),
              }) => ExperimentsCompanion.insert(
                id: id,
                recipeId: recipeId,
                baseVersionId: baseVersionId,
                workingRecipeId: workingRecipeId,
                createdAt: createdAt,
                changeDescription: changeDescription,
                notes: notes,
                sharedWithOthers: sharedWithOthers,
                outcome: outcome,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExperimentsTable, ExperimentRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $ExperimentsTable,
                    ExperimentRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExperimentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExperimentsTable,
      ExperimentRow,
      $$ExperimentsTableFilterComposer,
      $$ExperimentsTableOrderingComposer,
      $$ExperimentsTableAnnotationComposer,
      $$ExperimentsTableCreateCompanionBuilder,
      $$ExperimentsTableUpdateCompanionBuilder,
      (
        ExperimentRow,
        BaseReferences<_$AppDatabase, $ExperimentsTable, ExperimentRow>,
      ),
      ExperimentRow,
      PrefetchHooks Function()
    >;
typedef $$GroceryListsTableCreateCompanionBuilder =
    GroceryListsCompanion Function({
      required String id,
      required String name,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$GroceryListsTableUpdateCompanionBuilder =
    GroceryListsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$GroceryListsTableFilterComposer
    extends Composer<_$AppDatabase, $GroceryListsTable> {
  $$GroceryListsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GroceryListsTableOrderingComposer
    extends Composer<_$AppDatabase, $GroceryListsTable> {
  $$GroceryListsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GroceryListsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroceryListsTable> {
  $$GroceryListsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$GroceryListsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GroceryListsTable,
          GroceryListRow,
          $$GroceryListsTableFilterComposer,
          $$GroceryListsTableOrderingComposer,
          $$GroceryListsTableAnnotationComposer,
          $$GroceryListsTableCreateCompanionBuilder,
          $$GroceryListsTableUpdateCompanionBuilder,
          (
            GroceryListRow,
            BaseReferences<_$AppDatabase, $GroceryListsTable, GroceryListRow>,
          ),
          GroceryListRow,
          PrefetchHooks Function()
        > {
  $$GroceryListsTableTableManager(_$AppDatabase db, $GroceryListsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroceryListsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroceryListsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroceryListsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroceryListsCompanion(
                id: id,
                name: name,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => GroceryListsCompanion.insert(
                id: id,
                name: name,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GroceryListsTable, GroceryListRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $GroceryListsTable,
                    GroceryListRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GroceryListsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GroceryListsTable,
      GroceryListRow,
      $$GroceryListsTableFilterComposer,
      $$GroceryListsTableOrderingComposer,
      $$GroceryListsTableAnnotationComposer,
      $$GroceryListsTableCreateCompanionBuilder,
      $$GroceryListsTableUpdateCompanionBuilder,
      (
        GroceryListRow,
        BaseReferences<_$AppDatabase, $GroceryListsTable, GroceryListRow>,
      ),
      GroceryListRow,
      PrefetchHooks Function()
    >;
typedef $$GroceryItemsTableCreateCompanionBuilder =
    GroceryItemsCompanion Function({
      required String id,
      required String listId,
      required String name,
      required String sortKey,
      Value<int?> quantityNumerator,
      Value<int?> quantityDenominator,
      Value<Unit?> unit,
      Value<String?> storeSection,
      Value<bool> checked,
      Value<String?> sourceIngredientLineId,
      Value<String?> sourceRecipeId,
      Value<int> rowid,
    });
typedef $$GroceryItemsTableUpdateCompanionBuilder =
    GroceryItemsCompanion Function({
      Value<String> id,
      Value<String> listId,
      Value<String> name,
      Value<String> sortKey,
      Value<int?> quantityNumerator,
      Value<int?> quantityDenominator,
      Value<Unit?> unit,
      Value<String?> storeSection,
      Value<bool> checked,
      Value<String?> sourceIngredientLineId,
      Value<String?> sourceRecipeId,
      Value<int> rowid,
    });

class $$GroceryItemsTableFilterComposer
    extends Composer<_$AppDatabase, $GroceryItemsTable> {
  $$GroceryItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get listId => $composableBuilder(
    column: $table.listId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityNumerator => $composableBuilder(
    column: $table.quantityNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantityDenominator => $composableBuilder(
    column: $table.quantityDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Unit?, Unit, String> get unit =>
      $composableBuilder(
        column: $table.unit,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get storeSection => $composableBuilder(
    column: $table.storeSection,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get checked => $composableBuilder(
    column: $table.checked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceIngredientLineId => $composableBuilder(
    column: $table.sourceIngredientLineId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceRecipeId => $composableBuilder(
    column: $table.sourceRecipeId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GroceryItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $GroceryItemsTable> {
  $$GroceryItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get listId => $composableBuilder(
    column: $table.listId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortKey => $composableBuilder(
    column: $table.sortKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityNumerator => $composableBuilder(
    column: $table.quantityNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantityDenominator => $composableBuilder(
    column: $table.quantityDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get storeSection => $composableBuilder(
    column: $table.storeSection,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get checked => $composableBuilder(
    column: $table.checked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceIngredientLineId => $composableBuilder(
    column: $table.sourceIngredientLineId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceRecipeId => $composableBuilder(
    column: $table.sourceRecipeId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GroceryItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroceryItemsTable> {
  $$GroceryItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get listId =>
      $composableBuilder(column: $table.listId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get sortKey =>
      $composableBuilder(column: $table.sortKey, builder: (column) => column);

  GeneratedColumn<int> get quantityNumerator => $composableBuilder(
    column: $table.quantityNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantityDenominator => $composableBuilder(
    column: $table.quantityDenominator,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<Unit?, String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get storeSection => $composableBuilder(
    column: $table.storeSection,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get checked =>
      $composableBuilder(column: $table.checked, builder: (column) => column);

  GeneratedColumn<String> get sourceIngredientLineId => $composableBuilder(
    column: $table.sourceIngredientLineId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourceRecipeId => $composableBuilder(
    column: $table.sourceRecipeId,
    builder: (column) => column,
  );
}

class $$GroceryItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GroceryItemsTable,
          GroceryItemRow,
          $$GroceryItemsTableFilterComposer,
          $$GroceryItemsTableOrderingComposer,
          $$GroceryItemsTableAnnotationComposer,
          $$GroceryItemsTableCreateCompanionBuilder,
          $$GroceryItemsTableUpdateCompanionBuilder,
          (
            GroceryItemRow,
            BaseReferences<_$AppDatabase, $GroceryItemsTable, GroceryItemRow>,
          ),
          GroceryItemRow,
          PrefetchHooks Function()
        > {
  $$GroceryItemsTableTableManager(_$AppDatabase db, $GroceryItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroceryItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroceryItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroceryItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> listId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> sortKey = const Value.absent(),
                Value<int?> quantityNumerator = const Value.absent(),
                Value<int?> quantityDenominator = const Value.absent(),
                Value<Unit?> unit = const Value.absent(),
                Value<String?> storeSection = const Value.absent(),
                Value<bool> checked = const Value.absent(),
                Value<String?> sourceIngredientLineId = const Value.absent(),
                Value<String?> sourceRecipeId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroceryItemsCompanion(
                id: id,
                listId: listId,
                name: name,
                sortKey: sortKey,
                quantityNumerator: quantityNumerator,
                quantityDenominator: quantityDenominator,
                unit: unit,
                storeSection: storeSection,
                checked: checked,
                sourceIngredientLineId: sourceIngredientLineId,
                sourceRecipeId: sourceRecipeId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String listId,
                required String name,
                required String sortKey,
                Value<int?> quantityNumerator = const Value.absent(),
                Value<int?> quantityDenominator = const Value.absent(),
                Value<Unit?> unit = const Value.absent(),
                Value<String?> storeSection = const Value.absent(),
                Value<bool> checked = const Value.absent(),
                Value<String?> sourceIngredientLineId = const Value.absent(),
                Value<String?> sourceRecipeId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GroceryItemsCompanion.insert(
                id: id,
                listId: listId,
                name: name,
                sortKey: sortKey,
                quantityNumerator: quantityNumerator,
                quantityDenominator: quantityDenominator,
                unit: unit,
                storeSection: storeSection,
                checked: checked,
                sourceIngredientLineId: sourceIngredientLineId,
                sourceRecipeId: sourceRecipeId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$GroceryItemsTable, GroceryItemRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $GroceryItemsTable,
                    GroceryItemRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GroceryItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GroceryItemsTable,
      GroceryItemRow,
      $$GroceryItemsTableFilterComposer,
      $$GroceryItemsTableOrderingComposer,
      $$GroceryItemsTableAnnotationComposer,
      $$GroceryItemsTableCreateCompanionBuilder,
      $$GroceryItemsTableUpdateCompanionBuilder,
      (
        GroceryItemRow,
        BaseReferences<_$AppDatabase, $GroceryItemsTable, GroceryItemRow>,
      ),
      GroceryItemRow,
      PrefetchHooks Function()
    >;
typedef $$MeasuringToolsTableCreateCompanionBuilder =
    MeasuringToolsCompanion Function({
      required String id,
      required int capacityNumerator,
      required int capacityDenominator,
      required Unit unit,
      Value<int> rowid,
    });
typedef $$MeasuringToolsTableUpdateCompanionBuilder =
    MeasuringToolsCompanion Function({
      Value<String> id,
      Value<int> capacityNumerator,
      Value<int> capacityDenominator,
      Value<Unit> unit,
      Value<int> rowid,
    });

class $$MeasuringToolsTableFilterComposer
    extends Composer<_$AppDatabase, $MeasuringToolsTable> {
  $$MeasuringToolsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get capacityNumerator => $composableBuilder(
    column: $table.capacityNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get capacityDenominator => $composableBuilder(
    column: $table.capacityDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Unit, Unit, String> get unit =>
      $composableBuilder(
        column: $table.unit,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );
}

class $$MeasuringToolsTableOrderingComposer
    extends Composer<_$AppDatabase, $MeasuringToolsTable> {
  $$MeasuringToolsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get capacityNumerator => $composableBuilder(
    column: $table.capacityNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get capacityDenominator => $composableBuilder(
    column: $table.capacityDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MeasuringToolsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MeasuringToolsTable> {
  $$MeasuringToolsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get capacityNumerator => $composableBuilder(
    column: $table.capacityNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get capacityDenominator => $composableBuilder(
    column: $table.capacityDenominator,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<Unit, String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);
}

class $$MeasuringToolsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MeasuringToolsTable,
          MeasuringToolRow,
          $$MeasuringToolsTableFilterComposer,
          $$MeasuringToolsTableOrderingComposer,
          $$MeasuringToolsTableAnnotationComposer,
          $$MeasuringToolsTableCreateCompanionBuilder,
          $$MeasuringToolsTableUpdateCompanionBuilder,
          (
            MeasuringToolRow,
            BaseReferences<
              _$AppDatabase,
              $MeasuringToolsTable,
              MeasuringToolRow
            >,
          ),
          MeasuringToolRow,
          PrefetchHooks Function()
        > {
  $$MeasuringToolsTableTableManager(
    _$AppDatabase db,
    $MeasuringToolsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MeasuringToolsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MeasuringToolsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MeasuringToolsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<int> capacityNumerator = const Value.absent(),
                Value<int> capacityDenominator = const Value.absent(),
                Value<Unit> unit = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MeasuringToolsCompanion(
                id: id,
                capacityNumerator: capacityNumerator,
                capacityDenominator: capacityDenominator,
                unit: unit,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required int capacityNumerator,
                required int capacityDenominator,
                required Unit unit,
                Value<int> rowid = const Value.absent(),
              }) => MeasuringToolsCompanion.insert(
                id: id,
                capacityNumerator: capacityNumerator,
                capacityDenominator: capacityDenominator,
                unit: unit,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MeasuringToolsTable, MeasuringToolRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $MeasuringToolsTable,
                    MeasuringToolRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MeasuringToolsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MeasuringToolsTable,
      MeasuringToolRow,
      $$MeasuringToolsTableFilterComposer,
      $$MeasuringToolsTableOrderingComposer,
      $$MeasuringToolsTableAnnotationComposer,
      $$MeasuringToolsTableCreateCompanionBuilder,
      $$MeasuringToolsTableUpdateCompanionBuilder,
      (
        MeasuringToolRow,
        BaseReferences<_$AppDatabase, $MeasuringToolsTable, MeasuringToolRow>,
      ),
      MeasuringToolRow,
      PrefetchHooks Function()
    >;
typedef $$UserRecipePrefsTableTableCreateCompanionBuilder =
    UserRecipePrefsTableCompanion Function({
      required String recipeId,
      required int servingsNumerator,
      required int servingsDenominator,
      required UnitSystem unitSystem,
      Value<int> rowid,
    });
typedef $$UserRecipePrefsTableTableUpdateCompanionBuilder =
    UserRecipePrefsTableCompanion Function({
      Value<String> recipeId,
      Value<int> servingsNumerator,
      Value<int> servingsDenominator,
      Value<UnitSystem> unitSystem,
      Value<int> rowid,
    });

class $$UserRecipePrefsTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserRecipePrefsTableTable> {
  $$UserRecipePrefsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get servingsNumerator => $composableBuilder(
    column: $table.servingsNumerator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get servingsDenominator => $composableBuilder(
    column: $table.servingsDenominator,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<UnitSystem, UnitSystem, String>
  get unitSystem => $composableBuilder(
    column: $table.unitSystem,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );
}

class $$UserRecipePrefsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserRecipePrefsTableTable> {
  $$UserRecipePrefsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get recipeId => $composableBuilder(
    column: $table.recipeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get servingsNumerator => $composableBuilder(
    column: $table.servingsNumerator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get servingsDenominator => $composableBuilder(
    column: $table.servingsDenominator,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unitSystem => $composableBuilder(
    column: $table.unitSystem,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserRecipePrefsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserRecipePrefsTableTable> {
  $$UserRecipePrefsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get recipeId =>
      $composableBuilder(column: $table.recipeId, builder: (column) => column);

  GeneratedColumn<int> get servingsNumerator => $composableBuilder(
    column: $table.servingsNumerator,
    builder: (column) => column,
  );

  GeneratedColumn<int> get servingsDenominator => $composableBuilder(
    column: $table.servingsDenominator,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<UnitSystem, String> get unitSystem =>
      $composableBuilder(
        column: $table.unitSystem,
        builder: (column) => column,
      );
}

class $$UserRecipePrefsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserRecipePrefsTableTable,
          UserRecipePrefsRow,
          $$UserRecipePrefsTableTableFilterComposer,
          $$UserRecipePrefsTableTableOrderingComposer,
          $$UserRecipePrefsTableTableAnnotationComposer,
          $$UserRecipePrefsTableTableCreateCompanionBuilder,
          $$UserRecipePrefsTableTableUpdateCompanionBuilder,
          (
            UserRecipePrefsRow,
            BaseReferences<
              _$AppDatabase,
              $UserRecipePrefsTableTable,
              UserRecipePrefsRow
            >,
          ),
          UserRecipePrefsRow,
          PrefetchHooks Function()
        > {
  $$UserRecipePrefsTableTableTableManager(
    _$AppDatabase db,
    $UserRecipePrefsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserRecipePrefsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserRecipePrefsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$UserRecipePrefsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> recipeId = const Value.absent(),
                Value<int> servingsNumerator = const Value.absent(),
                Value<int> servingsDenominator = const Value.absent(),
                Value<UnitSystem> unitSystem = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserRecipePrefsTableCompanion(
                recipeId: recipeId,
                servingsNumerator: servingsNumerator,
                servingsDenominator: servingsDenominator,
                unitSystem: unitSystem,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String recipeId,
                required int servingsNumerator,
                required int servingsDenominator,
                required UnitSystem unitSystem,
                Value<int> rowid = const Value.absent(),
              }) => UserRecipePrefsTableCompanion.insert(
                recipeId: recipeId,
                servingsNumerator: servingsNumerator,
                servingsDenominator: servingsDenominator,
                unitSystem: unitSystem,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserRecipePrefsTableTable, UserRecipePrefsRow>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $UserRecipePrefsTableTable,
                    UserRecipePrefsRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserRecipePrefsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserRecipePrefsTableTable,
      UserRecipePrefsRow,
      $$UserRecipePrefsTableTableFilterComposer,
      $$UserRecipePrefsTableTableOrderingComposer,
      $$UserRecipePrefsTableTableAnnotationComposer,
      $$UserRecipePrefsTableTableCreateCompanionBuilder,
      $$UserRecipePrefsTableTableUpdateCompanionBuilder,
      (
        UserRecipePrefsRow,
        BaseReferences<
          _$AppDatabase,
          $UserRecipePrefsTableTable,
          UserRecipePrefsRow
        >,
      ),
      UserRecipePrefsRow,
      PrefetchHooks Function()
    >;
typedef $$ChangeLogTableCreateCompanionBuilder = ChangeLogCompanion Function({
  required String id,
  required String entity,
  required String entityId,
  required String field,
  required String value,
  required String hlc,
  required String deviceId,
  required String spaceId,
  Value<int> rowid,
});
typedef $$ChangeLogTableUpdateCompanionBuilder = ChangeLogCompanion Function({
  Value<String> id,
  Value<String> entity,
  Value<String> entityId,
  Value<String> field,
  Value<String> value,
  Value<String> hlc,
  Value<String> deviceId,
  Value<String> spaceId,
  Value<int> rowid,
});

class $$ChangeLogTableFilterComposer
    extends Composer<_$AppDatabase, $ChangeLogTable> {
  $$ChangeLogTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entity => $composableBuilder(
    column: $table.entity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get field => $composableBuilder(
    column: $table.field,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get hlc => $composableBuilder(
    column: $table.hlc,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get spaceId => $composableBuilder(
    column: $table.spaceId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ChangeLogTableOrderingComposer
    extends Composer<_$AppDatabase, $ChangeLogTable> {
  $$ChangeLogTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entity => $composableBuilder(
    column: $table.entity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get field => $composableBuilder(
    column: $table.field,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hlc => $composableBuilder(
    column: $table.hlc,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get spaceId => $composableBuilder(
    column: $table.spaceId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ChangeLogTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChangeLogTable> {
  $$ChangeLogTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get entity =>
      $composableBuilder(column: $table.entity, builder: (column) => column);

  GeneratedColumn<String> get entityId =>
      $composableBuilder(column: $table.entityId, builder: (column) => column);

  GeneratedColumn<String> get field =>
      $composableBuilder(column: $table.field, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get hlc =>
      $composableBuilder(column: $table.hlc, builder: (column) => column);

  GeneratedColumn<String> get deviceId =>
      $composableBuilder(column: $table.deviceId, builder: (column) => column);

  GeneratedColumn<String> get spaceId =>
      $composableBuilder(column: $table.spaceId, builder: (column) => column);
}

class $$ChangeLogTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ChangeLogTable,
          ChangeRow,
          $$ChangeLogTableFilterComposer,
          $$ChangeLogTableOrderingComposer,
          $$ChangeLogTableAnnotationComposer,
          $$ChangeLogTableCreateCompanionBuilder,
          $$ChangeLogTableUpdateCompanionBuilder,
          (
            ChangeRow,
            BaseReferences<_$AppDatabase, $ChangeLogTable, ChangeRow>,
          ),
          ChangeRow,
          PrefetchHooks Function()
        > {
  $$ChangeLogTableTableManager(_$AppDatabase db, $ChangeLogTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChangeLogTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChangeLogTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChangeLogTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> entity = const Value.absent(),
                Value<String> entityId = const Value.absent(),
                Value<String> field = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<String> hlc = const Value.absent(),
                Value<String> deviceId = const Value.absent(),
                Value<String> spaceId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ChangeLogCompanion(
                id: id,
                entity: entity,
                entityId: entityId,
                field: field,
                value: value,
                hlc: hlc,
                deviceId: deviceId,
                spaceId: spaceId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String entity,
                required String entityId,
                required String field,
                required String value,
                required String hlc,
                required String deviceId,
                required String spaceId,
                Value<int> rowid = const Value.absent(),
              }) => ChangeLogCompanion.insert(
                id: id,
                entity: entity,
                entityId: entityId,
                field: field,
                value: value,
                hlc: hlc,
                deviceId: deviceId,
                spaceId: spaceId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ChangeLogTable, ChangeRow>(table),
                  BaseReferences<_$AppDatabase, $ChangeLogTable, ChangeRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ChangeLogTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ChangeLogTable,
      ChangeRow,
      $$ChangeLogTableFilterComposer,
      $$ChangeLogTableOrderingComposer,
      $$ChangeLogTableAnnotationComposer,
      $$ChangeLogTableCreateCompanionBuilder,
      $$ChangeLogTableUpdateCompanionBuilder,
      (ChangeRow, BaseReferences<_$AppDatabase, $ChangeLogTable, ChangeRow>),
      ChangeRow,
      PrefetchHooks Function()
    >;
typedef $$SyncStateTableCreateCompanionBuilder = SyncStateCompanion Function({
  required String transportKey,
  Value<String?> pullCursor,
  Value<String?> pushedThroughHlc,
  Value<DateTime?> lastSyncedAt,
  Value<int> rowid,
});
typedef $$SyncStateTableUpdateCompanionBuilder = SyncStateCompanion Function({
  Value<String> transportKey,
  Value<String?> pullCursor,
  Value<String?> pushedThroughHlc,
  Value<DateTime?> lastSyncedAt,
  Value<int> rowid,
});

class $$SyncStateTableFilterComposer
    extends Composer<_$AppDatabase, $SyncStateTable> {
  $$SyncStateTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get transportKey => $composableBuilder(
    column: $table.transportKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pullCursor => $composableBuilder(
    column: $table.pullCursor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pushedThroughHlc => $composableBuilder(
    column: $table.pushedThroughHlc,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncStateTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncStateTable> {
  $$SyncStateTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get transportKey => $composableBuilder(
    column: $table.transportKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pullCursor => $composableBuilder(
    column: $table.pullCursor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pushedThroughHlc => $composableBuilder(
    column: $table.pushedThroughHlc,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncStateTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncStateTable> {
  $$SyncStateTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get transportKey => $composableBuilder(
    column: $table.transportKey,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pullCursor => $composableBuilder(
    column: $table.pullCursor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pushedThroughHlc => $composableBuilder(
    column: $table.pushedThroughHlc,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => column,
  );
}

class $$SyncStateTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncStateTable,
          SyncStateRow,
          $$SyncStateTableFilterComposer,
          $$SyncStateTableOrderingComposer,
          $$SyncStateTableAnnotationComposer,
          $$SyncStateTableCreateCompanionBuilder,
          $$SyncStateTableUpdateCompanionBuilder,
          (
            SyncStateRow,
            BaseReferences<_$AppDatabase, $SyncStateTable, SyncStateRow>,
          ),
          SyncStateRow,
          PrefetchHooks Function()
        > {
  $$SyncStateTableTableManager(_$AppDatabase db, $SyncStateTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncStateTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncStateTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncStateTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> transportKey = const Value.absent(),
                Value<String?> pullCursor = const Value.absent(),
                Value<String?> pushedThroughHlc = const Value.absent(),
                Value<DateTime?> lastSyncedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncStateCompanion(
                transportKey: transportKey,
                pullCursor: pullCursor,
                pushedThroughHlc: pushedThroughHlc,
                lastSyncedAt: lastSyncedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String transportKey,
                Value<String?> pullCursor = const Value.absent(),
                Value<String?> pushedThroughHlc = const Value.absent(),
                Value<DateTime?> lastSyncedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncStateCompanion.insert(
                transportKey: transportKey,
                pullCursor: pullCursor,
                pushedThroughHlc: pushedThroughHlc,
                lastSyncedAt: lastSyncedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SyncStateTable, SyncStateRow>(table),
                  BaseReferences<_$AppDatabase, $SyncStateTable, SyncStateRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncStateTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncStateTable,
      SyncStateRow,
      $$SyncStateTableFilterComposer,
      $$SyncStateTableOrderingComposer,
      $$SyncStateTableAnnotationComposer,
      $$SyncStateTableCreateCompanionBuilder,
      $$SyncStateTableUpdateCompanionBuilder,
      (
        SyncStateRow,
        BaseReferences<_$AppDatabase, $SyncStateTable, SyncStateRow>,
      ),
      SyncStateRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$RecipesTableTableManager get recipes =>
      $$RecipesTableTableManager(_db, _db.recipes);
  $$IngredientSectionsTableTableManager get ingredientSections =>
      $$IngredientSectionsTableTableManager(_db, _db.ingredientSections);
  $$IngredientLinesTableTableManager get ingredientLines =>
      $$IngredientLinesTableTableManager(_db, _db.ingredientLines);
  $$StepSectionsTableTableManager get stepSections =>
      $$StepSectionsTableTableManager(_db, _db.stepSections);
  $$RecipeStepsTableTableManager get recipeSteps =>
      $$RecipeStepsTableTableManager(_db, _db.recipeSteps);
  $$FoldersTableTableManager get folders =>
      $$FoldersTableTableManager(_db, _db.folders);
  $$FolderEntriesTableTableManager get folderEntries =>
      $$FolderEntriesTableTableManager(_db, _db.folderEntries);
  $$FoodsTableTableManager get foods =>
      $$FoodsTableTableManager(_db, _db.foods);
  $$FoodNutrientsTableTableManager get foodNutrients =>
      $$FoodNutrientsTableTableManager(_db, _db.foodNutrients);
  $$FoodPortionsTableTableManager get foodPortions =>
      $$FoodPortionsTableTableManager(_db, _db.foodPortions);
  $$NutritionMatchesTableTableManager get nutritionMatches =>
      $$NutritionMatchesTableTableManager(_db, _db.nutritionMatches);
  $$RecipeVersionsTableTableManager get recipeVersions =>
      $$RecipeVersionsTableTableManager(_db, _db.recipeVersions);
  $$ExperimentsTableTableManager get experiments =>
      $$ExperimentsTableTableManager(_db, _db.experiments);
  $$GroceryListsTableTableManager get groceryLists =>
      $$GroceryListsTableTableManager(_db, _db.groceryLists);
  $$GroceryItemsTableTableManager get groceryItems =>
      $$GroceryItemsTableTableManager(_db, _db.groceryItems);
  $$MeasuringToolsTableTableManager get measuringTools =>
      $$MeasuringToolsTableTableManager(_db, _db.measuringTools);
  $$UserRecipePrefsTableTableTableManager get userRecipePrefsTable =>
      $$UserRecipePrefsTableTableTableManager(_db, _db.userRecipePrefsTable);
  $$ChangeLogTableTableManager get changeLog =>
      $$ChangeLogTableTableManager(_db, _db.changeLog);
  $$SyncStateTableTableManager get syncState =>
      $$SyncStateTableTableManager(_db, _db.syncState);
}
