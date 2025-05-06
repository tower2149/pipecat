#!/usr/bin/bash
tmpfile=$(mktemp)
if [ -t 0 ]; then
    echo "" > "$tmpfile"
else
    cat > "$tmpfile"
fi
cat "$tmpfile"
"$@"
rm "$tmpfile"
