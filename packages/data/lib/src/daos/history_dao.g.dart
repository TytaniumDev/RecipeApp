// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_dao.dart';

// ignore_for_file: type=lint
mixin _$HistoryDaoMixin on DatabaseAccessor<AppDatabase> {
  $RecipeVersionsTable get recipeVersions => attachedDatabase.recipeVersions;
  $ExperimentsTable get experiments => attachedDatabase.experiments;
  HistoryDaoManager get managers => HistoryDaoManager(this);
}

class HistoryDaoManager {
  final _$HistoryDaoMixin _db;
  HistoryDaoManager(this._db);
  $$RecipeVersionsTableTableManager get recipeVersions =>
      $$RecipeVersionsTableTableManager(
        _db.attachedDatabase,
        _db.recipeVersions,
      );
  $$ExperimentsTableTableManager get experiments =>
      $$ExperimentsTableTableManager(_db.attachedDatabase, _db.experiments);
}
