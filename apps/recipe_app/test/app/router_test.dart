import 'package:domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/app/app.dart';
import 'package:recipe_app/app/router.dart';
import 'package:recipe_app/features/account/account.dart';
import 'package:recipe_app/features/cooking/cooking.dart';
import 'package:recipe_app/features/editor/editor.dart';
import 'package:recipe_app/features/experiments/experiments.dart';
import 'package:recipe_app/features/grocery/grocery.dart';
import 'package:recipe_app/features/import/import.dart';
import 'package:recipe_app/features/library/library.dart';
import 'package:recipe_app/features/nutrition/nutrition.dart';
import 'package:recipe_app/features/recipe/recipe.dart';
import 'package:recipe_app/features/settings/settings.dart';
import 'package:recipe_app/features/sharing/sharing.dart';

void main() {
  const recipeId = RecipeId('r 1');

  final locations = {
    LibraryRoutes.path: 'Library',
    GroceryRoutes.path: 'Grocery list',
    SettingsRoutes.path: 'Settings',
    ImportRoutes.path: 'Import recipe',
    AccountRoutes.path: 'Account',
    RecipeRoutes.location(recipeId): 'Recipe',
    EditorRoutes.location(recipeId): 'Edit recipe',
    NutritionRoutes.location(recipeId): 'Nutrition',
    CookingRoutes.location(recipeId): 'Cooking',
    ExperimentsRoutes.location(recipeId): 'History',
    SharingRoutes.location(recipeId): 'Share',
  };

  group('router', () {
    for (final MapEntry(key: location, value: title) in locations.entries) {
      testWidgets('opens $location', (tester) async {
        final container = ProviderContainer.test();
        await tester.pumpWidget(
          UncontrolledProviderScope(
            container: container,
            child: const RecipeApp(),
          ),
        );

        container.read(routerProvider).go(location);
        await tester.pumpAndSettle();

        expect(
          find.descendant(of: find.byType(AppBar), matching: find.text(title)),
          findsOneWidget,
        );
      });
    }

    test('builds locations with an encoded recipe id', () {
      expect(CookingRoutes.location(recipeId), '/cook/r%201');
    });

    testWidgets('passes the recipe id to the screen', (tester) async {
      final container = ProviderContainer.test();
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const RecipeApp(),
        ),
      );

      container.read(routerProvider).go(CookingRoutes.location(recipeId));
      await tester.pumpAndSettle();

      final state = GoRouter.of(tester.element(find.byType(AppBar))).state;
      expect(state.pathParameters['recipeId'], recipeId.value);
    });
  });
}
