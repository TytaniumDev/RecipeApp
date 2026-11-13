import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/sort_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_step.freezed.dart';

/// One step of a recipe.
@freezed
abstract class RecipeStep with _$RecipeStep {
  const factory({
    required RecipeStepId id,
    required RecipeId recipeId,
    required String text,
    required SortKey sortKey,
    StepSectionId? sectionId,
  }) = _RecipeStep;
}
