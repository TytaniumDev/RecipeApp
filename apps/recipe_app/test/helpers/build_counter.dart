import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

/// Counts widget rebuilds in a widget test, so tests can assert that a
/// change rebuilds only the widgets that show it (ENGINEERING.md §5).
///
/// ```dart
/// final builds = BuildCounter.start();
/// await tester.pumpApp(const IngredientList(recipeId: id));
/// builds.reset();
///
/// fakeRepository.updateAmount(lineId, Quantity(2));
/// await tester.pump();
///
/// expect(builds.of<IngredientLineTile>(), 1);
/// expect(builds.of<RecipeTitle>(), 0);
/// ```
///
/// Counts every build of a widget's element, whether it rebuilt because its
/// own state changed or because its parent rebuilt it. Stops counting when
/// the test ends.
class BuildCounter {
  new _();

  /// Starts counting builds until the end of the current test.
  factory start() {
    final counter = BuildCounter._();
    final previous = debugOnRebuildDirtyWidget;
    debugOnRebuildDirtyWidget = (element, builtOnce) {
      previous?.call(element, builtOnce);
      counter._record(element.widget);
    };
    addTearDown(() => debugOnRebuildDirtyWidget = previous);
    return counter;
  }

  final _byType = <Type, int>{};
  final _byKey = <Key, int>{};

  void _record(Widget widget) {
    _byType.update(widget.runtimeType, (count) => count + 1, ifAbsent: () => 1);
    final key = widget.key;
    if (key != null) {
      _byKey.update(key, (count) => count + 1, ifAbsent: () => 1);
    }
  }

  /// How many times widgets of type [T] were built.
  int of<T extends Widget>() => _byType[T] ?? 0;

  /// How many times the widget with [key] was built. Use this for one item
  /// in a list, such as `ValueKey(lineId)`.
  int ofKey(Key key) => _byKey[key] ?? 0;

  /// Forgets all counts. Call after the first pump, before the change.
  void reset() {
    _byType.clear();
    _byKey.clear();
  }
}
