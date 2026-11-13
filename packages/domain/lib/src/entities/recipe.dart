import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/quantity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

/// A recipe's own fields. Its ingredients, sections, and steps are separate
/// entities keyed by [id], so editing one line never rewrites the recipe.
@freezed
abstract class Recipe with _$Recipe {
  const factory({
    required RecipeId id,
    required String title,
    required Quantity servings,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? photoRef,
    Duration? prepTime,
    Duration? cookTime,
    Duration? totalTime,
    @Default('') String notes,
    String? sourceUrl,
    String? sourceName,
  }) = _Recipe;
}
