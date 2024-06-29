#!/bin/bash

# Path to the log file
LOG_FILE="sample_log.log"

# Check if log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file not found!"
    exit 1
fi

# Function to parse and analyze the log file
analyze_logs() {
    echo "Analyzing log file for failed login attempts..."

    # Use grep to find lines with "Failed password" and extract IP addresses
    FAILED_LOGINS=$(grep "Failed password" "$LOG_FILE" | awk '{print $NF}')

    # Use sort and uniq to count occurrences of each IP address
    echo "$FAILED_LOGINS" | sort | uniq -c | sort -nr
}

# Call the function to analyze logs
analyze_logs
