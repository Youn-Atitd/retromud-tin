#!/bin/bash
year=$(date +%Y)
month=$(date +%m)

# Scripts expect cwd to be bin/, not retromud-tin/
bin="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${bin}"
mkdir -p retromud-tin/log/$year/$month

tt++ -r retromud-tin/main.tt
