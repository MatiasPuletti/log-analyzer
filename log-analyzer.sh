#!/bin/bash

# Define the log file
LOG_FILE="access.log"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "❌ Log file $LOG_FILE not found!"
    exit 1
fi

# Function to display a header for each section
print_header() {
    echo -e "\n\033[1;34m$1\033[0m"
    echo "==============================="
}

# 1. Top 5 IP addresses with the most requests
print_header "🌐 Top 5 IP Addresses"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{printf "👤 %-15s %s requests\n", $2, $1}'

# 2. Top 5 most requested paths
print_header "📄 Top 5 Requested Paths"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{printf "🔗 %-30s %s requests\n", $2, $1}'

# 3. Top 5 response status codes
print_header "📟 Top 5 Response Status Codes"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{printf "📊 %-5s %s occurrences\n", $2, $1}'

# 4. Top 5 user agents
print_header "🖥️  Top 5 User Agents"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{printf "🤖 %-80s %s occurrences\n", $2, $1}'

echo -e "\n\033[1;32m✅ Analysis Complete\033[0m"

