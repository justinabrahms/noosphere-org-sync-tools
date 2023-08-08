#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
# Line delimited list of files to sync
SHARE_FILES=$(sqlite3 -echo ~/.emacs.d/org-roam.db "select n.file from tags t left join nodes n on t.node_id = n.id where t.tag = '\"share\"';")
WITHOUT_QUOTES=$(echo "$SHARE_FILES" | tr '"' ' ')

for f in $WITHOUT_QUOTES; do
    "$SCRIPT_DIR"/migrate.sh "$f"
done


# missing links
echo "Here are the broken links in your sphere (e.g. not yet marked as shared):"

sqlite3 -echo ~/.emacs.d/org-roam.db "
with shared as (select n.id as id from tags t left join nodes n on t.node_id = n.id where t.tag = '\"share\"')
select distinct n.title from nodes n left join links l on l.dest = n.id where l.source in shared and l.dest not in shared;
"
