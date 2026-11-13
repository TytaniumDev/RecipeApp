// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_dao.dart';

// ignore_for_file: type=lint
mixin _$FoodDaoMixin on DatabaseAccessor<AppDatabase> {
  $FoodsTable get foods => attachedDatabase.foods;
  $FoodNutrientsTable get foodNutrients => attachedDatabase.foodNutrients;
  $FoodPortionsTable get foodPortions => attachedDatabase.foodPortions;
  $NutritionMatchesTable get nutritionMatches =>
      attachedDatabase.nutritionMatches;
  FoodDaoManager get managers => FoodDaoManager(this);
}

class FoodDaoManager {
  final _$FoodDaoMixin _db;
  FoodDaoManager(this._db);
  $$FoodsTableTableManager get foods =>
      $$FoodsTableTableManager(_db.attachedDatabase, _db.foods);
  $$FoodNutrientsTableTableManager get foodNutrients =>
      $$FoodNutrientsTableTableManager(_db.attachedDatabase, _db.foodNutrients);
  $$FoodPortionsTableTableManager get foodPortions =>
      $$FoodPortionsTableTableManager(_db.attachedDatabase, _db.foodPortions);
  $$NutritionMatchesTableTableManager get nutritionMatches =>
      $$NutritionMatchesTableTableManager(
        _db.attachedDatabase,
        _db.nutritionMatches,
      );
}
