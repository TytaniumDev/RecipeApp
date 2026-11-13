import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/sort_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_section.freezed.dart';

/// A named group of ingredient lines, such as "For the sauce".
@freezed
abstract class IngredientSection with _$IngredientSection {
  const factory({
    required IngredientSectionId id,
    required RecipeId recipeId,
    required String name,
    required SortKey sortKey,
  }) = _IngredientSection;
}
