#!/bin/bash
# Script 1: System Identity Report
# Author: Shatakshi
# Course: Open Source Software

# --- Variables [cite: 105]
STUDENT_NAME="Shatakshi"
SOFTWARE_CHOICE="MySQL"

# --- Gathering System Info using command substitution $() [cite: 99, 109]
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extracting Distro name from os-release file
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2)
CURRENT_DATE=$(date)

# --- Display [cite: 113]
echo "=========================================="
echo "      $SOFTWARE_CHOICE Open Source Audit"
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Distro Name  : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Uptime       : $UPTIME"
echo "Current Date : $CURRENT_DATE"
echo "------------------------------------------"
echo "Message: This system is powered by the Linux Kernel, 
which is licensed under the GPL v2."
echo "=========================================="
