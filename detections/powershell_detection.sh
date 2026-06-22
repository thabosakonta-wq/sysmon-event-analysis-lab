#!/bin/bash

LOG="../events/sysmon.log"

echo "============================="
echo " POWERSHELL DETECTION"
echo "============================="

grep "powershell.exe" "$LOG"

if grep -q "powershell.exe" "$LOG"
then
    echo
    echo "[ALERT] PowerShell execution detected"
fi
