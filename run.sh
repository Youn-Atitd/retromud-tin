#!/bin/bash

year=$(date +%Y)
month=$(date +%m)


# Get the current directory.
cur="$(cd "$(dirname  "${BASH_SOURCE[0]}")" && pwd)"
cd "${cur}"
mkdir -p log/$year/$month

# Run tintin++
tt++ -r main.tt
