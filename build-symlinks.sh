#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

. "$SCRIPT_DIR"/env
mkdir -p $SYMLINK_DIR

for i in $(find "$ORG_ROAM_DIR" -maxdepth 1 -name "*.org"); do
    ln -s "$i" "$(echo "$i" | sed -Ee "s,.*roam/[[:digit:]]+-,$SYMLINK_DIR/,g")" 2>/dev/null
done
