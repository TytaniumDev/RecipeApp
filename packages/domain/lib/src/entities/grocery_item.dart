import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/quantity.dart';
import 'package:domain/src/value_objects/sort_key.dart';
import 'package:domain/src/value_objects/unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_item.freezed.dart';

/// One item on a grocery list, either added by hand or from a recipe's
/// ingredient line (PRD 7.7).
@freezed
abstract class GroceryItem with _$GroceryItem {
  const factory({
    required GroceryItemId id,
    required GroceryListId listId,
    required String name,
    required SortKey sortKey,
    Quantity? quantity,
    Unit? unit,

    /// Store section name used for grouping, such as "Produce".
    String? storeSection,
    @Default(false) bool checked,

    /// The ingredient line this came from, for combining. Null when manual.
    IngredientLineId? sourceIngredientLineId,
    RecipeId? sourceRecipeId,
  }) = _GroceryItem;
}
