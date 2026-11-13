import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_reporter.g.dart';

/// Reports errors that nothing else handled.
///
/// The real implementation (Sentry, ENGINEERING.md §17) replaces
/// [DebugErrorReporter] in [errorReporter] once the account exists.
abstract interface class ErrorReporter {
  Future<void> report(Object error, StackTrace stackTrace);
}

/// Prints errors to the debug console. Used until Sentry is set up.
class const DebugErrorReporter() implements ErrorReporter {
  @override
  Future<void> report(Object error, StackTrace stackTrace) async {
    debugPrint('Unhandled error: $error\n$stackTrace');
  }
}

@Riverpod(keepAlive: true)
ErrorReporter errorReporter(Ref ref) => const DebugErrorReporter();
