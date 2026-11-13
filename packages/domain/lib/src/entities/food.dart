import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/nutrition_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';

/// A food from USDA or Open Food Facts.
@freezed
abstract class Food with _$Food {
  const factory({
    required FoodId id,
    required NutritionSource source,

    /// The id in the source database (USDA FDC id or OFF barcode).
    required String externalId,
    required String name,
    String? brand,
  }) = _Food;
}
