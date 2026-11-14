import 'package:material_ui/material_ui.dart';
import 'package:sousvite/l10n/l10n.dart';
import 'package:sousvite/shared/widgets/placeholder_screen.dart';

class const SettingsScreen({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      PlaceholderScreen(title: context.l10n.settings_title);
}
