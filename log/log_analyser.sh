#!/bin/bash 

log_dir="/var/log/app" 
log_file=$log_dir/app.log 
service=nginx

mkdir -p $log_dir

echo "Log will be written in $log_file"

if pgrep "$service" > /dev/null; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - INFO - $service is running" >> "$log_file"
    echo "Log written successfully"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - WARN - $service is NOT running" >> "$log_file"
    echo "Service not running, log written"
fi


