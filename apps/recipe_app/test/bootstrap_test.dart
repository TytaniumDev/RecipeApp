import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_app/app/services/error_reporter.dart';
import 'package:recipe_app/bootstrap.dart';

class _RecordingReporter() implements ErrorReporter {
  final errors = <Object>[];

  @override
  Future<void> report(Object error, StackTrace stackTrace) async {
    errors.add(error);
  }
}

void main() {
  group('installErrorHandlers', () {
    late FlutterExceptionHandler? previousFlutterHandler;
    late ErrorCallback? previousPlatformHandler;

    setUp(() {
      previousFlutterHandler = FlutterError.onError;
      previousPlatformHandler = PlatformDispatcher.instance.onError;
    });

    tearDown(() {
      FlutterError.onError = previousFlutterHandler;
      PlatformDispatcher.instance.onError = previousPlatformHandler;
    });

    test('reports framework and uncaught errors', () {
      final reporter = _RecordingReporter();
      installErrorHandlers(reporter);
      final presented = <FlutterErrorDetails>[];
      final previousPresenter = FlutterError.presentError;
      FlutterError.presentError = presented.add;
      addTearDown(() => FlutterError.presentError = previousPresenter);

      FlutterError.onError!(
        FlutterErrorDetails(exception: StateError('framework')),
      );
      final handled = PlatformDispatcher.instance.onError!(
        StateError('async'),
        StackTrace.empty,
      );

      expect(presented, hasLength(1));
      expect(handled, isTrue);
      expect(reporter.errors.map((e) => '$e'), [
        'Bad state: framework',
        'Bad state: async',
      ]);
    });
  });
}
