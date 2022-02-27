#!/bin/bash
sourceFile="/usr/local/bin/sources.txt"
addresses=`cat $sourceFile`

while true
do
    for address in $addresses; do
        echo "Pinging: $address"
        curl -vk $address --output /dev/null --silent
    done
done

exit 0