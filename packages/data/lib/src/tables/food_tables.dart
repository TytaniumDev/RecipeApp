import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

// Cached online foods (USDA branded, Open Food Facts). The bundled USDA
// generic foods ship as a separate read-only SQLite file attached at runtime
// with the same table shapes (ENGINEERING.md §7).

/// Foods. See `Food` in `packages/domain`.
@DataClassName('FoodRow')
@TableIndex(
  name: 'foods_source_external',
  columns: {#source, #externalId},
  unique: true,
)
class Foods extends Table {
  TextColumn get id => text()();
  TextColumn get source => textEnum<NutritionSource>()();
  TextColumn get externalId => text()();
  TextColumn get name => text()();
  TextColumn get brand => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Nutrient amounts per 100 g. See `FoodNutrient`.
@DataClassName('FoodNutrientRow')
class FoodNutrients extends Table {
  TextColumn get foodId => text()();
  TextColumn get nutrientCode => text()();
  RealColumn get amountPer100g => real()();

  @override
  Set<Column<Object>> get primaryKey => {foodId, nutrientCode};
}

/// Household portions with gram weights. See `FoodPortion`.
@DataClassName('FoodPortionRow')
@TableIndex(name: 'food_portions_food', columns: {#foodId})
class FoodPortions extends Table {
  TextColumn get id => text()();
  TextColumn get foodId => text()();
  IntColumn get amountNumerator => integer()();
  IntColumn get amountDenominator => integer()();
  RealColumn get gramWeight => real()();
  TextColumn get unit => textEnum<Unit>().nullable()();
  TextColumn get description => text().withDefault(const Constant(''))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Ingredient line to food matches. See `NutritionMatch`.
@DataClassName('NutritionMatchRow')
@TableIndex(
  name: 'nutrition_matches_line',
  columns: {#ingredientLineId},
  unique: true,
)
class NutritionMatches extends Table {
  TextColumn get id => text()();
  TextColumn get ingredientLineId => text()();
  TextColumn get foodId => text()();
  TextColumn get source => textEnum<NutritionSource>()();
  RealColumn get gramWeight => real()();
  BoolColumn get userConfirmed =>
      boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
