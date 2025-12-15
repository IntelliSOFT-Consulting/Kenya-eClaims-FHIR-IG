#!/usr/bin/env bash

RED='\033[0;31m'
YEL='\033[1;33m'
NC='\033[0m' # No Color

# do this first, wait 2-3 min before running
# docker run -d -p 8080:8080 alphora/cqf-ruler:latest

## fyi: hapi fhir hosted demo doesn't support measure eval
export FHIR="http://197.248.11.66:8888/fhir"

export HEADER="Content-Type: application/fhir+json"
export output="./output"


function Loader() {
    cd ${output}
    for FILE in $1*.json
    do 
        printf "${FILE}"
        local EYED=$(cat ${FILE}| jq -r .id)
        curl -s -X PUT -H "$HEADER" --data @${FILE} $FHIR/$1/${EYED} | jq .

    done
    cd ${SCRIPTS}
}

# on some servers this isn't needed, but it is included here
# curl -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json $FHIR/Library/FHIR-ModelInfo | jq .

Loader StructureDefinition
Loader ValueSet
