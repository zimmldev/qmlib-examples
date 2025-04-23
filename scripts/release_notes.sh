#!/bin/bash

# Get the last release commit
release_tags=$(git tag -l --sort=-version:refname release/*)
release_tag=`echo "${release_tags}" | head -1`

release_tag_hash=$(git rev-list -1 ${release_tag})
current_hash=$(git rev-list -1 HEAD)

if [[ $release_tag_hash == $current_hash ]]; then
	echo "We are building a release"
	release_tag=`echo "${release_tags}" | head -2 | tail -1`
fi

echo "Release tag: ${release_tag}"
# Get the list of commits between now and last release
commits=$(git log --pretty=oneline ${release_tag}..HEAD)


# Get all the feature commits
while IFS= read -r line; do
	if [[ $line == *"feat:"* ]]; then
		text=$(echo "${line}" | cut -d ":" -f 2)
		features="${features}
- ${text}"
	fi
	if [[ $line == *"fix:"* ]]; then
		text=$(echo "${line}" | cut -d ":" -f 2)
		fix="${fix}
- ${text}"
	fi
	if [[ $line == *"perf:"* ]]; then
		text=$(echo "${line}" | cut -d ":" -f 2)
		perfs="${perfs}
- ${text}"
	fi
	if [[ $line == *"refactor:"* ]]; then
		text=$(echo "${line}" | cut -d ":" -f 2)
		refactor="${refactor}
- ${text}"
	fi
	if [[ $line == *"ci:"* ]]; then
		text=$(echo "${line}" | cut -d ":" -f 2)
		ci="${ci}
- ${text}"
	fi
done <<< "$commits"

echo "Build version: ${BUILD_VERSION}
Build number: ${BUILD_NUMBER}
Build date: ${BUILD_DATE}
Qt version: ${QT_VERSION}
Previous release: ${release_tag}

Features:${features}

Fixes:${fix}

Performance improvement:${perfs}

Refactor:${refactor}

CI:${ci}
---
${commits}" > release_notes.txt
