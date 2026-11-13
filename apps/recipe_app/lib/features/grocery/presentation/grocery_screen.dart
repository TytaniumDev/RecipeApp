import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';
import 'package:recipe_app/shared/widgets/placeholder_screen.dart';

class GroceryScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) =>
      PlaceholderScreen(title: context.l10n.grocery_title);
}
