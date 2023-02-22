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

@DriftDatabase(tables: [Zone, Monster, Resource])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ZoneData>> getAllZones() => select(zone).get();
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
