#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in open source because of tools like $TOOL." > $OUTPUT
echo "To me, freedom means $FREEDOM, and I dream of building $BUILD to share with the world." >> $OUTPUT
echo "Open source is not just code, it is a philosophy of collaboration and innovation." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT

