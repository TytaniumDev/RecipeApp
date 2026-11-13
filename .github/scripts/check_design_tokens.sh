#!/usr/bin/env bash
# Fails when app code hard-codes a color, font size, or padding instead of
# using design_system tokens (DESIGN_SYSTEM.md §13.3). Run from the
# repository root.
set -euo pipefail

pattern='Color\(0x|fontSize:|EdgeInsets\.all\([0-9]'
matches=$(grep -rnE "$pattern" apps --include='*.dart' \
  --exclude='*.g.dart' --exclude-dir=gen --exclude-dir=test || true)

if [ -n "$matches" ]; then
  echo "$matches"
  echo "::error::Use design_system tokens (context.colors, context.appText, AppSpacing) instead of raw values in apps/. See DESIGN_SYSTEM.md §13.3."
  exit 1
fi
echo "No raw colors, font sizes, or padding in apps/."
