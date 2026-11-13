import 'package:domain/src/entities/measuring_tool.dart';
import 'package:domain/src/value_objects/ids.dart';

/// The measuring cups and spoons the user owns (PRD 7.5).
abstract interface class MeasuringToolRepository {
  Stream<List<MeasuringTool>> watchTools();

  Future<void> saveTool(MeasuringTool tool);

  Future<void> deleteTool(MeasuringToolId id);
}
