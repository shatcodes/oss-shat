#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shatakshi

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
MYSQL_CONFIG="/etc/mysql"

echo "--- Directory Audit Report ---"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracts Permissions, Owner, and Group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Gets the size in a human-readable format
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------"
echo "Checking MySQL Config Directory..."
if [ -d "$MYSQL_CONFIG" ]; then
    ls -ld "$MYSQL_CONFIG" | awk '{print "MySQL Config Permissions: "$1" | Owner: "$3}'
else
    echo "MySQL config directory not found."
fi
