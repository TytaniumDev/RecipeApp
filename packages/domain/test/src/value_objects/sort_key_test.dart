// Keys are created at runtime on purpose, as they are in app code.
// ignore_for_file: prefer_const_constructors

import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group(SortKey, () {
    test('orders as plain strings', () {
      final keys = [SortKey('b'), SortKey('a0'), SortKey('a')];

      final sorted = [...keys]..sort();

      expect(sorted, const [SortKey('a'), SortKey('a0'), SortKey('b')]);
    });
  });
}
