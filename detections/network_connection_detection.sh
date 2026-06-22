#!/data/data/com.termux/files/usr/bin/bash

LOG="../sample_logs/sysmon.log"

echo "================================="
echo " NETWORK CONNECTION DETECTION"
echo "================================="

grep "EventID: 3" "$LOG"

COUNT=$(grep -c "EventID: 3" "$LOG")

echo
echo "Network Events: $COUNT"

if [ "$COUNT" -gt 0 ]; then
    echo
    echo "[ALERT] Network connection activity detected"
fi
