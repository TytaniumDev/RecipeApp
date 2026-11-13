import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group(Unit, () {
    test('groups units by what they measure', () {
      expect(Unit.cup.dimension, UnitDimension.volume);
      expect(Unit.gram.dimension, UnitDimension.mass);
      expect(Unit.pinch.dimension, UnitDimension.count);
    });
  });
}
