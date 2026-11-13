import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/sort_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_section.freezed.dart';

/// A named, reorderable group of steps, such as "Prep" (PRD 7.3).
@freezed
abstract class StepSection with _$StepSection {
  const factory({
    required StepSectionId id,
    required RecipeId recipeId,
    required String name,
    required SortKey sortKey,
  }) = _StepSection;
}
