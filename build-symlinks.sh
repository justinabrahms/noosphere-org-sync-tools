#!/usr/bin/env bash

mkdir -p /tmp/org-symlinks

for i in $(find ~/Dropbox/docs/roam/ -maxdepth 1 -name "*.org"); do
    ln -s "$i" "$(echo "$i" | sed -Ee 's,.*roam/[[:digit:]]+-,/tmp/org-symlinks/,g')" 2>/dev/null
done
