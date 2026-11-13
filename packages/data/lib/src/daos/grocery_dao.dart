import 'package:data/src/app_database.dart';
import 'package:data/src/tables/grocery_tables.dart';
import 'package:drift/drift.dart';

part 'grocery_dao.g.dart';

/// Queries for grocery lists and items.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [GroceryLists, GroceryItems])
class GroceryDao extends DatabaseAccessor<AppDatabase> with _$GroceryDaoMixin {
  new(super.attachedDatabase);
}
