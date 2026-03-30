#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -f "$LOGFILE" ]; then
    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            COUNT=$((COUNT + 1))
        fi
    done < "$LOGFILE"
    echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
    echo "--- Last 5 matching lines ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
else
    echo "Error: File $LOGFILE not found."
    exit 1
fi
