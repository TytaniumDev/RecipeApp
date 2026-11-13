import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sousline/app/services/error_reporter.dart';

/// Starts the app: sets up error reporting, then runs [builder] inside the
/// app's [ProviderContainer].
///
/// Setup that must happen before the first frame (Sentry, Firebase,
/// RevenueCat) goes here, behind the service interfaces in `app/services/`.
Future<void> bootstrap(Widget Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  installErrorHandlers(container.read(errorReporterProvider));
  runApp(UncontrolledProviderScope(container: container, child: builder()));
}

/// Sends framework and uncaught asynchronous errors to [reporter].
@visibleForTesting
void installErrorHandlers(ErrorReporter reporter) {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    unawaited(
      reporter.report(details.exception, details.stack ?? StackTrace.empty),
    );
  };
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    unawaited(reporter.report(error, stackTrace));
    return true;
  };
}
