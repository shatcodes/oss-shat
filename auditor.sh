#!/bin/bash
# =============================================================
# Script 1: System Identity Report
# Author: Shatakshi Akhilesh Thakur | Roll: 24BSA10134
# Course: Open Source Software | VITyarthi
# Description: Displays a welcome screen with system info and
#              confirms the OS and Firefox license details.
# =============================================================

# --- Student & Software Variables ---
STUDENT_NAME="Shatakshi Akhilesh Thakur"        
ROLL_NUMBER="24BSA10134"   
SOFTWARE_CHOICE="Firefox"          

# --- Gather System Information using command substitution ---
KERNEL=$(uname -r)                                                           
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  
USER_NAME=$(whoami)                                                           
HOME_DIR=$HOME                                                               
UPTIME=$(uptime -p)                                                    
CURRENT_DATE=$(date '+%A, %d %B %Y')                                    
CURRENT_TIME=$(date '+%H:%M:%S')                                          

# --- Get Firefox version if installed ---
if command -v firefox &>/dev/null; then
    FIREFOX_VERSION=$(firefox --version 2>&1)  
else
    FIREFOX_VERSION="Firefox not found"
fi

# --- Display the System Identity Report ---
echo "============================================================"
echo "        OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT         "
echo "============================================================"
echo ""
echo "  Student    : $STUDENT_NAME ($ROLL_NUMBER)"
echo "  Software   : $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"
echo "  Distro     : $DISTRO"
echo "  Kernel     : $KERNEL"
echo "  User       : $USER_NAME"
echo "  Home Dir   : $HOME_DIR"
echo "  Uptime     : $UPTIME"
echo "  Date       : $CURRENT_DATE"
echo "  Time       : $CURRENT_TIME"
echo "  Firefox    : $FIREFOX_VERSION"
echo "------------------------------------------------------------"

# --- License message for Firefox and the OS ---
echo "  OS License     : The Linux kernel is licensed under GPL v2."
echo "                   You have the freedom to run, study, modify,"
echo "                   and distribute this software freely."
echo ""
echo "  Firefox License: Firefox is released under the Mozilla"
echo "                   Public License 2.0 (MPL 2.0)."
echo "                   It is a weak copyleft license — modified"
echo "                   files must stay open source, but it can"
echo "                   be combined with proprietary code. This"
echo "                   makes it more flexible than GPL."
echo "============================================================"
echo ""
