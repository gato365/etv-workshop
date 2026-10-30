#!/usr/bin/env bash
# Rebuilds etv-workshop.zip (the student download) from README.md, qmd/, and data/.
# Run this after editing any of those, then `quarto render`, then commit and push.
set -euo pipefail
cd "$(dirname "$0")"
staging="$(mktemp -d)"
mkdir -p "$staging/etv-workshop"
cp README.md "$staging/etv-workshop/"
cp -R qmd data "$staging/etv-workshop/"
rm -f etv-workshop.zip
( cd "$staging" && zip -r -X -q "$OLDPWD/etv-workshop.zip" etv-workshop )
rm -rf "$staging"
echo "Wrote etv-workshop.zip ($(du -h etv-workshop.zip | cut -f1))"
