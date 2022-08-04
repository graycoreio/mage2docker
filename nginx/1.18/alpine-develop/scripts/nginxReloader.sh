#!/bin/sh

while true
do
    inotifywait --include="(nginx\.conf\.sample|nginx\.conf)"  -e create -e modify -e delete -e move /var/www/html/
    nginx -t
    if [ $? -eq 0 ] 
    then
        echo "Detected Nginx Configuration Change"
        echo "Executing: nginx -s reload"
        nginx -s reload
    fi
done