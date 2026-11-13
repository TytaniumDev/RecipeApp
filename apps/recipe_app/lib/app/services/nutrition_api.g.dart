// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nutritionApi)
final nutritionApiProvider = NutritionApiProvider._();

final class NutritionApiProvider
    extends $FunctionalProvider<NutritionApi, NutritionApi, NutritionApi>
    with $Provider<NutritionApi> {
  NutritionApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nutritionApiProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nutritionApiHash();

  @$internal
  @override
  $ProviderElement<NutritionApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NutritionApi create(Ref ref) {
    return nutritionApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NutritionApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NutritionApi>(value),
    );
  }
}

String _$nutritionApiHash() => r'88cf3507a48d0fe5cdcb910a3e11f7c24518e3b5';
