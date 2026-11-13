#!/usr/bin/env bash
# Fails when a workspace member has tests but no job in the CI matrix, so a
# package can't silently go untested. Run from the repository root.
set -euo pipefail

status=0
members=$(sed -n '/^workspace:/,/^[^ ]/p' pubspec.yaml | sed -n 's/^  - //p')

for member in $members; do
  if [ -n "$(find "$member/test" -name '*_test.dart' 2>/dev/null)" ] &&
    ! grep -q "package: $member\$" .github/workflows/ci.yml; then
    echo "::error::$member has tests but no entry in the CI matrix in .github/workflows/ci.yml"
    status=1
  fi
done

if [ "$status" -eq 0 ]; then
  echo "Every workspace member with tests is in the CI matrix."
fi
exit "$status"
