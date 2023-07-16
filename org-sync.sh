#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
# Line delimited list of files to sync
REGISTRY_FILE="$SCRIPT_DIR/registry.txt"

"$SCRIPT_DIR"/build-symlinks.sh
while read -r f; do
    "$SCRIPT_DIR"/migrate.sh "$f"
done <"$REGISTRY_FILE"
