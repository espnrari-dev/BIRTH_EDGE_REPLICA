#!/bin/bash
cd ~/BIRTH_EDGE_REPLICA

# Kill any leftover processes
pkill -f "python3 main.py" 2>/dev/null
pkill -f "node" 2>/dev/null
pkill -f "python" 2>/dev/null
sleep 1

mkdir -p logs

# Start the main process
python3 main.py > logs/app.log 2>&1 &
echo $! > logs/app.pid

echo "BIRTH_EDGE_REPLICA started (PID $(cat logs/app.pid))"
echo "Logs: logs/app.log"
