// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The app's routes, composed from each feature's `<name>_routes.dart`.
///
/// Features add and change routes only in their own routes file. This file
/// changes only when a feature is added.

@ProviderFor(router)
final routerProvider = RouterProvider._();

/// The app's routes, composed from each feature's `<name>_routes.dart`.
///
/// Features add and change routes only in their own routes file. This file
/// changes only when a feature is added.

final class RouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  /// The app's routes, composed from each feature's `<name>_routes.dart`.
  ///
  /// Features add and change routes only in their own routes file. This file
  /// changes only when a feature is added.
  RouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routerHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return router(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$routerHash() => r'0a1b880ff7fdab5e1d2b2749d0f86fda9e3f6054';
