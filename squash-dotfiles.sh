#!/usr/bin/env bash

if [ ! -d .git ]; then
    echo "Not in a Git directory"
    exit 1
fi

if [ ! "$(git rev-parse --abbrev-ref HEAD)" = "main" ]; then
    echo "Not on main branch"
    exit 1
fi

TOTAL_COMMITS=$(git rev-list --count HEAD)
COMMITS_TO_KEEP=50
COMMITS_TO_SQUASH=$((TOTAL_COMMITS - COMMITS_TO_KEEP))

if [ "$TOTAL_COMMITS" -le $((COMMITS_TO_KEEP + 2)) ]; then
    echo "Nothing to squash"
    exit 0
fi

BASE_COMMIT=$(git rev-parse HEAD~$COMMITS_TO_KEEP)
COMMIT_MESSAGE="chore: squash history"

echo "Found $TOTAL_COMMITS commits..."
echo "Keeping the last $COMMITS_TO_KEEP commits..."
echo "Squashing $COMMITS_TO_SQUASH commits..."
echo "Using $BASE_COMMIT as base..."

git checkout -b temp-squash "$BASE_COMMIT"
git reset --soft "$(git rev-list --max-parents=0 HEAD)"
git commit -m "$COMMIT_MESSAGE"
git cherry-pick "$BASE_COMMIT"..main
git branch -f main
git checkout main
git branch -D temp-squash
git push --force origin main

echo "Complete!"
exit 0
