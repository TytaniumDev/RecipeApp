import 'package:drift/drift.dart';

/// Folders. See `Folder` in `packages/domain`.
@DataClassName('FolderRow')
class Folders extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Which recipes are in which folders. See `FolderEntry`.
@DataClassName('FolderEntryRow')
@TableIndex(name: 'folder_entries_recipe', columns: {#recipeId})
class FolderEntries extends Table {
  TextColumn get folderId => text()();
  TextColumn get recipeId => text()();
  DateTimeColumn get addedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {folderId, recipeId};
}
