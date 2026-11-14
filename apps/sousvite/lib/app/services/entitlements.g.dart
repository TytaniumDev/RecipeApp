// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entitlements.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(entitlements)
final entitlementsProvider = EntitlementsProvider._();

final class EntitlementsProvider
    extends $FunctionalProvider<Entitlements, Entitlements, Entitlements>
    with $Provider<Entitlements> {
  EntitlementsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'entitlementsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$entitlementsHash();

  @$internal
  @override
  $ProviderElement<Entitlements> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Entitlements create(Ref ref) {
    return entitlements(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Entitlements value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Entitlements>(value),
    );
  }
}

String _$entitlementsHash() => r'7623c5703894c12d80973bf5b06dc6e361c987ea';
