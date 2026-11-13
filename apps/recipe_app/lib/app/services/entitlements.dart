import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entitlements.g.dart';

/// Whether the user has Pro (RevenueCat, ENGINEERING.md §9).
///
/// [FreeEntitlements] stands in until RevenueCat is set up.
abstract interface class Entitlements() {
  Stream<bool> watchIsPro();
}

/// Never Pro.
class const FreeEntitlements() implements Entitlements {
  @override
  Stream<bool> watchIsPro() => Stream.value(false);
}

@Riverpod(keepAlive: true)
Entitlements entitlements(Ref ref) => const FreeEntitlements();
