import 'package:data/src/app_database.dart';
import 'package:data/src/tables/recipe_tables.dart';
import 'package:drift/drift.dart';

part 'recipe_dao.g.dart';

/// Queries for recipes and their ingredient lines, sections, and steps.
///
/// Empty in the scaffold. The data task for this aggregate adds its queries
/// (docs/BUILD_PLAN.md).
@DriftAccessor(
  tables: [
    Recipes,
    IngredientSections,
    IngredientLines,
    StepSections,
    RecipeSteps,
  ],
)
class RecipeDao extends DatabaseAccessor<AppDatabase> with _$RecipeDaoMixin {
  new(super.attachedDatabase);
}
