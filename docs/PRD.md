# Sousline: Product Requirements Document

| | |
|---|---|
| **Status** | Draft |
| **Owner** | Tyler |
| **Last updated** | 2026-11-12 |
| **Name** | Sousline (Tyler, 2026-11-13) |

---

## 1. Overview

Sousline is a cross-platform recipe manager, free to use with an optional Pro subscription, that brings together three jobs home cooks currently split across several apps: **keeping recipes**, **knowing what's in them nutritionally**, and **actually cooking them**. Users can import a recipe from any website or from Umami, or write their own. They get accurate nutrition and macros for every recipe automatically, turn recipes into a grocery list, and cook with a guided cooking mode that tells them exactly how much of each ingredient to add, and with what, at the moment they need it.

The app works fully offline and syncs between phone, tablet, and web.

## 2. Problem

**Recipes and nutrition live in different apps.** People who care about what they eat keep recipes in one app (to cook and shop) and track macros in another. Getting a recipe into a macro tracker is tedious: ingredients have to be re-entered one by one, and the result drifts out of date whenever the recipe changes. The two apps never agree.

**Cooking modes don't help you cook.** Most recipe apps' "cooking mode" is the recipe text in a bigger font. Steps say things like "add the flour and sugar", so the cook has to scroll back to the ingredient list to find the amount, then work out which measuring cups or spoons to use. Doing that with messy hands, mid-recipe, is where mistakes happen. The cook has to think about the recipe instead of the food.

**Existing tools each solve part of it.** Today's options are strong in one area and weak in the others:

| Tool | Strength | Gap |
|---|---|---|
| Umami | Recipe library, cooking, grocery lists | No reliable nutrition, basic cooking mode |
| MacroFactor | Macro tracking | Hard to enter recipes |
| Recipe websites | Huge recipe selection | Ads, clutter, no personal library |

## 3. Vision

> **The first app you open to save a recipe, cook it, or find out what's in it.**

Cooking should feel like being guided by someone standing next to you: every step tells you what to add, how much, and what to measure it with, so you never have to scroll back or do math.

## 4. Goals and non-goals

### Goals

1. **One home for recipes and nutrition.** Every recipe in the library shows accurate nutrition and macros, with no extra work from the user.
2. **The best cooking experience available.** Cooking mode gives users everything they need for the current step, so they never have to leave it.
3. **Effortless capture.** Getting a recipe in, from a URL, from Umami, or written by hand, is fast and reliable.
4. **Works everywhere, always.** Full functionality offline, with seamless sync across iOS, Android, and web.
5. **No lock-in.** Users can bring their recipes in from Umami and take them back out at any time.

### Non-goals

- **Social feeds.** No public feed, followers, likes, or comments. Sharing is direct and personal (see Sharing below).
- **Grocery delivery or commerce.** No ordering, store integrations, or affiliate links.
- **Pantry and inventory tracking.** The app does not track what's in the user's kitchen.
- **Daily food logging.** The app shows nutrition for recipes, but it doesn't log what users eat or track daily targets. Dedicated macro trackers (such as MacroFactor) keep that job.
- **AI features.** The app has no AI-generated recipes, AI chat, AI photo import, or AI suggestions. All behavior is deterministic and explainable.
- **Meal planning.** No calendar of planned meals. Grocery lists are built directly from recipes.
- **Sending nutrition to other apps.** The app doesn't push nutrition to macro trackers or health platforms.
- **General cooking notes and ratings.** Notes on how a cook went are recorded through experiments (7.11), with no separate ratings or cook log.
- **Ads or selling data.** Revenue comes only from the optional Pro subscription (7.12).

## 5. Target users

### Primary persona: "The Macro-Aware Home Cook" (Tyler)

- Cooks at home several times a week from a mix of saved web recipes and their own creations.
- Tracks macros and wants to know the nutrition of what they cook without re-entering it elsewhere.
- Currently juggles a recipe app and a nutrition app, and is frustrated by the duplicate work.
- **Needs:** accurate per-serving macros, fast recipe capture, and a cooking mode that removes the thinking.

### Secondary persona: "The Recipe Collector"

- Has a large collection of recipes saved across websites, screenshots, and another recipe app.
- Cares less about nutrition and more about having everything in one tidy, searchable place.
- **Needs:** reliable importing, good organization and search, grocery lists, and a great cooking mode.

### Secondary persona: "The Family Recipe Keeper"

- Keeps the household's go-to recipes and family favorites, and wants partners, kids, or relatives to have them too.
- **Needs:** easy sharing of recipes and folders with family, and confidence that everyone sees the latest version.

## 6. User stories

### Capture
- As a home cook, I want to paste a recipe URL and get a clean, complete recipe, so I can save it without the website's clutter.
- As an Umami user, I want to import my whole library, so I can switch without starting over.
- As a cook, I want to export my recipes back to Umami, so I never feel locked in.
- As a cook, I want to write my own recipe quickly, typing ingredients the way I naturally would ("2 cups flour"), so creating recipes isn't a chore.

### Nutrition
- As a macro-aware cook, I want every recipe to show calories, protein, carbs, and fat per serving, so I know what I'm eating.
- As a macro-aware cook, I want to see and correct how each ingredient was matched for nutrition, so I can trust the numbers.
- As a macro-aware cook, I want to see total macros and detailed nutrients for the whole batch as well as per serving, so I can portion and log however I like.
- As a macro-aware cook, I want each recipe to remember the serving size I set, so its per-serving numbers are always the ones I use.
- As a cook, I want nutrition to update automatically when I change a recipe or its servings, so it's always accurate.

### Cooking
- As a cook, I want a recipe's prep work grouped up front, so I'm never rushing to chop something while a timer is already running.
- As a cook, I want each step to show the exact amounts of the ingredients it uses, so I never scroll back to the ingredient list.
- As a cook, I want each amount to suggest which measuring cups or spoons to use, so I don't have to do the math.
- As a cook, I want amounts in the steps to reflect the scaling I chose, so doubling a recipe just works.
- As a cook, I want my screen to stay on and to move between steps easily with messy hands, so cooking mode stays out of my way.
- As a cook, I want to start timers straight from the steps that mention a time.

### Planning and shopping
- As a cook, I want an "Add to grocery list" button on every recipe, so shopping for it is one tap away.
- As a cook, I want to go through a recipe's ingredients line by line and choose which ones to add, so I skip what I already have.
- As a cook, I want to add several recipes to the same list, so I can shop for the week in one trip.
- As a shopper, I want similar items combined and grouped by store section, so shopping is quick.

### Experiments and history
- As a cook, I want to try a variation of a recipe and note what I changed and how it went, so I remember what worked.
- As a cook, I want to promote a successful experiment to become the recipe, or keep it only as a logged attempt, so my main recipe always reflects my best version.
- As a cook, I want to see a recipe's history of changes and experiments, so I can look back at what I've tried.

### Library and sync
- As a cook, I want to organize recipes into folders and find them quickly with search.
- As a cook, I want to use the app with no internet and have my changes appear on my other devices once I'm back online.

### Sharing
- As a family recipe keeper, I want to share a recipe or a folder jointly with family members who use the app, so we edit one version together and a change from any of us updates it for everyone.
- As a cook, I want to send someone a copy of a recipe or folder, so they can make it their own without affecting mine.
- As a cook, I want to send a single recipe to a friend, even if they don't use the app.

## 7. Features

The app launches as one complete release. Every feature in 7.1 to 7.11 is part of that release, and no features are planned for a later phase. Anything not listed here is out of scope (see Non-goals).

### 7.1 Recipe library
- Create, edit, duplicate, and delete recipes.
- Each recipe includes a title, photo, servings, times, ingredients, steps, notes, and source.
- Organize recipes into folders. A recipe can live in more than one folder.
- Search by title, ingredient, and folder.

### 7.2 Recipe import and export
- **Import from URL:** Paste or share a link from the browser or share sheet and get a clean recipe with ingredients, steps, servings, times, and photo. The user reviews it before saving.
- **Umami import and export:** Bring a full Umami library in, including organization and photos where possible, and export recipes in a format Umami can read.
- Failed or partial imports are clearly flagged and easy to fix by hand.

### 7.3 Easy recipe creation
- Ingredients are typed in plain language ("1 ½ cups rolled oats") and understood automatically.
- **Amount and ingredient are separated:** Each ingredient line is split into its amount ("1 ½ cups") and the ingredient itself ("rolled oats"), along with any preparation notes ("chopped"). This is what powers smart step text and measuring guidance in cooking mode (7.5), as well as scaling, unit conversion, nutrition, and grocery lists. The same separation applies to recipes imported from URLs and Umami.
- Users can see how each line was split and correct it if it's wrong.
- Fast entry on both phone and web, including pasting a whole ingredient list at once.
- **Recipe sections:** Steps can be grouped into named sections, such as "Prep", "Sauce", or "Assembly", and sections are easy to reorder. A typical use is a "Prep" section first, listing everything that can be done ahead of time (chopping, measuring, preheating) before the time-sensitive cooking starts.

### 7.4 Nutrition and macros
- Automatic nutrition for every recipe: calories and macros (protein, carbs, fat), plus a detailed nutrient breakdown (such as fiber, sugar, sodium, saturated fat, cholesterol, and key vitamins and minerals).
- Every value is shown both as a **total for the whole batch** and **per serving**.
- Each recipe **remembers its serving size**, as set by the user, and uses it everywhere per-serving numbers appear.
- **Nutrition sources:** Data comes from two free sources. **USDA FoodData Central** is the primary source, for generic ingredients and US branded products. **Open Food Facts** supplements it for packaged products the USDA doesn't cover. Generic ingredients prefer USDA data, which is the more accurate of the two.
- Each ingredient is matched to one of these sources. Users can see the match and its source, and change it, including picking a specific branded product.
- Ingredients that can't be matched are clearly flagged, so nutrition is never silently wrong.
- Nutrition responds instantly to changes in ingredients, quantities, and servings.

### 7.5 Guided cooking mode (signature feature)
- **Smart step text:** Ingredient mentions in steps are replaced with the specific amounts for this recipe. "Whisk in the sugar" becomes "Whisk in **¾ cup** sugar".
- **Measuring guidance:** Each amount suggests the simplest set of standard measuring tools. For example, ¾ cup becomes "½ cup + ¼ cup", and 5 tsp becomes "1 Tbsp + 2 tsp".
- **My measuring tools:** Users can tell the app which measuring cups and spoons they own (for example, a ⅔ cup or a ½ Tbsp), and suggestions only use those tools. A standard set is assumed until they customize it.
- **Scaling-aware:** Amounts and measuring guidance follow the chosen servings.
- One step at a time, with large text, swipe or tap navigation, and the screen kept awake.
- Follows the recipe's sections in order, so prep work comes before anything time-sensitive, and the cook always knows which section they're in.
- An at-a-glance view of the ingredients used in the current step, with the ability to check them off.
- Timers can be started from times mentioned in steps.

### 7.6 Scaling and unit conversion
- Scale any recipe by servings or by a multiplier.
- Choose between US customary and metric units, with sensible rounding to amounts people can actually measure.

### 7.7 Grocery lists
- Every recipe has an **Add to grocery list** button.
- Before adding, the user goes through the ingredients line by line and includes or excludes each one. All are included by default.
- Several recipes can be added to the same list.
- Duplicate items are combined across recipes ("2 onions + 1 onion = 3 onions").
- Items are grouped by store section and can be checked off while shopping. Manual items can be added.

### 7.8 Offline and cross-device sync
- iOS, Android, and web, with the same core features on each.
- Everything works offline, including import review, cooking, nutrition, and grocery lists. Changes sync automatically and seamlessly once back online, without lost edits.
- **Two ways to sync**, chosen by the user (see 7.12):
  - **Google Drive sync (free):** The library is stored in the user's own Google Drive and syncs through it. It requires signing in with Google, and works on iOS, Android, and web.
  - **Sousline cloud sync (Pro):** The library syncs through Sousline's own service. It works with Google or Apple sign-in, and is the faster, more seamless option.
- Users can switch between the two at any time without losing anything.

### 7.9 Accounts
- A simple sign-in so a user's library follows them across devices.
- **Signing in is optional.** The whole app works without an account on a single device. Sign-in is only needed for sync across devices and sharing.
- Google Drive sync requires signing in with Google. Apple sign-in users sync through Sousline cloud sync. Signing in later brings everything the user already created into their account.
- Sign in with **Google** or **Apple** only. The app does not manage its own usernames or passwords.

### 7.10 Sharing
- **Between app users:** Share a single recipe or a whole folder with another user. When sharing, the sharer chooses one of two methods:
  - **Share jointly:** Both people have the same recipe or folder and can edit it. A change from anyone updates it for everyone, which suits a household keeping a single set of family recipes.
  - **Send a copy:** The recipient gets their own independent version. Changes on either side don't affect the other.
- The recipient can see which method was used, so it's always clear whether they're editing a shared recipe or their own copy.
- In a joint share, each person keeps their own serving size. Changing it never affects anyone else.
- Anyone can leave a joint share, and the others keep the recipe or folder. Deleting a jointly shared recipe removes it only for the person deleting it, so it counts as leaving. Someone who wants to keep their own version can make a copy before leaving.
- **Link for anyone:** Share a recipe as a link that anyone can view, even without the app.

### 7.11 Recipe experiments and history
- **Start an experiment:** From any recipe, start an experiment that begins as a copy of the current version. Change ingredients, amounts, or steps freely without touching the original.
- **Cook it:** Experiments work everywhere a recipe does, including cooking mode, nutrition, and grocery lists.
- **Record the results:** Add a short description of what changed ("swapped butter for olive oil") and notes on how it turned out.
- **Decide what to keep:** Either **make it the new recipe**, so the experiment replaces the current version, or **keep it as an experiment**, so the recipe stays the same and the attempt is logged in its history.
- **History:** Each recipe has a timeline of past versions and experiments, each with its changes and notes. Users can view any past version and restore it.
- **Experiments in joint shares:** Anyone in a joint share can start experiments, and anyone can make an experiment the new recipe for everyone. Each experiment has a **Share with others** option, off by default. Experiments stay private to their creator unless it's turned on. An experiment that becomes the new recipe is visible to everyone in its history.

### 7.12 Plans and pricing
The goal of Pro is to cover the cost of running the service, with a little extra. The free/Pro line is set before launch and Pro is offered from day one, so no feature is ever taken away from free users later. Gating is by feature, not by usage limits.

| | Free | Pro (subscription) |
|---|---|---|
| Everything on one device, fully offline | ✓ | ✓ |
| Import, nutrition, cooking mode, grocery lists, experiments | ✓ | ✓ |
| Sync across devices and web through Google Drive | ✓ | ✓ |
| Sync through Sousline cloud (Google or Apple sign-in) | | ✓ |
| Sharing between app users, jointly or as a copy | | ✓ |
| View-only recipe links for anyone | ✓ | ✓ |

- Sharing is Pro because it always needs Sousline's service, even for Google Drive users. Jointly shared recipes are stored on Sousline's service so everyone sees the same version.
- **Who needs Pro:** Sharing requires Pro, but recipients don't need it. A joint share keeps working as long as at least one person in it has Pro. If nobody in a joint share has Pro anymore, it stops syncing between people and everyone keeps their own copy.
- Pro is a low-priced subscription, with yearly billing as the default. The exact price is set once real service costs are known after implementation, before public release.
- Beta testers don't get free Pro.
- If cloud sync costs grow beyond what Pro covers, usage limits on Pro (such as photo storage) may be added. Free features stay as they are.

## 8. Success metrics

### North star
**Sousline is the first app opened to add a recipe, cook, or answer a nutrition question.** For Tyler, this means Umami and recipe entry in MacroFactor are no longer needed.

### Product metrics

| Area | Metric | Initial target |
|---|---|---|
| Engagement | Weekly active cooks (users who complete a cooking session in a week) | Grows month over month |
| Retention | Users still active 4 weeks after signup | ≥ 40% |
| Cooking mode | Cooking sessions completed without leaving cooking mode | ≥ 80% |
| Import | URL imports saved with no manual fixes | ≥ 85% |
| Nutrition | Ingredients matched automatically without user correction | ≥ 90% |
| Sync | Offline edits that sync without loss or conflict | ≥ 99.9% |
| Quality | App store rating | ≥ 4.5 |

Targets are starting points and will be refined after launch.

## 9. Assumptions and constraints

- Ongoing costs must stay low. Nutrition data is free, free-tier sync runs through the user's own Google Drive, and Pro revenue covers Sousline cloud sync and sharing.
- iOS, Android, and web are built from a single shared codebase, so behavior is consistent everywhere.
- **Release plan:** A private beta with Tyler and a small group of friends comes before the public release. There is no target date.
- The first release is English-only and supports US customary and metric units.

## 10. Risks

| Risk | Impact | Mitigation |
|---|---|---|
| Recipe websites vary widely, so URL import fails on some | Poor first impression, manual work | Always let users review and fix imports, and track failures by site |
| Umami's export format changes or is incomplete | Migration breaks for key users | Validate against real exports early, and document what transfers |
| Nutrition data is inaccurate, especially crowd-sourced Open Food Facts entries | Loss of trust in the core value | Prefer USDA data, show each match and its source, flag unmatched ingredients. Confirm both sources' license terms, including Open Food Facts' share-alike requirements |
| Smart step text inserts the wrong amount or ingredient | User cooks the recipe wrong | Show replacements visibly, make them easy to correct, test on a wide set of recipes |
| Two sync options (Google Drive and Sousline cloud) double the work to build and keep reliable | Slower delivery, sync bugs | Treat both as one sync experience with shared rules, and test switching between them thoroughly |
| Sync conflicts when the same recipe is edited offline on two devices | Lost edits, lost trust | Define clear conflict rules and never silently discard changes |
| Sharing imported recipes raises copyright concerns | Legal exposure | Keep source attribution, and limit public sharing of imported content |
| Scope creep, since everything ships in one release | Delays launch, competes with dedicated trackers | Keep a firm feature list, and add features only by explicit decision. Daily food logging is a non-goal |

## 11. Open questions

1. **Pro price:** What yearly price covers service costs with a little margin? This is decided after implementation, once real costs are known.
