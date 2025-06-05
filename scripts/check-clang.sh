#!/bin/bash

NC='\033[0m' # No Color
RED='\033[0;31m'
fail="${RED}x${NC}"

# Iterate over all C++ files and check their formatting
for file in $(find . -type f \( -name "*.cpp" -o -name "*.c" -o -name "*.h" \)); do
    # Check formatting of the file in check mode
    output=$(clang-format -output-replacements-xml $file)

    # Extract replacements count from output
    replacements_count=$(echo $output | grep -oPm1 "(?<=<replacement ).*(?=>)")

    # If replacements are found, the file is not formatted correctly
    if [ "$replacements_count" ]; then
        echo -e "$fail File is not formatted correctly: $file"
        wrongly_formatted=true
    fi
done

# If any file is wrongly formatted, exit with code 1
if [ "$wrongly_formatted" = true ]; then
    exit 1
fi
