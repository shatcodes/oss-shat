#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shatakshi

PACKAGE="mysql-server"

echo "--- Checking Package Status ---"

# Check if package is installed [cite: 134]
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is currently installed on this system."
    # Showing Version and License info [cite: 139]
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Homepage|Download-Size'
else
    echo "Error: $PACKAGE is NOT installed."
    exit 1
fi

echo "------------------------------------------"
# Case statement for philosophy notes [cite: 141]
case $PACKAGE in
    "mysql-server")
        echo "Philosophy: MySQL is the open-source database at the heart of millions of apps."
        ;;
    "apache2")
        echo "Philosophy: Apache is the web server that built the open internet."
        ;;
    "vlc")
        echo "Philosophy: VLC shows that student-built tools can achieve global scale."
        ;;
    *)
        echo "Philosophy: Open source enables innovation through shared knowledge."
        ;;
esac
echo "------------------------------------------"
