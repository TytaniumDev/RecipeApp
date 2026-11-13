import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/quantity.dart';
import 'package:domain/src/value_objects/unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_portion.freezed.dart';

/// A household portion of a food with its weight, such as "1 cup = 240 g".
/// Used to convert volumes and counts to grams (ENGINEERING.md §11.2).
@freezed
abstract class FoodPortion with _$FoodPortion {
  const factory({
    required FoodPortionId id,
    required FoodId foodId,
    required Quantity amount,
    required double gramWeight,

    /// The portion's unit, or null for a count described in [description].
    Unit? unit,

    /// The source's own wording, such as "1 large egg".
    @Default('') String description,
  }) = _FoodPortion;
}
