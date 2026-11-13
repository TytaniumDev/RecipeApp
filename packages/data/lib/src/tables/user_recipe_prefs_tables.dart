import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

/// Per-user recipe settings. See `UserRecipePrefs` in `packages/domain`.
@DataClassName('UserRecipePrefsRow')
class UserRecipePrefsTable extends Table {
  @override
  String get tableName => 'user_recipe_prefs';

  TextColumn get recipeId => text()();
  IntColumn get servingsNumerator => integer()();
  IntColumn get servingsDenominator => integer()();
  TextColumn get unitSystem => textEnum<UnitSystem>()();

  @override
  Set<Column<Object>> get primaryKey => {recipeId};
}
