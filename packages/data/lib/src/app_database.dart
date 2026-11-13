import 'package:data/src/daos/folder_dao.dart';
import 'package:data/src/daos/food_dao.dart';
import 'package:data/src/daos/grocery_dao.dart';
import 'package:data/src/daos/history_dao.dart';
import 'package:data/src/daos/measuring_tool_dao.dart';
import 'package:data/src/daos/recipe_dao.dart';
import 'package:data/src/daos/sync_dao.dart';
import 'package:data/src/daos/user_recipe_prefs_dao.dart';
import 'package:data/src/tables/folder_tables.dart';
import 'package:data/src/tables/food_tables.dart';
import 'package:data/src/tables/grocery_tables.dart';
import 'package:data/src/tables/history_tables.dart';
import 'package:data/src/tables/measuring_tool_tables.dart';
import 'package:data/src/tables/recipe_tables.dart';
import 'package:data/src/tables/sync_tables.dart';
import 'package:data/src/tables/user_recipe_prefs_tables.dart';
import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

part 'app_database.g.dart';

/// The local database, the app's single source of truth (ENGINEERING.md §7).
///
/// The app opens the platform connection (native SQLite, or WebAssembly on
/// web) and passes it in, so this package stays pure Dart and tests can use
/// an in-memory database.
@DriftDatabase(
  tables: [
    Recipes,
    IngredientSections,
    IngredientLines,
    StepSections,
    RecipeSteps,
    Folders,
    FolderEntries,
    Foods,
    FoodNutrients,
    FoodPortions,
    NutritionMatches,
    RecipeVersions,
    Experiments,
    GroceryLists,
    GroceryItems,
    MeasuringTools,
    UserRecipePrefsTable,
    ChangeLog,
    SyncState,
  ],
  daos: [
    RecipeDao,
    FolderDao,
    FoodDao,
    HistoryDao,
    GroceryDao,
    MeasuringToolDao,
    UserRecipePrefsDao,
    SyncDao,
  ],
)
class AppDatabase(super.e) extends _$AppDatabase {
  /// Bump this with every schema change, add the step to [migration], and
  /// run `dart run drift_dev make-migrations` to snapshot the new schema.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onCreate: (m) => m.createAll());
}
