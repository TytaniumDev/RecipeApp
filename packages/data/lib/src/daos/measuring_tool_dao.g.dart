// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measuring_tool_dao.dart';

// ignore_for_file: type=lint
mixin _$MeasuringToolDaoMixin on DatabaseAccessor<AppDatabase> {
  $MeasuringToolsTable get measuringTools => attachedDatabase.measuringTools;
  MeasuringToolDaoManager get managers => MeasuringToolDaoManager(this);
}

class MeasuringToolDaoManager {
  final _$MeasuringToolDaoMixin _db;
  MeasuringToolDaoManager(this._db);
  $$MeasuringToolsTableTableManager get measuringTools =>
      $$MeasuringToolsTableTableManager(
        _db.attachedDatabase,
        _db.measuringTools,
      );
}
