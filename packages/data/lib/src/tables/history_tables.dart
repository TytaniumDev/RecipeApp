import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

/// Recipe snapshots. See `RecipeVersion` in `packages/domain`.
@DataClassName('RecipeVersionRow')
@TableIndex(name: 'recipe_versions_recipe', columns: {#recipeId})
class RecipeVersions extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get snapshotJson => text()();
  TextColumn get summary => text().withDefault(const Constant(''))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Experiments. See `Experiment`.
@DataClassName('ExperimentRow')
@TableIndex(name: 'experiments_recipe', columns: {#recipeId})
class Experiments extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text()();
  TextColumn get baseVersionId => text()();
  TextColumn get workingRecipeId => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get changeDescription => text().withDefault(const Constant(''))();
  TextColumn get notes => text().withDefault(const Constant(''))();
  BoolColumn get sharedWithOthers =>
      boolean().withDefault(const Constant(false))();
  TextColumn get outcome => textEnum<ExperimentOutcome>()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
