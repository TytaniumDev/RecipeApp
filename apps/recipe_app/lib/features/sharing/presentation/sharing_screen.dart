import 'package:domain/domain.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';
import 'package:recipe_app/shared/widgets/placeholder_screen.dart';

class const SharingScreen({required final RecipeId recipeId, super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      PlaceholderScreen(title: context.l10n.sharing_title);
}
