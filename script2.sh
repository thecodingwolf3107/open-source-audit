#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l $PACKAGE | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    httpd) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    vlc) echo "VLC: plays almost every media format freely" ;;
    firefox) echo "Firefox: privacy-focused open source browser" ;;
    *) echo "Unknown package - explore its open source philosophy!" ;;
esac

