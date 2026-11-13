import 'package:data/src/app_database.dart';
import 'package:data/src/tables/user_recipe_prefs_tables.dart';
import 'package:drift/drift.dart';

part 'user_recipe_prefs_dao.g.dart';

/// Queries for per-user recipe settings.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [UserRecipePrefsTable])
class UserRecipePrefsDao extends DatabaseAccessor<AppDatabase>
    with _$UserRecipePrefsDaoMixin {
  new(super.attachedDatabase);
}
