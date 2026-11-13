import 'package:design_system/design_system.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';

/// The frame around the top-level destinations: Library, Grocery list,
/// and Settings (DESIGN_SYSTEM.md §6.3). A bottom navigation bar on compact
/// windows, a navigation rail on wider ones.
class const AppShell({
  required final StatefulNavigationShell navigationShell,
  super.key,
}) extends StatelessWidget {
  void _select(int index) => navigationShell.goBranch(
    index,
    // Tapping the current tab returns to its first screen.
    initialLocation: index == navigationShell.currentIndex,
  );

  @override
  Widget build(BuildContext context) {
    final selectedIndex = navigationShell.currentIndex;
    if (WindowSizeClass.of(context) == .compact) {
      return Scaffold(
        body: navigationShell,
        bottomNavigationBar: _BottomNavigation(
          selectedIndex: selectedIndex,
          onSelected: _select,
        ),
      );
    }
    return Scaffold(
      body: Row(
        children: [
          _SideNavigation(selectedIndex: selectedIndex, onSelected: _select),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }
}

/// One top-level destination.
class const _Destination(
  final IconData icon,
  final String Function(AppLocalizations l10n) label,
);

final _destinations = [
  _Destination(Symbols.menu_book_rounded, (l10n) => l10n.nav_library),
  _Destination(Symbols.grocery_rounded, (l10n) => l10n.nav_grocery),
  _Destination(Symbols.settings_rounded, (l10n) => l10n.nav_settings),
];

class const _BottomNavigation({
  required final int selectedIndex,
  required final ValueChanged<int> onSelected,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelected,
      destinations: [
        for (final destination in _destinations)
          NavigationDestination(
            icon: Icon(destination.icon),
            selectedIcon: Icon(destination.icon, fill: 1),
            label: destination.label(l10n),
          ),
      ],
    );
  }
}

class const _SideNavigation({
  required final int selectedIndex,
  required final ValueChanged<int> onSelected,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final extended =
        MediaQuery.sizeOf(context).width >=
        WindowSizeClass.extendedRailMinWidth;
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelected,
      extended: extended,
      labelType: extended ? .none : .all,
      destinations: [
        for (final destination in _destinations)
          NavigationRailDestination(
            icon: Icon(destination.icon),
            selectedIcon: Icon(destination.icon, fill: 1),
            label: Text(destination.label(l10n)),
          ),
      ],
    );
  }
}
