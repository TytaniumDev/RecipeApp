import 'package:data/src/app_database.dart';
import 'package:data/src/tables/folder_tables.dart';
import 'package:drift/drift.dart';

part 'folder_dao.g.dart';

/// Queries for folders and their recipes.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [Folders, FolderEntries])
class FolderDao extends DatabaseAccessor<AppDatabase> with _$FolderDaoMixin {
  new(super.attachedDatabase);
}
