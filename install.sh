#!/usr/bin/env bash
set -e

SKILL_DIR="$HOME/.claude/skills/google-ads-copywriter"

echo ""
echo "Installing Google Ads Copywriter skill for Claude Code..."
echo ""

# Detect if running via curl | bash (no local files) or from cloned repo
if [ -f "SKILL.md" ]; then
  SRC_DIR="."
else
  TMP_DIR=$(mktemp -d)
  echo "Cloning repository..."
  git clone --depth=1 https://github.com/jeevanbavandla/google-ads-copywriter "$TMP_DIR" 2>/dev/null
  SRC_DIR="$TMP_DIR"
fi

# Create skill directories
mkdir -p "$SKILL_DIR/references"

# Copy files
cp "$SRC_DIR/SKILL.md" "$SKILL_DIR/SKILL.md"
cp "$SRC_DIR/references/google-ads-specs.md" "$SKILL_DIR/references/google-ads-specs.md"
cp "$SRC_DIR/references/copywriting-best-practices.md" "$SKILL_DIR/references/copywriting-best-practices.md"

# Clean up temp dir if used
[ -n "${TMP_DIR:-}" ] && rm -rf "$TMP_DIR"

echo "Done! Google Ads Copywriter is installed."
echo ""
echo "Start Claude Code and say:"
echo "  'write google ads copy for [your client]'"
echo "  'create ad copies for [business name]'"
echo ""
