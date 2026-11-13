import 'package:domain/domain.dart';
import 'package:go_router/go_router.dart';
import 'package:sousline/features/experiments/presentation/experiments_screen.dart';

/// Routes owned by the experiments feature. Recipe experiments and history (PRD
/// 7.11).
abstract final class ExperimentsRoutes() {
  static const path = '/history/:recipeId';

  /// The location for [recipeId], for `context.go` and `context.push`.
  static String location(RecipeId recipeId) =>
      path.replaceFirst(':recipeId', Uri.encodeComponent(recipeId.value));

  static final List<RouteBase> routes = [
    GoRoute(
      path: path,
      builder: (context, state) => ExperimentsScreen(
        recipeId: RecipeId(state.pathParameters['recipeId']!),
      ),
    ),
  ];
}
