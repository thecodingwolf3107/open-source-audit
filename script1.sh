#!/bin/bash
# Script 1: System Identity Report
# Author: Ayushman Kumar | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Ayushman Kumar"
SOFTWARE_CHOICE="Linux"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# Distro name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE_TIME"
echo "License : Most Linux distributions use the GPL (General Public License)"
