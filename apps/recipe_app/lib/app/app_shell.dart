import 'package:design_system/design_system.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';

/// The frame around the top-level destinations: Library, Grocery list,
/// and Settings (DESIGN_SYSTEM.md §6.3). A bottom navigation bar on compact
/// windows, a navigation rail on wider ones.
class AppShell extends StatelessWidget {
  const new({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

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
class _Destination {
  const new(this.icon, this.label);

  final IconData icon;
  final String Function(AppLocalizations l10n) label;
}

final _destinations = [
  _Destination(Symbols.menu_book_rounded, (l10n) => l10n.nav_library),
  _Destination(Symbols.grocery_rounded, (l10n) => l10n.nav_grocery),
  _Destination(Symbols.settings_rounded, (l10n) => l10n.nav_settings),
];

class _BottomNavigation extends StatelessWidget {
  const new({required this.selectedIndex, required this.onSelected});

  final int selectedIndex;
  final ValueChanged<int> onSelected;

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

class _SideNavigation extends StatelessWidget {
  const new({required this.selectedIndex, required this.onSelected});

  final int selectedIndex;
  final ValueChanged<int> onSelected;

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
