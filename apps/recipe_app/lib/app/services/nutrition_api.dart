import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nutrition_api.g.dart';

/// A food found online, with everything needed to cache it.
typedef OnlineFood = ({
  Food food,
  List<FoodNutrient> nutrients,
  List<FoodPortion> portions,
});

/// Online food lookups: USDA branded foods through our proxy and Open Food
/// Facts (ENGINEERING.md §11.1).
///
/// [OfflineNutritionApi] stands in until the USDA proxy exists.
abstract interface class NutritionApi() {
  Future<List<OnlineFood>> search(String query);

  Future<OnlineFood?> lookupBarcode(String barcode);
}

/// Finds nothing, as if offline. Bundled generic foods still work.
class const OfflineNutritionApi() implements NutritionApi {
  @override
  Future<List<OnlineFood>> search(String query) async => const [];

  @override
  Future<OnlineFood?> lookupBarcode(String barcode) async => null;
}

@Riverpod(keepAlive: true)
NutritionApi nutritionApi(Ref ref) => const OfflineNutritionApi();
