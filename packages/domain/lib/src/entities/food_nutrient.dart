import 'package:domain/src/value_objects/ids.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_nutrient.freezed.dart';

/// One nutrient value of a [FoodId], per 100 g of the food.
@freezed
abstract class FoodNutrient with _$FoodNutrient {
  const factory({
    required FoodId foodId,

    /// USDA nutrient number, such as "208" for energy in kcal. Open Food
    /// Facts values are mapped to the same numbers.
    required String nutrientCode,
    required double amountPer100g,
  }) = _FoodNutrient;
}
