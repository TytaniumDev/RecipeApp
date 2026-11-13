/// A fractional index used to order sections, steps, ingredients, and
/// grocery items (ENGINEERING.md §7).
///
/// Keys compare as plain strings. Moving one item writes one new key
/// between its neighbours, so a reorder changes one row and merges cleanly
/// during sync. Generating keys is the job of a fractional indexing helper,
/// which is not written yet.
extension type const SortKey(String value) implements Comparable<String>;
