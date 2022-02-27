#!/bin/bash
sourceFile="/usr/local/bin/sources.txt"
addresses=`cat $sourceFile | sort -R`

while true
do
    for address in $addresses; do
        echo "💥💥💥"
        echo "Pinging: $address"
        echo "💥💥💥"
        curl -vk $address --output /dev/null --silent
    done
done

exit 0