#!/bin/bash

path=./temp
string_to_search='\"unfinished\"'
# First get all translated
error=0
for filename in ${path}/lang/merged/*.qm; do
	f="$(basename -- $filename)"
	f="${f%.*}"
	GREEN='\033[0;32m'
	RED='\033[0;31m'
	NC='\033[0m' # No Color
	success="${GREEN}✓${NC}"
	fail="${RED}x${NC}"
	languageResult=true
	results=""
	for source in ${path}/ts/*/${f}.ts; do
		result=$(echo "${source}" | grep -oP "^${path}/ts/\K.*")

 		if grep -q ${string_to_search} "$source"; then
			result="${result} ${fail}"
			s=$(cat ${source})
			result="${result}
${s}"
 			error=1
			languageResult=false
		else
			result="${result} ${success}"
		fi
		results="${results}
${result}"
	done
	output="Language ${f}"
	if ${languageResult}; then
		output="${output} ${success}"
	else
		output="${output} ${fail}"
	fi
	echo "
------------"
	echo -e "${output}"
	echo -e "${results}"
done

exit ${error}

