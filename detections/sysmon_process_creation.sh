#!/data/data/com.termux/files/usr/bin/bash

LOG="../sample_logs/sysmon.log"

echo "================================="
echo " SYSMON PROCESS CREATION DETECTION"
echo "================================="

grep "EventID: 1" "$LOG"

COUNT=$(grep -c "EventID: 1" "$LOG")

echo
echo "Process Creation Events: $COUNT"

if [ "$COUNT" -gt 0 ]; then
    echo
    echo "[ALERT] Process creation activity detected"
fi
