#!/bin/bash


SERVER="8.8.8.8"

echo "=== System Network Monitor Started ==="
echo "Checking connection to $SERVER..."


if ping -c 3 $SERVER > /dev/null; then
    echo "[OK] $(date): Server is up and reachable."
else
    echo "[CRITICAL ALERT] $(date): Server is DOWN or unreachable!"
    
fi
