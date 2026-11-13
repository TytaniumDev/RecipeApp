import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/quantity.dart';
import 'package:domain/src/value_objects/sort_key.dart';
import 'package:domain/src/value_objects/unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_line.freezed.dart';

/// One ingredient line: the text the user typed, plus the parts parsed from
/// it. Any parsed part can be corrected by the user (PRD 7.3).
///
/// `"1 ½ cups rolled oats, chopped"` has [quantity] 3/2, [unit] cup,
/// [name] "rolled oats" and [preparation] "chopped".
@freezed
abstract class IngredientLine with _$IngredientLine {
  const factory({
    required IngredientLineId id,
    required RecipeId recipeId,
    required String rawText,
    required SortKey sortKey,
    IngredientSectionId? sectionId,
    Quantity? quantity,

    /// The upper end of a range such as "2–3". Null when not a range.
    Quantity? quantityMax,
    Unit? unit,
    String? name,
    String? preparation,
  }) = _IngredientLine;
}
