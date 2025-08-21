#!/bin/bash

#hold values for CPU, memory, and disk usage (in percentage)
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

# Alert function
send_alert() {
          echo "$(tput setaf 1)ALERT: $1 usage exceeded threshold! Current value: $2%$(tput sgr0)"
  }

while true; do
#Monitor CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
cpu_usage=${cpu_usage%.*} # Convert to integer
echo "Current CPU usage: $cpu_usage%"

if ((cpu_usage >= CPU_THRESHOLD)); then
send_alert "CPU" "$cpu_usage"
fi

#Monitor Memory usage
mem_usage=$(free | grep "Mem" | awk '{print ($3/$2)*100 }')
mem_usage=${mem_usage%.*} # Convert to integer
echo "Current Memory usage: $mem_usage%"
if ((mem_usage >= MEMORY_THRESHOLD)); then
            send_alert "MEMORY" "$mem_usage"
fi


#Monitor Disk usage

#disk_usage=$(df -B1 | awk 'NR>1 {sum += $2} END {printf("%.2f GB\n", sum / (1024^3))}')

used=$(df -B1 | awk 'NR>1 {sum += $3} END {printf("%.2f \n",(sum/(1024^3)))}')
total=$(df -B1 | awk 'NR>1 {sum += $2} END {printf("%.2f \n", sum / (1024^3))}')
disk_usage=$(echo "$used $total" | awk '{printf("%.0f", ($1 / $2) * 100)}')

echo "Current Disk usage: $disk_usage%"
if ((disk_usage >= DISK_THRESHOLD)); then
           send_alert "DISK" "$disk_usage"
fi


#Display current stats
  clear
  echo "Resource Usage:"
  echo "CPU: $cpu_usage%"
  echo "Memory: $mem_usage%"
  echo "Disk: $disk_usage%"
  sleep 2

done



