import 'package:domain/src/value_objects/ids.dart';
import 'package:domain/src/value_objects/quantity.dart';
import 'package:domain/src/value_objects/unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measuring_tool.freezed.dart';

/// A measuring cup or spoon the user owns, such as ⅔ cup (PRD 7.5).
@freezed
abstract class MeasuringTool with _$MeasuringTool {
  const factory({
    required MeasuringToolId id,
    required Quantity capacity,
    required Unit unit,
  }) = _MeasuringTool;
}
