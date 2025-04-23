#!/bin/bash

# Check if we are in a Git repository
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "This script must be run inside a Git repository."
    exit 1
fi

echo "Fetching all tags from remote..."
git fetch --tags

# Define the test tag pattern (matches any tag with 't' as the identifier)
TEST_TAG_PATTERN="^(alpha|beta|rc|release)/[0-9]+\.[0-9]+\.[0-9]+t[0-9]+$"

# Find and remove local test tags
echo "Finding and removing local test tags..."
for tag in $(git tag); do
    if [[ $tag =~ $TEST_TAG_PATTERN ]]; then
        echo "Deleting local tag: $tag"
        git tag -d "$tag"
    fi
done

# Find and remove remote test tags
echo "Finding and removing remote test tags..."
for tag in $(git ls-remote --tags origin | awk '{print $2}' | sed 's#refs/tags/##'); do
    if [[ $tag =~ $TEST_TAG_PATTERN ]]; then
        echo "Deleting remote tag: $tag"
        git push origin --delete "$tag"
    fi
done

echo "All test tags have been removed."

