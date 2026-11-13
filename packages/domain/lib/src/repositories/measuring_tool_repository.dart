// An interface has no code to run; only its empty primary constructor
// would show up, as an uncovered line.
// coverage:ignore-file

import 'package:domain/src/entities/measuring_tool.dart';
import 'package:domain/src/value_objects/ids.dart';

/// The measuring cups and spoons the user owns (PRD 7.5).
abstract interface class MeasuringToolRepository() {
  Stream<List<MeasuringTool>> watchTools();

  Future<void> saveTool(MeasuringTool tool);

  Future<void> deleteTool(MeasuringToolId id);
}
