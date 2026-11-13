import 'package:data/src/app_database.dart';
import 'package:data/src/tables/food_tables.dart';
import 'package:drift/drift.dart';

part 'food_dao.g.dart';

/// Queries for cached foods and nutrition matches.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(tables: [Foods, FoodNutrients, FoodPortions, NutritionMatches])
class FoodDao extends DatabaseAccessor<AppDatabase> with _$FoodDaoMixin {
  new(super.attachedDatabase);
}
