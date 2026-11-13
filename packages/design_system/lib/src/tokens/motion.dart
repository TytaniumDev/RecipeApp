import 'package:flutter/animation.dart';
import 'package:flutter/physics.dart';

/// Spring motion tokens (DESIGN_SYSTEM.md §8.1).
///
/// Spatial springs move things and may overshoot a little. Effects springs
/// change color and opacity and never overshoot. All have mass 1.
abstract final class AppMotion() {
  /// Small things: checkboxes, chips, switches, a badge count.
  static final SpringDescription spatialFast = _spring(
    dampingRatio: 0.6,
    stiffness: 800,
  );

  /// Cards, sheets, reordering, cooking step changes.
  static final SpringDescription spatialDefault = _spring(
    dampingRatio: 0.8,
    stiffness: 380,
  );

  /// Full-screen transitions, the editor opening from a card.
  static final SpringDescription spatialSlow = _spring(
    dampingRatio: 0.8,
    stiffness: 200,
  );

  /// Pressed states, icon color.
  static final SpringDescription effectsFast = _spring(
    dampingRatio: 1,
    stiffness: 3800,
  );

  /// Fades, color changes.
  static final SpringDescription effectsDefault = _spring(
    dampingRatio: 1,
    stiffness: 1600,
  );

  /// Large fades, the scrim behind a sheet.
  static final SpringDescription effectsSlow = _spring(
    dampingRatio: 1,
    stiffness: 800,
  );

  static SpringDescription _spring({
    required double dampingRatio,
    required double stiffness,
  }) => SpringDescription.withDampingRatio(
    mass: 1,
    stiffness: stiffness,
    ratio: dampingRatio,
  );
}

/// A [Curve] that follows a spring from 0 to 1, for widgets that only take
/// a curve and a duration, such as implicit animations.
///
/// Pair it with its [duration], the time the spring takes to settle:
///
/// ```dart
/// final curve = SpringCurve(AppMotion.spatialDefault);
/// AnimatedContainer(duration: curve.duration, curve: curve, ...);
/// ```
// Not const: [duration] is computed from the spring when the curve is
// created, so it is worked out once instead of on every read.
// ignore: prefer_const_constructors_in_immutables
class SpringCurve(
  /// The spring this curve follows.
  final SpringDescription spring,
) extends Curve {
  /// How long the spring takes to settle at 1.
  final Duration duration = _settleDuration(spring);

  static const _maxDuration = Duration(seconds: 3);
  static const _step = Duration(milliseconds: 1);

  @override
  double transformInternal(double t) {
    final seconds =
        t * duration.inMicroseconds / Duration.microsecondsPerSecond;
    return _simulation(spring).x(seconds);
  }

  static SpringSimulation _simulation(SpringDescription spring) =>
      SpringSimulation(spring, 0, 1, 0);

  static Duration _settleDuration(SpringDescription spring) {
    final simulation = _simulation(spring);
    var elapsed = Duration.zero;
    while (elapsed < _maxDuration) {
      final seconds = elapsed.inMicroseconds / Duration.microsecondsPerSecond;
      if (simulation.isDone(seconds)) return elapsed;
      elapsed += _step;
    }
    return _maxDuration;
  }
}
