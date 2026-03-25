#!/bin/bash
# Usage: ./log_analyzer.sh /path/to/logfile [keyword]
# Check if user provided a log file
if [ -z "$1" ]; then
    echo "Error: No log file provided. Usage: ./log_analyzer.sh /path/to/logfile [keyword]"
    exit 1
fi
LOGFILE=$1
# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file '$LOGFILE' does not exist."
    exit 1
fi
# Set the keyword to search for (default to "error" if not provided)
KEYWORD=${2:-"error"}
echo "Analyzing '$LOGFILE' for keyword '$KEYWORD'..."
# Count the total occurrences of the keyword
COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)
# Output the total count of errors
echo "Total occurrences of '$KEYWORD': $COUNT"
# Check if any errors were found
if [ "$COUNT" -gt 0 ]; then
    echo "Displaying the last 10 occurrences:"
    # Show the last 10 occurrences of the keyword
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 10
else
    echo "No '$KEYWORD' found in the log file."
fi
# Optionally, display the first 5 matching lines to provide a preview
echo "First 5 matching lines (if any):"
grep -i "$KEYWORD" "$LOGFILE" | head -n 5
# End of script
