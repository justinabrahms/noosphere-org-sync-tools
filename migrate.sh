#!/usr/bin/env bash
set -o pipefail
FILE=$1
# DEBUG=${DEBUG:-}
# DEBUG_FLAG=$([ -n "$DEBUG" ] && echo "--debug")

NAME=$(basename $FILE)
NEW_NAME=$(echo $NAME | tr "_" "-")

DATABASE_URL="sqlite:/home/abrahms/.emacs.d/org-roam.db" org-to-subtext $DEBUG_FLAG --filename "$FILE" -o "${NEW_NAME//org/subtext}"
