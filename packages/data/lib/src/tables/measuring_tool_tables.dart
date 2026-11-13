import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

/// Measuring tools the user owns. See `MeasuringTool` in `packages/domain`.
@DataClassName('MeasuringToolRow')
class MeasuringTools() extends Table {
  TextColumn get id => text()();
  IntColumn get capacityNumerator => integer()();
  IntColumn get capacityDenominator => integer()();
  TextColumn get unit => textEnum<Unit>()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
