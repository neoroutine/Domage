// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ZoneTable extends Zone with TableInfo<$ZoneTable, ZoneData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ZoneTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'zone';
  @override
  String get actualTableName => 'zone';
  @override
  VerificationContext validateIntegrity(Insertable<ZoneData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ZoneData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ZoneData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $ZoneTable createAlias(String alias) {
    return $ZoneTable(attachedDatabase, alias);
  }
}

class ZoneData extends DataClass implements Insertable<ZoneData> {
  final int id;
  final String? name;
  const ZoneData({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  ZoneCompanion toCompanion(bool nullToAbsent) {
    return ZoneCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory ZoneData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ZoneData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  ZoneData copyWith({int? id, Value<String?> name = const Value.absent()}) =>
      ZoneData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  @override
  String toString() {
    return (StringBuffer('ZoneData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ZoneData && other.id == this.id && other.name == this.name);
}

class ZoneCompanion extends UpdateCompanion<ZoneData> {
  final Value<int> id;
  final Value<String?> name;
  const ZoneCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ZoneCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<ZoneData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ZoneCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return ZoneCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ZoneCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MonsterTable extends Monster with TableInfo<$MonsterTable, MonsterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MonsterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'monster';
  @override
  String get actualTableName => 'monster';
  @override
  VerificationContext validateIntegrity(Insertable<MonsterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MonsterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MonsterData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $MonsterTable createAlias(String alias) {
    return $MonsterTable(attachedDatabase, alias);
  }
}

class MonsterData extends DataClass implements Insertable<MonsterData> {
  final int id;
  final String? name;
  const MonsterData({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  MonsterCompanion toCompanion(bool nullToAbsent) {
    return MonsterCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory MonsterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MonsterData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  MonsterData copyWith({int? id, Value<String?> name = const Value.absent()}) =>
      MonsterData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  @override
  String toString() {
    return (StringBuffer('MonsterData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MonsterData && other.id == this.id && other.name == this.name);
}

class MonsterCompanion extends UpdateCompanion<MonsterData> {
  final Value<int> id;
  final Value<String?> name;
  const MonsterCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  MonsterCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<MonsterData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  MonsterCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return MonsterCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MonsterCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ResourceTable extends Resource
    with TableInfo<$ResourceTable, ResourceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResourceTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'resource';
  @override
  String get actualTableName => 'resource';
  @override
  VerificationContext validateIntegrity(Insertable<ResourceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResourceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResourceData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $ResourceTable createAlias(String alias) {
    return $ResourceTable(attachedDatabase, alias);
  }
}

class ResourceData extends DataClass implements Insertable<ResourceData> {
  final int id;
  final String? name;
  const ResourceData({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  ResourceCompanion toCompanion(bool nullToAbsent) {
    return ResourceCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory ResourceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResourceData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  ResourceData copyWith(
          {int? id, Value<String?> name = const Value.absent()}) =>
      ResourceData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  @override
  String toString() {
    return (StringBuffer('ResourceData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResourceData && other.id == this.id && other.name == this.name);
}

class ResourceCompanion extends UpdateCompanion<ResourceData> {
  final Value<int> id;
  final Value<String?> name;
  const ResourceCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ResourceCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<ResourceData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ResourceCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return ResourceCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourceCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MonsterZoneTable extends MonsterZone
    with TableInfo<$MonsterZoneTable, MonsterZoneData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MonsterZoneTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _monsterIdMeta =
      const VerificationMeta('monsterId');
  @override
  late final GeneratedColumn<int> monsterId = GeneratedColumn<int>(
      'monster_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _zoneIdMeta = const VerificationMeta('zoneId');
  @override
  late final GeneratedColumn<int> zoneId = GeneratedColumn<int>(
      'zone_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [monsterId, zoneId];
  @override
  String get aliasedName => _alias ?? 'monster_zone';
  @override
  String get actualTableName => 'monster_zone';
  @override
  VerificationContext validateIntegrity(Insertable<MonsterZoneData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('monster_id')) {
      context.handle(_monsterIdMeta,
          monsterId.isAcceptableOrUnknown(data['monster_id']!, _monsterIdMeta));
    } else if (isInserting) {
      context.missing(_monsterIdMeta);
    }
    if (data.containsKey('zone_id')) {
      context.handle(_zoneIdMeta,
          zoneId.isAcceptableOrUnknown(data['zone_id']!, _zoneIdMeta));
    } else if (isInserting) {
      context.missing(_zoneIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MonsterZoneData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MonsterZoneData(
      monsterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}monster_id'])!,
      zoneId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}zone_id'])!,
    );
  }

  @override
  $MonsterZoneTable createAlias(String alias) {
    return $MonsterZoneTable(attachedDatabase, alias);
  }
}

class MonsterZoneData extends DataClass implements Insertable<MonsterZoneData> {
  final int monsterId;
  final int zoneId;
  const MonsterZoneData({required this.monsterId, required this.zoneId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['monster_id'] = Variable<int>(monsterId);
    map['zone_id'] = Variable<int>(zoneId);
    return map;
  }

  MonsterZoneCompanion toCompanion(bool nullToAbsent) {
    return MonsterZoneCompanion(
      monsterId: Value(monsterId),
      zoneId: Value(zoneId),
    );
  }

  factory MonsterZoneData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MonsterZoneData(
      monsterId: serializer.fromJson<int>(json['monsterId']),
      zoneId: serializer.fromJson<int>(json['zoneId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'monsterId': serializer.toJson<int>(monsterId),
      'zoneId': serializer.toJson<int>(zoneId),
    };
  }

  MonsterZoneData copyWith({int? monsterId, int? zoneId}) => MonsterZoneData(
        monsterId: monsterId ?? this.monsterId,
        zoneId: zoneId ?? this.zoneId,
      );
  @override
  String toString() {
    return (StringBuffer('MonsterZoneData(')
          ..write('monsterId: $monsterId, ')
          ..write('zoneId: $zoneId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(monsterId, zoneId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MonsterZoneData &&
          other.monsterId == this.monsterId &&
          other.zoneId == this.zoneId);
}

class MonsterZoneCompanion extends UpdateCompanion<MonsterZoneData> {
  final Value<int> monsterId;
  final Value<int> zoneId;
  const MonsterZoneCompanion({
    this.monsterId = const Value.absent(),
    this.zoneId = const Value.absent(),
  });
  MonsterZoneCompanion.insert({
    required int monsterId,
    required int zoneId,
  })  : monsterId = Value(monsterId),
        zoneId = Value(zoneId);
  static Insertable<MonsterZoneData> custom({
    Expression<int>? monsterId,
    Expression<int>? zoneId,
  }) {
    return RawValuesInsertable({
      if (monsterId != null) 'monster_id': monsterId,
      if (zoneId != null) 'zone_id': zoneId,
    });
  }

  MonsterZoneCompanion copyWith({Value<int>? monsterId, Value<int>? zoneId}) {
    return MonsterZoneCompanion(
      monsterId: monsterId ?? this.monsterId,
      zoneId: zoneId ?? this.zoneId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (monsterId.present) {
      map['monster_id'] = Variable<int>(monsterId.value);
    }
    if (zoneId.present) {
      map['zone_id'] = Variable<int>(zoneId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MonsterZoneCompanion(')
          ..write('monsterId: $monsterId, ')
          ..write('zoneId: $zoneId')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $ZoneTable zone = $ZoneTable(this);
  late final $MonsterTable monster = $MonsterTable(this);
  late final $ResourceTable resource = $ResourceTable(this);
  late final $MonsterZoneTable monsterZone = $MonsterZoneTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [zone, monster, resource, monsterZone];
}
