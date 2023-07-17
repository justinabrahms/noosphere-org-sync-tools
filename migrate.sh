#!/usr/bin/env bash
set -o pipefail
FILE=$1
# DEBUG=${DEBUG:-}
# DEBUG_FLAG=$([ -n "$DEBUG" ] && echo "--debug")
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

. "$SCRIPT_DIR"/env

NAME=$(basename "$FILE")
NEW_NAME=$(echo "$NAME" | tr "_" "-")

DATABASE_URL="sqlite:$ORG_ROAM_DB_LOCATION" org-to-subtext $DEBUG_FLAG --filename "$FILE" -o "${NEW_NAME//org/subtext}"
