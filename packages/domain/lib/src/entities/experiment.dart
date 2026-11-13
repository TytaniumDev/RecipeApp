import 'package:domain/src/value_objects/ids.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment.freezed.dart';

/// What happened to an experiment (PRD 7.11).
enum ExperimentOutcome() {
  /// Still being tried.
  open,

  /// Became the new recipe.
  adopted,

  /// Kept only as a logged attempt in the recipe's history.
  kept,
}

/// A trial change to a recipe. The experiment's own ingredients and steps
/// live on [workingRecipeId], a copy of [baseVersionId], so it works
/// everywhere a recipe does.
@freezed
abstract class Experiment with _$Experiment {
  const factory({
    required ExperimentId id,
    required RecipeId recipeId,
    required RecipeVersionId baseVersionId,
    required RecipeId workingRecipeId,
    required DateTime createdAt,
    @Default('') String changeDescription,
    @Default('') String notes,

    /// "Share with others" in a joint share. Off by default.
    @Default(false) bool sharedWithOthers,
    @Default(ExperimentOutcome.open) ExperimentOutcome outcome,
  }) = _Experiment;
}
