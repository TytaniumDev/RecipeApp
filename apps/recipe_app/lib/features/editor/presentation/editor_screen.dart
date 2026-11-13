import 'package:domain/domain.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';
import 'package:recipe_app/shared/widgets/placeholder_screen.dart';

class EditorScreen extends StatelessWidget {
  const new({required this.recipeId, super.key});

  final RecipeId recipeId;

  @override
  Widget build(BuildContext context) =>
      PlaceholderScreen(title: context.l10n.editor_title);
}
