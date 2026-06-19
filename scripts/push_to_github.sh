#!/bin/bash
set -e

# Usage:
# 1. Unzip this package.
# 2. cd customer-asset-growth-skill
# 3. git init
# 4. git remote add origin https://github.com/<owner>/<repo>.git
# 5. bash scripts/push_to_github.sh

echo "Preparing Customer Asset Growth Skill repository..."

git add .
git commit -m "init: add production customer asset growth skill" || echo "No changes to commit."

CURRENT_BRANCH=$(git branch --show-current)
if [ -z "$CURRENT_BRANCH" ]; then
  git branch -M main
else
  git branch -M main
fi

git push -u origin main

echo "Done. Skill package pushed to GitHub."
