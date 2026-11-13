import 'package:drift/drift.dart';

/// Change records written in the same transaction as every local write,
/// and applied from other devices (ENGINEERING.md §8.1).
@DataClassName('ChangeRow')
@TableIndex(name: 'change_log_field', columns: {#entity, #entityId, #field})
@TableIndex(name: 'change_log_hlc', columns: {#hlc})
class ChangeLog extends Table {
  TextColumn get id => text()();

  /// Entity kind, such as "recipe" or "ingredient_line".
  TextColumn get entity => text()();
  TextColumn get entityId => text()();

  /// Field name, or "_deleted" for a tombstone.
  TextColumn get field => text()();

  /// The new value, JSON encoded.
  TextColumn get value => text()();

  /// Hybrid logical clock timestamp, encoded so that string order is
  /// time order.
  TextColumn get hlc => text()();
  TextColumn get deviceId => text()();

  /// The library or share this change belongs to.
  TextColumn get spaceId => text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// How far each transport has pushed and pulled (ENGINEERING.md §8.2).
@DataClassName('SyncStateRow')
class SyncState extends Table {
  /// Which transport and space, such as `drive` or `firestore:<spaceId>`.
  TextColumn get transportKey => text()();

  /// Opaque cursor of the last pulled change.
  TextColumn get pullCursor => text().nullable()();

  /// HLC of the last local change pushed.
  TextColumn get pushedThroughHlc => text().nullable()();
  DateTimeColumn get lastSyncedAt => dateTime().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {transportKey};
}
