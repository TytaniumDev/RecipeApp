# Recipe App: Design System

| | |
|---|---|
| **Status** | Draft |
| **Owner** | Tyler |
| **Last updated** | 2026-11-13 |
| **Companion docs** | [PRD](PRD.md), [Engineering design](ENGINEERING.md) |

---

## 1. Purpose

This document defines how Recipe App looks, moves, and reads: the design tokens, the shared components in `packages/design_system`, and the patterns screens are built from. The PRD says *what* we build and the engineering doc says *how* it's structured. This doc says what it looks like and how it behaves.

When a token, component, or pattern changes, update this doc in the same pull request.

Decisions are marked the same way as in the engineering doc:

- **Decided:** chosen explicitly by Tyler.
- **Default:** picked during drafting, open to review.

## 2. Principles

1. **Warm but clean.** Clean layouts and crisp numbers, with warm, food-inspired color and soft corners. It should feel like a good kitchen tool: calm, sturdy, and pleasant to pick up. *(Decided)*
2. **The food is the hero.** Recipe photos and recipe names get the space. Chrome stays quiet.
3. **Numbers you can trust.** Nutrition is shown precisely, aligned, and always labeled with its unit and whether it's per serving or per batch.
4. **Messy hands, across the room.** Anything used while cooking has big targets, big type, high contrast, and never needs precision.
5. **Material underneath, ours on top.** We build on Material 3 widgets and give them our look through tokens. We don't rebuild what Material already does well. *(Decided)*
6. **Small and composable.** Shared widgets are small, take plain values, and rebuild only when the data they show changes (Engineering §5).

## 3. Decision summary

| Area | Choice | Status |
|---|---|---|
| Look and feel | Warm but clean | Decided |
| Component base | Material 3, themed with our tokens (`ThemeData` + `ThemeExtension`s), same look on every platform | Decided |
| Brand color | Herb green primary, terracotta warm accent | Decided |
| Dynamic color (Material You) | Off. Always our colors | Decided |
| Light and dark | Both. Follow the system, with a Light / Dark / System setting | Decided |
| Typography | Serif for recipe names and headings (Newsreader), sans for everything else (Plus Jakarta Sans), both bundled | Decided |
| Density | Comfortable by default, compact for nutrition tables and long read-only lists | Decided |
| Icons | Material Symbols Rounded | Decided |
| Motion | Expressive: spring-based, with a little bounce on movement | Decided |
| Accessibility | WCAG 2.2 AA app-wide, AAA contrast (7:1) in cooking mode | Decided |
| Cooking mode theme | Follows the app's light or dark theme, using a high-contrast variant | Decided |
| Cooking mode text | Large and fixed (no in-mode size control), still scaled by the system text size | Decided |
| Code | Built in the app scaffold PR, where CI arrives | Decided |
| Color generation | Material color utilities, from our own palettes, committed as constants | Default |
| Macro colors | Reddish-brown protein, amber carbs, blue fat | Decided |

A visual companion with live previews of these tokens and components lives in the Claude Design System library: [Recipe App](https://claude.ai/artifact/Dr7eWvdaMkQAAs1KN6Amqv) (private to Tyler unless shared). This file is the source of truth. If the two disagree, this file wins and the companion gets updated.

## 4. Color

### 4.1 How the palette is built *(Default)*

Colors come from Material 3's color system (the HCT color space and tonal palettes), so every role meets its contrast target by construction. We don't use `ColorScheme.fromSeed` at runtime. We generate the schemes once from our own palettes and commit them as constants, so colors never shift silently when Flutter upgrades its color utilities.

| Palette | Source | HCT hue / chroma | Role |
|---|---|---|---|
| Primary | Herb green `#4E7D3A` | 139 / 40 | Actions, selection, amounts in steps |
| Secondary | Same hue, low chroma | 139 / 14 | Quiet controls (tonal buttons, filter chips) |
| Tertiary | Terracotta `#C0603A` | 39 / 44 | The warm accent: experiments, timers, one highlight per screen |
| Neutral | Warm gray | 85 / 4 | Surfaces and text |
| Neutral variant | Warm gray-green | 110 / 8 | Secondary text, outlines |
| Error | Material default | 25 / 84 | Errors and destructive actions only |

There are **four schemes**: `light` and `dark` (Material's standard contrast), and `cooking-light` and `cooking-dark` (Material's high-contrast level, `contrastLevel: 1.0`), which cooking mode uses so every text pair reaches 7:1 (§10.3).

### 4.2 Color roles

Values are hex. Use the role, never the hex, in code. Names are written in kebab case in this doc; in Dart they're camelCase on `ColorScheme` or `AppColors` (`surface-container-high` is `colorScheme.surfaceContainerHigh`, `on-protein-container` is `appColors.onProteinContainer`).

| Role | Light | Dark | Cooking light | Cooking dark | Use |
|---|---|---|---|---|---|
| `primary` | `#3f692d` | `#a4d48c` | `#0c3400` | `#ccfeb2` | Herb green. Main actions (filled buttons, FAB), selected states, links, and amounts in step text. As text: on surface and every surface-container. |
| `on-primary` | `#ffffff` | `#103803` | `#ffffff` | `#000000` | Text and icons on a primary fill. |
| `primary-container` | `#bff0a6` | `#285018` | `#2a521a` | `#a0d088` | Soft green fill: selected chips, the active nav indicator, inline amount highlights. |
| `on-primary-container` | `#285018` | `#bff0a6` | `#ffffff` | `#020f00` | Text and icons on primary-container. |
| `secondary` | `#56624f` | `#becbb3` | `#252f1f` | `#e7f4db` | Muted sage. Lower-emphasis actions and controls (tonal buttons, toggles). |
| `on-secondary` | `#ffffff` | `#293323` | `#ffffff` | `#000000` | Text and icons on a secondary fill. |
| `secondary-container` | `#dae7ce` | `#3f4a38` | `#414c3a` | `#bac7af` | Sage fill for filter chips, tonal buttons, and section headers in cooking mode. |
| `on-secondary-container` | `#3f4a38` | `#dae7ce` | `#ffffff` | `#050e03` | Text and icons on secondary-container. |
| `tertiary` | `#964828` | `#ffb59a` | `#541800` | `#ffece6` | Terracotta, the warm accent. Use sparingly: experiments, timers, and the one highlight per screen that is not an action. |
| `on-tertiary` | `#ffffff` | `#5a1b00` | `#ffffff` | `#000000` | Text and icons on a tertiary fill. |
| `tertiary-container` | `#ffdbcf` | `#783113` | `#7b3315` | `#ffb092` | Soft terracotta fill: experiment badges, running timer chips. |
| `on-tertiary-container` | `#783113` | `#ffdbcf` | `#ffffff` | `#1c0400` | Text and icons on tertiary-container. |
| `error` | `#ba1a1a` | `#ffb4ab` | `#600004` | `#ffece9` | Errors and destructive actions only. Never for "not matched" (use warning). |
| `on-error` | `#ffffff` | `#690005` | `#ffffff` | `#000000` | Text and icons on an error fill. |
| `error-container` | `#ffdad6` | `#93000a` | `#98000a` | `#ffaea4` | Error banners and destructive confirmation backgrounds. |
| `on-error-container` | `#93000a` | `#ffdad6` | `#ffffff` | `#220001` | Text and icons on error-container. |
| `surface` | `#fff8f2` | `#16130e` | `#fff8f2` | `#16130e` | Page background. |
| `on-surface` | `#1e1b16` | `#e9e1d8` | `#000000` | `#ffffff` | Primary text, on surface and every surface-container. |
| `on-surface-variant` | `#48473a` | `#cac7b6` | `#000000` | `#ffffff` | Secondary text, metadata, and inactive icons, on surface and every surface-container. |
| `surface-dim` | `#e0d9d0` | `#16130e` | `#bfb8af` | `#16130e` | Dimmed page background behind sheets on large screens. |
| `surface-bright` | `#fff8f2` | `#3d3933` | `#fff8f2` | `#544f49` | Bright page background in dark theme where extra lift is needed. |
| `surface-container-lowest` | `#ffffff` | `#100e09` | `#ffffff` | `#000000` | Recipe photo placeholders and inputs that sit on surface-container. |
| `surface-container-low` | `#fbf2e9` | `#1e1b16` | `#f8efe7` | `#221f1a` | Cards in lists (recipe cards, grocery groups). |
| `surface-container` | `#f5ede4` | `#221f1a` | `#e9e1d8` | `#34302a` | Navigation bar and rail, menus. |
| `surface-container-high` | `#efe7de` | `#2d2924` | `#dbd3cb` | `#3f3b35` | Bottom sheets, dialogs, the cooking ingredients panel. |
| `surface-container-highest` | `#e9e1d8` | `#38342e` | `#cdc5bd` | `#4a4640` | Text field fills, the nutrition table header row. |
| `outline` | `#797869` | `#939181` | `#2d2d21` | `#f4f0de` | Text field borders, outlined buttons, dividers that must be seen (3:1 on surfaces). |
| `outline-variant` | `#cac7b6` | `#48473a` | `#4b4a3c` | `#c6c3b2` | Decorative dividers and card borders that do not carry meaning. |
| `inverse-surface` | `#34302a` | `#e9e1d8` | `#34302a` | `#e9e1d8` | Snackbar background. |
| `inverse-on-surface` | `#f8efe7` | `#34302a` | `#ffffff` | `#000000` | Snackbar text. |
| `inverse-primary` | `#a4d48c` | `#3f692d` | `#a4d48c` | `#295119` | Snackbar action label. |

`shadow` and `scrim` are `#000000` in every scheme.

### 4.3 Custom colors

Material has no roles for macros or warnings, so we add them through an `AppColors` theme extension, following Material's custom-color pattern (a color, a container, and an on-container).

**Macros.** Protein, carbs, and fat each have a fixed color, the same on every screen, so people learn them. Protein is a reddish brown (HCT hue 28, chroma 30), carbs an amber (hue 78), and fat a blue (hue 249). Protein is kept browner and less saturated than the terracotta accent so the two don't read as the same color. They're never the only signal: a macro mark always has its name or initial next to it (P, C, F).

**Warning.** For things that need attention but aren't errors, such as an ingredient that couldn't be matched to nutrition data or a partial import. Always paired with an icon and words.

| Role | Light | Dark | Cooking light | Cooking dark | Use |
|---|---|---|---|---|---|
| `protein` | `#894e45` | `#ffb4a7` | `#57261e` | `#ffdad4` | Protein marks (macro bar segment, dot) and protein numbers as text, on surface and surface-container levels. |
| `protein-container` | `#ffdad4` | `#6d382f` | `#ffdad4` | `#51221a` | Soft protein fill behind a protein label or chip. |
| `on-protein-container` | `#6d382f` | `#ffdad4` | `#370e08` | `#ffedea` | Text on protein-container. |
| `carbs` | `#7f5600` | `#ffba3e` | `#493000` | `#ffdeae` | Carbohydrate marks and numbers, on surface and surface-container levels. |
| `carbs-container` | `#ffdeae` | `#604100` | `#ffdeae` | `#432c00` | Soft carbs fill behind a carbs label or chip. |
| `on-carbs-container` | `#604100` | `#ffdeae` | `#281900` | `#ffeeda` | Text on carbs-container. |
| `fat` | `#00639b` | `#97cbff` | `#00375b` | `#cee5ff` | Fat marks and numbers, on surface and surface-container levels. |
| `fat-container` | `#cee5ff` | `#004a76` | `#cee5ff` | `#003353` | Soft fat fill behind a fat label or chip. |
| `on-fat-container` | `#004a76` | `#cee5ff` | `#001d33` | `#e8f2ff` | Text on fat-container. |
| `warning` | `#8d4f00` | `#ffb875` | `#512b00` | `#ffdcc0` | Needs attention but is not an error: unmatched ingredients, partial imports. Always with an icon and words. |
| `warning-container` | `#ffdcc0` | `#6b3b00` | `#ffdcc0` | `#4b2800` | Background of warning chips and banners. |
| `on-warning-container` | `#6b3b00` | `#ffdcc0` | `#2d1600` | `#ffeee1` | Text and icons on warning-container. |

Macro and warning colors used as text meet their contrast target on `surface` and every `surface-container` level, including 7:1 in the cooking schemes. In cooking light all four sit at HCT tone 22, dark enough to reach 7:1 even on `surface-container-highest`.

### 4.4 Rules

- Text and icons sit on their paired surface: `on-primary` on `primary`, `on-surface` on `surface` and the `surface-container` levels, and so on. Every pair in the tables meets 4.5:1 (7:1 in the cooking schemes), and a unit test checks them (§12).
- `primary` is for actions and selection. Use at most one filled primary button per screen.
- `tertiary` (terracotta) is an accent, not a second primary. Experiments, running timers, and at most one highlight per screen.
- `error` is only for errors and destructive actions. "Not matched" is a `warning`, not an error.
- Elevation is shown by the `surface-container` levels (lowest to highest), not by shadows or tint. Shadows are only for the FAB, menus, and an item being dragged.
- Photos are never tinted or overlaid with brand color. Text over a photo sits on a `scrim` gradient at 0 to 60% opacity.

## 5. Typography

### 5.1 Typefaces *(Decided)*

| Family | Used for | Why |
|---|---|---|
| **Newsreader** (variable, weight and optical size; optical size automatic) | Display, headline, and `titleLarge`: recipe names, screen titles, section titles | An editorial serif that reads like a good food magazine: calm and refined. The optical-size axis keeps it crisp from 22 to 57 px. |
| **Plus Jakarta Sans** (variable, weight) | Everything else: body, labels, buttons, numbers, cooking steps | A friendly, slightly rounded geometric sans with clear, open numbers. It has tabular figures for nutrition tables and all the fraction glyphs recipes need (½ ⅓ ⅔ ¼ ¾ ⅛ ⅜ ⅝ ⅞). |

Both fonts are **bundled** in `packages/design_system` as assets, not fetched at runtime, so the app looks the same offline and on first launch. Both are licensed under the SIL Open Font License.

### 5.2 Type scale

We keep Material 3's type roles and sizes, so every Material widget picks up the right style without overrides. Only the family and weight change.

| Role | Family | Size / line height | Weight | Used for |
|---|---|---|---|---|
| `displayLarge` | Newsreader | 57 / 64 | 500 | Rare: onboarding hero |
| `displayMedium` | Newsreader | 45 / 52 | 500 | Rare |
| `displaySmall` | Newsreader | 36 / 44 | 500 | Recipe name on a tablet or web detail page |
| `headlineLarge` | Newsreader | 32 / 40 | 600 | Recipe name on the phone detail page |
| `headlineMedium` | Newsreader | 28 / 36 | 600 | Screen titles (Library, Grocery list) |
| `headlineSmall` | Newsreader | 24 / 32 | 600 | Dialog titles, empty-state titles |
| `titleLarge` | Newsreader | 22 / 28 | 600 | Section titles (Ingredients, Steps, Nutrition), recipe names on cards |
| `titleMedium` | Plus Jakarta Sans | 16 / 24 | 600 | List item titles, step section names in the editor |
| `titleSmall` | Plus Jakarta Sans | 14 / 20 | 600 | Small headers, table headers |
| `bodyLarge` | Plus Jakarta Sans | 16 / 24 | 400 | Ingredient lines, step text, notes |
| `bodyMedium` | Plus Jakarta Sans | 14 / 20 | 400 | Default body text |
| `bodySmall` | Plus Jakarta Sans | 12 / 16 | 400 | Metadata (source, times), helper text |
| `labelLarge` | Plus Jakarta Sans | 14 / 20 | 600 | Buttons, tabs |
| `labelMedium` | Plus Jakarta Sans | 12 / 16 | 600 | Chips, badges |
| `labelSmall` | Plus Jakarta Sans | 11 / 16 | 600 | Nav bar labels, tiny counts |

### 5.3 App-specific styles

Defined in an `AppTypography` theme extension. All of them use Plus Jakarta Sans.

| Style | Size / line height | Weight | Features | Used for |
|---|---|---|---|---|
| `numberHero` | 32 / 40 | 600 | tabular | Calories per serving at the top of the nutrition card |
| `numberLarge` | 20 / 28 | 600 | tabular | Macro grams in the macro summary |
| `number` | 14 / 20 | 500 | tabular | Values in nutrition tables, grocery quantities |
| `amount` | inherits | 600 | tabular | An amount inside running text ("Whisk in **¾ cup** sugar") |
| `cookingStep` | 28 / 40 (compact), 34 / 48 (medium and up) | 400 | | Step text in cooking mode |
| `cookingAmount` | same as `cookingStep` | 700 | tabular | Amounts inside cooking steps |
| `cookingIngredient` | 20 / 28 (compact), 22 / 32 (medium and up) | 400 | tabular | Ingredients-for-this-step panel |
| `cookingSection` | 18 / 24 | 600 | | Section name and step count ("Prep · Step 2 of 5") |
| `cookingTimer` | 40 / 48 | 600 | tabular | Timer countdowns |

### 5.4 Rules

- Newsreader is for names and titles only. Never for body text, buttons, or numbers. Cooking mode is all Plus Jakarta Sans.
- Every number that lines up with another number uses tabular figures.
- Amounts are written with fraction glyphs (`1 ½ cups`, never `1 1/2 cups` or `1.5 cups` in US units). The formatter lives in `packages/measuring`, and the widget adds a screen-reader label ("one and a half cups").
- Sentence case everywhere, including buttons and titles ("Add to grocery list", not "Add To Grocery List").
- Line length for reading (notes, steps on wide screens) stays under about 70 characters; the recipe column maxes out at 720 dp.
- The app supports system text scaling up to 200%. Cooking mode caps the scale at 1.5×, because its base sizes are already about twice body size (§10.4).

## 6. Layout, spacing, and shape

### 6.1 Spacing *(Decided: comfortable, compact for data)*

A 4 dp base grid. Use the tokens, never raw numbers.

| Token | dp | Typical use |
|---|---|---|
| `space1` | 4 | Icon-to-label gap inside chips |
| `space2` | 8 | Gap between related items, chip spacing |
| `space3` | 12 | Gap inside list items, compact row padding |
| `space4` | 16 | Default padding, phone page gutter, card padding |
| `space5` | 20 | Between a section title and its content |
| `space6` | 24 | Between sections, tablet page gutter |
| `space8` | 32 | Large section breaks, desktop page gutter |
| `space10` | 40 | Cooking mode outer padding |
| `space12` | 48 | Empty-state spacing |
| `space16` | 64 | Top of onboarding and hero layouts |

### 6.2 Density

- **Comfortable (default):** Material's standard density on every platform, including web and desktop (Flutter defaults those to compact, so we pin `VisualDensity.standard`). Interactive list rows are at least 56 dp tall.
- **Compact (data):** the detailed nutrients table, the ingredient match review list, and the read-only ingredient list on the recipe page. Rows are 36 to 40 dp with `space3` vertical padding. Wrap these in the `CompactDensity` widget, which applies `VisualDensity.compact` and the compact row height. Anything tappable still keeps a 48 dp hit area.
- Grocery lists stay comfortable, since they're used one-handed in a store.

### 6.3 Adaptive layout

We use Material's window size classes, applied the same way on phones, tablets, and web.

| Class | Width | Navigation | Layout |
|---|---|---|---|
| Compact | < 600 dp | Bottom navigation bar | One pane |
| Medium | 600 to 839 dp | Navigation rail | One pane, wider margins; cooking mode goes two-pane in landscape |
| Expanded | ≥ 840 dp | Navigation rail (extended at ≥ 1200 dp) | List and detail side by side (library + recipe, grocery list + recipes) |

Top-level destinations: **Library**, **Grocery list**, and **Settings**. Cooking mode, the editor, and import review are full-screen routes on top.

Page gutters are `space4` (compact), `space6` (medium), and `space8` (expanded). Reading columns max out at 720 dp.

### 6.4 Shape

Soft and rounded, but not bubbly.

| Token | dp | Used for |
|---|---|---|
| `radiusXs` | 4 | Checkboxes, small badges, macro bar ends |
| `radiusSm` | 8 | Chips, text fields, snackbars, menus |
| `radiusMd` | 12 | Cards, list item highlights, the ingredients panel |
| `radiusLg` | 16 | Recipe card photos, the FAB, large cards |
| `radiusXl` | 28 | Bottom sheet top corners, dialogs |
| `radiusFull` | 9999 | Buttons, segmented buttons, the serving stepper, avatars |

Buttons stay fully rounded (Material's default). Nested corners follow the rule *inner radius = outer radius − padding*, so a photo inside a `radiusLg` card with 4 dp padding uses 12 dp.

## 7. Iconography *(Decided)*

- **Material Symbols Rounded**, through the `material_symbols_icons` package, so built-in Material widgets and our own icons match.
- Default settings: weight 400, grade 0, fill 0. Selected states (the active nav item, a toggled favorite) use fill 1.
- Sizes: 20 dp inline with text, 24 dp default, 32 to 40 dp in cooking mode.
- Icons that stand alone get a tooltip and a semantic label. Icons next to a text label are decorative and excluded from semantics.
- Useful kitchen symbols: `skillet`, `timer`, `grocery`, `nutrition`, `restaurant`, `kitchen`, `scale`, `science` (experiments), `menu_book`, `ios_share`, `group` (joint share), `content_copy` (copy).
- **Custom icons:** measuring cups and spoons (1 cup, ½, ⅓, ¼, Tbsp, tsp, and the user's extra tools) aren't in Material Symbols. We draw them on the Material Symbols 24 dp grid with the same rounded 2 dp stroke, so they sit alongside the rest. See Open questions (§14) for how we ship them.
- No emoji in the UI.

## 8. Motion *(Decided: expressive)*

Motion is springy and alive, but always explains something: where an item went, what changed, what was checked. It never makes the user wait.

### 8.1 Springs

Movement uses physics springs instead of fixed durations, based on Material 3 Expressive's motion scheme. Two kinds:

- **Spatial** springs move things (position, size, shape, scale). They may overshoot a little.
- **Effects** springs change color and opacity. They never overshoot.

| Token | Damping ratio | Stiffness | Used for |
|---|---|---|---|
| `spatialFast` | 0.6 | 800 | Small things: checkboxes, chips, switches, a badge count |
| `spatialDefault` | 0.8 | 380 | Cards, sheets, reordering, cooking step changes |
| `spatialSlow` | 0.8 | 200 | Full-screen transitions, the editor opening from a card |
| `effectsFast` | 1.0 | 3800 | Pressed states, icon color |
| `effectsDefault` | 1.0 | 1600 | Fades, color changes |
| `effectsSlow` | 1.0 | 800 | Large fades, the scrim behind a sheet |

All springs have mass 1. In Flutter these are `SpringDescription.withDampingRatio(...)`. Widgets that only take a `Curve` and a `Duration` (implicit animations) get both from a small `SpringCurve` helper in `design_system`, which samples the same simulation.

### 8.2 Signature moments

- **Checking an ingredient:** the check mark pops in (`spatialFast`), the row fades to `on-surface-variant` and gets a strike-through (`effectsDefault`).
- **Reordering sections and steps:** the dragged item lifts (scale 1.02, shadow), neighbors make room, and it settles with `spatialDefault`.
- **Add to grocery list:** the grocery nav badge bumps its count with a small overshoot.
- **Cooking step change:** the step follows the finger while swiping, then settles with `spatialDefault`. Buttons trigger the same motion.
- **Timer finished:** the timer chip pulses (scale, three times) and the device plays a sound and vibrates.

### 8.3 Reduced motion

When the platform asks for reduced motion (`MediaQuery.disableAnimationsOf`), spatial springs are replaced with a short `effectsFast` cross-fade, and nothing scales, slides, or pulses. The timer alert keeps its sound and vibration. Golden tests render with animations settled.

## 9. Components

Shared widgets live in `packages/design_system`. They follow Engineering §5 strictly:

- **Plain inputs.** A widget takes plain values (strings, numbers, enums, callbacks), never domain entities, repositories, or providers. Feature folders read providers and pass values down. This keeps each widget testable in isolation and lets it rebuild only when its inputs change.
- **`const` constructors** and no widget-returning helper methods.
- **One concern each.** A widget that needs a timer or animation owns it locally (for example `TimerChip`), so ticking never rebuilds its parent.
- **Every widget has golden tests** in all four schemes (§12).

### 9.1 Material components we use as-is

Themed through `AppTheme` and used directly, with no wrapper: `FilledButton`, `FilledButton.tonal`, `OutlinedButton`, `TextButton`, `IconButton`, `FloatingActionButton`, `NavigationBar`, `NavigationRail`, `SearchBar`, `TextField`, `Checkbox`, `Switch`, `SegmentedButton`, `FilterChip`, `InputChip`, `Card`, `ListTile`, `ModalBottomSheet`, `AlertDialog`, `SnackBar`, `Badge`, `LinearProgressIndicator`, `CircularProgressIndicator`, `Tooltip`, `MenuAnchor`, `TabBar`, `ReorderableListView`.

Button hierarchy: one `FilledButton` for the main action, `FilledButton.tonal` for important secondary actions, `OutlinedButton` or `TextButton` for the rest.

### 9.2 App components

| Component | What it shows | Key inputs |
|---|---|---|
| `RecipeCard` | Photo, recipe name (serif), total time, calories per serving, optional badges | `title`, `image`, `totalTime`, `caloriesPerServing`, `badges`, `onTap` |
| `AmountText` | A formatted amount with fraction glyphs and a screen-reader label | `quantity` (rational), `unit`, `style` |
| `StepText` | Step text with amounts placed inline and emphasized | `segments` (text and amount parts), `style` |
| `MeasuringGuide` | Which measuring tools to use: `½ cup` `+` `¼ cup` | `tools` (list of tool labels) |
| `IngredientRow` | Amount column, ingredient name, preparation note; optional checkbox | `amount`, `name`, `preparation`, `checked`, `onChanged` |
| `IngredientSplitPreview` | How a typed line was split: amount, ingredient, and preparation as chips the user can fix | `amount`, `name`, `preparation`, `onEdit` |
| `MacroBar` | Horizontal bar of protein, carbs, and fat by calories, with small gaps between segments | `protein`, `carbs`, `fat` (grams) |
| `MacroSummary` | Calories plus P / C / F grams, with the macro bar | `calories`, `protein`, `carbs`, `fat`, `basis` (per serving or batch) |
| `NutrientRow` | One row in the detailed nutrients table | `label`, `value`, `unit`, `indent` |
| `MatchStatusChip` | Where an ingredient's nutrition came from: USDA, Open Food Facts, Edited, or Not matched | `status` |
| `ServingStepper` | − 4 servings + | `servings`, `onChanged`, `min`, `max` |
| `BasisToggle` | Per serving / Per batch | `basis`, `onChanged` |
| `SectionHeader` | A step section name ("Prep") with step count; drag handle in the editor | `title`, `count`, `reorderable` |
| `TimerChip` | A time found in a step; tap to start; shows the countdown while running | `duration`, `label`, `onStart` |
| `GroceryItemRow` | Checkbox, combined quantity, item name, and which recipes it came from | `quantity`, `name`, `sources`, `checked`, `onChanged` |
| `ShareBadge` | "Shared" (joint share) or "Copy" so people know which they're editing | `kind` |
| `ExperimentBadge` | Marks an experiment, in terracotta | `label` |
| `ProBadge` | Marks a Pro feature | none |
| `SyncStatusIcon` | Synced, syncing, offline, or error, as a small icon with a tooltip | `status` |
| `EmptyState` | Icon, title, one sentence, optional action | `icon`, `title`, `message`, `action` |
| `ErrorState` | What went wrong and how to fix it, with a retry action | `message`, `onRetry` |
| `CompactDensity` | Applies compact density to its subtree (§6.2) | `child` |

Details that matter:

- **Amounts in steps** (`StepText`, `cookingAmount`): bold, in `primary`, with a `primary-container` highlight behind them in the editor so replacements are visible and easy to correct (PRD risk table). In cooking mode, the highlight is dropped and the amount is just bold `primary`, which is enough at that size.
- **MacroBar** segments are always labeled nearby (by `MacroSummary` or a legend). Segments are separated by 2 dp gaps in the surface color so they read without relying on hue alone.
- **MatchStatusChip** pairs color with an icon and a word: USDA and Open Food Facts are neutral (`surface-container-high` with an icon), Edited uses `secondary-container`, Not matched uses `warning-container` with a warning icon.
- **TimerChip** is idle in `secondary-container`, running in `tertiary-container` with a live countdown, and done with a pulse (§8.2).

## 10. Patterns

### 10.1 Recipe page

- Photo at the top (full width on phones, 16:10 ratio, `radiusLg` corners on wider screens), then the recipe name in `headlineLarge`, source and times in `bodySmall`, and badges.
- Actions in this order: **Cook** (`FilledButton`, the screen's one primary action), **Add to grocery list** (tonal), then share, experiment, and edit in an overflow menu or icon buttons.
- Sections: Ingredients (with `ServingStepper`), Steps (grouped by section), Nutrition (`MacroSummary` with `BasisToggle`, then the detailed table in compact density), Notes, History.
- On expanded screens, ingredients and steps sit side by side.

### 10.2 Recipe editor and import review

- Ingredients are typed or pasted as plain lines. Each line shows its `IngredientSplitPreview` underneath once parsed, so the user can see and fix the split.
- Unparsed or unmatched lines are flagged with `warning` chips at the line, and a count in a banner at the top ("2 ingredients need a look"). Nothing blocks saving.
- Step sections are reorderable by drag handle, with `spatialDefault` motion. A "Prep" section is suggested first for new recipes.
- Import review uses the same editor with an "Imported from …" header and the source link.

### 10.3 Cooking mode

Cooking mode is the signature feature, so it gets its own rules.

- **Theme:** the current light or dark theme, switched to its high-contrast scheme (`cooking-light` or `cooking-dark`). Every text pair is at least 7:1. *(Decided)*
- **Screen stays awake** while cooking mode is open (`wakelock_plus`), and is released when it closes.
- **One step at a time,** in `cookingStep` style with amounts in `cookingAmount`. A `MeasuringGuide` for each amount sits under the step.
- **Where you are:** a header shows the section and progress ("Prep · Step 2 of 5") in `cookingSection`, with a thin progress bar across the whole recipe.
- **Ingredients for this step:** a checklist of just this step's ingredients, with checkboxes. On compact screens it's a panel under the step; on medium and expanded screens in landscape, it's a side pane (two panes: step on the left, ingredients on the right).
- **Navigation for messy hands:** swipe left or right anywhere, plus large **Back** and **Next** buttons at the bottom, at least 64 dp tall and spanning the width, inside the thumb zone. No small targets, and no invisible tap zones that can be hit by accident. The last step's Next becomes **Done**.
- **Timers:** each time in a step is a `TimerChip`. Running timers collect in a tray pinned above the Back and Next buttons, so they stay visible on every step. A finished timer alerts with sound, vibration, and a pulse.
- **Leaving:** a close button in the top corner; leaving keeps your place, and reopening the recipe offers "Resume cooking".
- **Screen readers:** a step change announces the section, step number, and step text.

### 10.4 Cooking mode text size *(Decided: large, fixed)*

Cooking text has fixed large sizes (§5.3), larger on medium and expanded screens, with no size control inside cooking mode. It still follows the system text size, capped at 1.5×, so the largest step text is about 51 dp on a phone and the layout never breaks.

### 10.5 Nutrition

- Always label the basis: "Per serving (1 of 4)" or "Whole batch".
- Calories in `numberHero`, macros in `numberLarge` with their macro colors and initials.
- Rounding: calories to whole numbers; grams to whole numbers at 10 g and above, one decimal below 10 g; milligrams to whole numbers.
- Unmatched ingredients are counted next to the total ("Excludes 1 unmatched ingredient") with a link to fix it, so totals are never silently wrong (PRD 7.4).
- The detailed nutrients table uses compact density and `number` style, with right-aligned values.

### 10.6 Grocery list

- Grouped by store section, with section names as sticky headers.
- `GroceryItemRow` in comfortable density. Checked items move to a "Checked" group at the bottom with `spatialDefault` motion.
- The add-from-recipe sheet lists the recipe's ingredients with checkboxes, all checked by default, and a single **Add to list** button.

### 10.7 Sharing and experiments

- A jointly shared recipe shows `ShareBadge` ("Shared") on its card and page, and the members in its header. A copy shows "Copy" until it's edited for the first time.
- Experiments use terracotta (`tertiary`) consistently: `ExperimentBadge`, the experiment banner on the recipe page, and its entries in history.
- Leaving a joint share is a confirmation dialog (it can't be undone from the app); everything else that's reversible uses Undo.

### 10.8 Feedback

- **Undo over confirm.** Reversible actions (delete a recipe, remove a grocery item, uncheck all) happen immediately with an Undo snackbar. Dialogs are only for things that can't be undone.
- **Snackbars** use `inverse-surface`, say what happened in a few words ("Recipe deleted"), and have at most one action.
- **Loading** waits 300 ms before showing a progress indicator, so fast loads don't flash. Recipe lists use placeholder cards in `surface-container-low`, not spinners.
- **Empty states** use `EmptyState`: what this space is for and the one action that fills it ("No recipes yet. Paste a link or write your own.").
- **Errors** use `ErrorState`: what went wrong and what to do next, with no apology and no error codes.

### 10.9 Offline and sync

- The app never blocks on the network. Offline is shown only by `SyncStatusIcon` in the library header and settings, never by a banner, unless an action truly needs the network (URL import on web, sharing), and then inline at that action.

### 10.10 Pro

- Pro features show `ProBadge` where they're offered (sync through Recipe App, sharing). Tapping one explains what Pro does and its price in one sheet.
- No nagging: no upsell pop-ups on launch, and no features shown and then locked mid-task.

## 11. Content and voice

- **Plain and calm.** Short sentences, everyday words. Like a friend who cooks well, not a marketing page.
- **Second person,** "you" and "your recipes". The app doesn't say "I" or "we" in the UI.
- **Sentence case** for all UI text. No exclamation marks, no emoji.
- **Name things the way cooks do:** "Prep", "Steps", "Grocery list", "Per serving".
- **Units:** `cup`, `Tbsp`, `tsp`, `oz`, `lb`, `g`, `kg`, `ml`, `l`. Plural cups ("2 cups"), abbreviations never pluralized ("2 Tbsp"). A non-breaking space between a number and its unit.
- **Buttons say what happens:** "Add to grocery list", "Start cooking", "Make this the recipe". Results echo the button: "Added to grocery list".
- **Errors** say what happened and how to fix it: "Couldn't read a recipe on this page. You can add it by hand."

## 12. Accessibility *(Decided: AA everywhere, AAA in cooking mode)*

| Area | Requirement |
|---|---|
| Text contrast | 4.5:1 for normal text, 3:1 for large text (24 dp, or 19 dp bold) |
| Non-text contrast | 3:1 for icons, borders of controls, focus rings, and meaningful marks (macro bars) |
| Cooking mode | 7:1 for all text, via the cooking schemes |
| Touch targets | At least 48 × 48 dp everywhere; at least 64 dp tall for cooking navigation |
| Text scaling | Up to 200% without loss of content or function; cooking mode capped at 1.5× (§10.4) |
| Color | Never the only signal: macros have labels, statuses have icons and words |
| Focus | Visible focus ring on keyboard and switch navigation (web and desktop): 2 dp `primary` outline with 2 dp offset |
| Screen readers | Semantic labels on icon buttons; amounts read as words ("three quarters cup"); cooking step changes announced; decorative icons and images excluded |
| Motion | Reduced motion respected (§8.3) |

**Enforced in tests:**

- A unit test checks every color pair in §4 against its target in all four schemes.
- Widget tests run Flutter's `meetsGuideline` checks (`androidTapTargetGuideline`, `iOSTapTargetGuideline`, `labeledTapTargetGuideline`, `textContrastGuideline`) on each component and key screen.
- Golden tests include a 200% text-scale variant for each component.

## 13. Implementation in Flutter

### 13.1 Package layout

```
packages/design_system/
  lib/
    design_system.dart          Public exports only
    src/
      tokens/
        color_schemes.dart      The four ColorSchemes as constants (§4.2)
        app_colors.dart         AppColors ThemeExtension: macros, warning (§4.3)
        typography.dart         TextTheme + AppTypography extension (§5)
        spacing.dart            AppSpacing constants (§6.1)
        radii.dart              AppRadii constants (§6.4)
        motion.dart             AppMotion springs + SpringCurve (§8)
      theme/
        app_theme.dart          AppTheme.light(), .dark(), .cooking(Brightness)
        component_themes.dart   Button, chip, card, field, nav themes
        context_ext.dart        context.appColors, context.appText, ...
      widgets/                  One file per component in §9.2
  assets/fonts/                 Newsreader and Plus Jakarta Sans variable fonts (OFL)
  test/
    goldens/                    Light, dark, cooking-light, cooking-dark, 200% text
    contrast_test.dart          §12 color pair checks
```

### 13.2 Theme wiring

- `MaterialApp` gets `theme: AppTheme.light()`, `darkTheme: AppTheme.dark()`, and `themeMode` from the user's Light / Dark / System setting (stored in settings, keep-alive provider).
- Cooking mode wraps its route in `Theme(data: AppTheme.cooking(brightness))`, using the brightness of the active theme.
- `useMaterial3: true`, `visualDensity: VisualDensity.standard` on every platform.
- No dynamic color: we never read wallpaper colors.
- Values that change with the scheme (macro colors, warning, extra text styles) are `ThemeExtension`s, read through small context extensions such as `context.appColors.protein`. Values that never change (spacing, radii, motion) are constants (`AppSpacing.space4`, `AppRadii.borderMd`, `AppMotion.spatialDefault`), so widgets that use them can stay `const`. Either way, widgets never hard-code values.
- Material widgets come from `package:material_ui` (`import 'package:material_ui/material_ui.dart'`). Flutter deprecated `package:flutter/material.dart` in 3.47 when Material moved into its own package.

### 13.3 Rules

- No hex colors, raw font sizes, or raw spacing numbers outside `packages/design_system`. A custom lint (or a `grep` check in CI) flags `Color(0x`, `fontSize:`, and `EdgeInsets.all(<number>)` in `apps/`.
- `design_system` depends only on Flutter, `material_ui`, `material_symbols_icons`, and its own fonts. Never on `domain`, Riverpod, or any feature.
- New shared widgets go into `design_system` only once two features need them. Until then they live in the feature folder.

## 14. Open questions

1. **Custom measuring-tool icons:** ship as an icon font (one asset, colors like any icon) or as SVGs through `flutter_svg` (easier to draw and update)? Icon font is the default.
2. **App name and logo:** the working name is still "Recipe App" (PRD). The cover, app icon, and splash screen wait for a real name.
