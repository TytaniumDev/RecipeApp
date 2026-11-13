import 'package:domain/src/value_objects/ids.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_version.freezed.dart';

/// A snapshot of a recipe at a point in its history (PRD 7.11).
@freezed
abstract class RecipeVersion with _$RecipeVersion {
  const factory({
    required RecipeVersionId id,
    required RecipeId recipeId,
    required DateTime createdAt,

    /// The recipe and its lines, sections, and steps, serialized as JSON.
    required String snapshotJson,

    /// What changed, such as "Made experiment the recipe".
    @Default('') String summary,
  }) = _RecipeVersion;
}
