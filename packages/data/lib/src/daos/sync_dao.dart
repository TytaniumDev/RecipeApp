import 'package:data/src/app_database.dart';
import 'package:data/src/tables/sync_tables.dart';
import 'package:drift/drift.dart';

part 'sync_dao.g.dart';

/// Queries for the change log and sync state.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [ChangeLog, SyncState])
class SyncDao extends DatabaseAccessor<AppDatabase> with _$SyncDaoMixin {
  new(super.attachedDatabase);
}
