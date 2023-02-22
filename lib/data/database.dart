import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' as w;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Zone extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Monster extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Resource extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class MonsterZone extends Table {
  IntColumn get monsterId => integer()();
  IntColumn get zoneId => integer()();
}

@DriftDatabase(tables: [Zone, Monster, Resource, MonsterZone])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ZoneData>> getAllZones() => select(zone).get();

  //TODO:Finish the query with the correct where clause
  Future<List<MonsterData>> getMonstersFromZone(zoneName) async {
    final query = select(monster).join([
      leftOuterJoin(monsterZone, monsterZone.monsterId.equalsExp(monster.id)),
      leftOuterJoin(zone, zone.id.equalsExp(monsterZone.zoneId)),
    ]);
    return query.map((row) => row.readTable(monster)).get();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final databaseFolder = await getApplicationDocumentsDirectory();
    final databaseFile = File(join(databaseFolder.path, "app.db"));

    if (!await databaseFile.exists()) {
      w.WidgetsFlutterBinding.ensureInitialized();
      final databaseData = await rootBundle.load("assets/test.db");
      await databaseFile.writeAsBytes(databaseData.buffer
          .asUint8List(databaseData.offsetInBytes, databaseData.lengthInBytes));

      print("Loaded test.db");
    }

    return NativeDatabase.createInBackground(databaseFile);
  });
}
