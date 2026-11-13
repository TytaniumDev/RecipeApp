import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';

/// A stand-in screen for a feature that is not built yet. Each feature
/// replaces its use of this with its real screen.
class const PlaceholderScreen({required final String title, super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(title)),
    body: Center(child: Text(context.l10n.common_comingSoon)),
  );
}
