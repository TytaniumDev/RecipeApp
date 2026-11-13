import 'package:data/src/app_database.dart';
import 'package:data/src/tables/history_tables.dart';
import 'package:drift/drift.dart';

part 'history_dao.g.dart';

/// Queries for recipe versions and experiments.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [RecipeVersions, Experiments])
class HistoryDao(super.attachedDatabase)
    extends DatabaseAccessor<AppDatabase>
    with _$HistoryDaoMixin;
