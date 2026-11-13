import 'package:data/src/app_database.dart';
import 'package:data/src/tables/measuring_tool_tables.dart';
import 'package:drift/drift.dart';

part 'measuring_tool_dao.g.dart';

/// Queries for the user's measuring tools.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [MeasuringTools])
class MeasuringToolDao extends DatabaseAccessor<AppDatabase>
    with _$MeasuringToolDaoMixin {
  new(super.attachedDatabase);
}
