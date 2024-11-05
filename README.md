# Log Analyzer

A simple shell script that analyzes NGINX access logs to extract and display useful information. This script provides insights into the most active IP addresses, requested paths, response status codes, and user agents in a formatted, easy-to-read output.

## Features

- **Top 5 IP Addresses** with the most requests
- **Top 5 Requested Paths**
- **Top 5 Response Status Codes**
- **Top 5 User Agents**

Each section is displayed with emojis and formatted headers to improve readability.

## Prerequisites

- Ensure the `access.log` file (or your NGINX log file) is located in the same directory as the script or update the script’s `LOG_FILE` variable with the log file's path.

## Usage

1. **Clone this repository or download the script** to your desired directory.
2. **Ensure the script is executable**:
   ```bash
   chmod +x log_analyzer.sh


## Example Output

 ```
🌐 Top 5 IP Addresses
===============================
👤 192.168.1.1       204 requests
👤 10.0.0.2          189 requests
👤 172.16.0.1        150 requests
👤 203.0.113.5       124 requests
👤 198.51.100.7      110 requests

📄 Top 5 Requested Paths
===============================
🔗 /index.html                    350 requests
🔗 /home                          320 requests
🔗 /products                      278 requests
🔗 /contact                       230 requests
🔗 /about                         210 requests

📟 Top 5 Response Status Codes
===============================
📊 200   750 occurrences
📊 404   120 occurrences
📊 500    95 occurrences
📊 403    80 occurrences
📊 302    65 occurrences

🖥️  Top 5 User Agents
===============================
🤖 Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/58.0.3029.110 Safari/537.3    320 occurrences
🤖 curl/7.64.1                                                                                       210 occurrences
🤖 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 Safari/605.1.15              150 occurrences
🤖 PostmanRuntime/7.28.4                                                                             130 occurrences
🤖 Mozilla/5.0 (X11; Ubuntu; Linux x86_64) Gecko/20100101 Firefox/89.0                               115 occurrences

✅ Analysis Complete
