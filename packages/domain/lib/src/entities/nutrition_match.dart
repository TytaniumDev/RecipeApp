import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/nutrition_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_match.freezed.dart';

/// Links an ingredient line to the food its nutrition comes from
/// (ENGINEERING.md §11.2). Lines without a match are flagged, never guessed.
@freezed
abstract class NutritionMatch with _$NutritionMatch {
  const factory({
    required NutritionMatchId id,
    required IngredientLineId ingredientLineId,
    required FoodId foodId,
    required NutritionSource source,

    /// The line's weight in grams, after unit conversion.
    required double gramWeight,

    /// True once the user confirmed or picked this match.
    @Default(false) bool userConfirmed,
  }) = _NutritionMatch;
}
