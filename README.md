# suspicious-activity-detector
chmod +x log_analysis.sh
./log_analysis.sh
Explanation
grep "Failed password" "$LOG_FILE": Finds all lines in the log file that contain "Failed password".
awk '{print $NF}': Extracts the last field from each line (the IP address).
sort | uniq -c | sort -nr: Sorts the IP addresses, counts the occurrences of each, and then sorts the counts in descending order.
