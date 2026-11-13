import 'package:domain/domain.dart';
import 'package:go_router/go_router.dart';
import 'package:sousline/features/sharing/presentation/sharing_screen.dart';

/// Routes owned by the sharing feature. Sharing recipes and folders (PRD 7.10).
abstract final class SharingRoutes() {
  static const path = '/share/:recipeId';

  /// The location for [recipeId], for `context.go` and `context.push`.
  static String location(RecipeId recipeId) =>
      path.replaceFirst(':recipeId', Uri.encodeComponent(recipeId.value));

  static final List<RouteBase> routes = [
    GoRoute(
      path: path,
      builder: (context, state) =>
          SharingScreen(recipeId: RecipeId(state.pathParameters['recipeId']!)),
    ),
  ];
}
