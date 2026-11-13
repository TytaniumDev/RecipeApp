// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dao.dart';

// ignore_for_file: type=lint
mixin _$RecipeDaoMixin on DatabaseAccessor<AppDatabase> {
  $RecipesTable get recipes => attachedDatabase.recipes;
  $IngredientSectionsTable get ingredientSections =>
      attachedDatabase.ingredientSections;
  $IngredientLinesTable get ingredientLines => attachedDatabase.ingredientLines;
  $StepSectionsTable get stepSections => attachedDatabase.stepSections;
  $RecipeStepsTable get recipeSteps => attachedDatabase.recipeSteps;
  RecipeDaoManager get managers => RecipeDaoManager(this);
}

class RecipeDaoManager {
  final _$RecipeDaoMixin _db;
  RecipeDaoManager(this._db);
  $$RecipesTableTableManager get recipes =>
      $$RecipesTableTableManager(_db.attachedDatabase, _db.recipes);
  $$IngredientSectionsTableTableManager get ingredientSections =>
      $$IngredientSectionsTableTableManager(
        _db.attachedDatabase,
        _db.ingredientSections,
      );
  $$IngredientLinesTableTableManager get ingredientLines =>
      $$IngredientLinesTableTableManager(
        _db.attachedDatabase,
        _db.ingredientLines,
      );
  $$StepSectionsTableTableManager get stepSections =>
      $$StepSectionsTableTableManager(_db.attachedDatabase, _db.stepSections);
  $$RecipeStepsTableTableManager get recipeSteps =>
      $$RecipeStepsTableTableManager(_db.attachedDatabase, _db.recipeSteps);
}
