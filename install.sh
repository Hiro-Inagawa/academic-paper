#!/bin/bash
set -e

SKILL_DIR="$HOME/.claude/skills/paper-audit-skill"
REPO="https://github.com/Hiro-Inagawa/paper-audit-skill.git"
TMP_DIR=$(mktemp -d)

echo ""
echo "  Paper Audit Skill - Installing..."
echo ""

# Clone repo to temp directory
git clone --depth 1 "$REPO" "$TMP_DIR" 2>/dev/null

# Create skill directory and copy the skill tree
mkdir -p "$SKILL_DIR"
cp -r "$TMP_DIR/skills/paper-audit-skill/." "$SKILL_DIR/"

# Clean up temp repo
rm -rf "$TMP_DIR"

echo ""
echo "  Done. Paper Audit Skill installed to $SKILL_DIR"
echo ""
echo "  Usage: In Claude Code, mention an academic paper, manuscript, arxiv,"
echo "  or open a .tex file. The skill will ask for the paper type and venue,"
echo "  then follow the matching conventions."
echo ""
echo "  Supported paper types: empirical quantitative, empirical qualitative,"
echo "  autoethnography, theory, systematic review, position paper."
echo ""
echo "  Supported venues: arxiv, NeurIPS/ICML/ICLR, CHI/CSCW/DIS, journal, thesis."
echo ""
echo "  To audit the skill:  see verify.md in the repository root."
echo ""
