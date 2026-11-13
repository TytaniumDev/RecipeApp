import 'package:domain/domain.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sousline/l10n/l10n.dart';
import 'package:sousline/shared/widgets/placeholder_screen.dart';

class const RecipeScreen({required final RecipeId recipeId, super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      PlaceholderScreen(title: context.l10n.recipe_title);
}
