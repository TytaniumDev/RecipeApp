import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

// Tables have no foreign key constraints on purpose: sync can apply a child
// row before its parent arrives (ENGINEERING.md §8). Repositories keep the
// references consistent and delete children explicitly.

/// Recipes. See `Recipe` in `packages/domain`.
@DataClassName('RecipeRow')
class Recipes() extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  IntColumn get servingsNumerator => integer()();
  IntColumn get servingsDenominator => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get photoRef => text().nullable()();
  IntColumn get prepTimeSeconds => integer().nullable()();
  IntColumn get cookTimeSeconds => integer().nullable()();
  IntColumn get totalTimeSeconds => integer().nullable()();
  TextColumn get notes => text().withDefault(const Constant(''))();
  TextColumn get sourceUrl => text().nullable()();
  TextColumn get sourceName => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Named groups of ingredient lines. See `IngredientSection`.
@DataClassName('IngredientSectionRow')
@TableIndex(name: 'ingredient_sections_recipe', columns: {#recipeId})
class IngredientSections() extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text()();
  TextColumn get name => text()();
  TextColumn get sortKey => text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Ingredient lines with their parsed parts. See `IngredientLine`.
@DataClassName('IngredientLineRow')
@TableIndex(name: 'ingredient_lines_recipe', columns: {#recipeId})
class IngredientLines() extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text()();
  TextColumn get sectionId => text().nullable()();
  TextColumn get rawText => text()();
  TextColumn get sortKey => text()();
  IntColumn get quantityNumerator => integer().nullable()();
  IntColumn get quantityDenominator => integer().nullable()();
  IntColumn get quantityMaxNumerator => integer().nullable()();
  IntColumn get quantityMaxDenominator => integer().nullable()();
  TextColumn get unit => textEnum<Unit>().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get preparation => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Named, reorderable groups of steps. See `StepSection`.
@DataClassName('StepSectionRow')
@TableIndex(name: 'step_sections_recipe', columns: {#recipeId})
class StepSections() extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text()();
  TextColumn get name => text()();
  TextColumn get sortKey => text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Recipe steps. See `RecipeStep`.
@DataClassName('RecipeStepRow')
@TableIndex(name: 'recipe_steps_recipe', columns: {#recipeId})
class RecipeSteps() extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text()();
  TextColumn get sectionId => text().nullable()();

  /// The step text. Named `body` because `text` is a `Table` method.
  TextColumn get body => text()();
  TextColumn get sortKey => text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
