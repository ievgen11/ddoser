#!/bin/bash
sourceFile="/usr/local/bin/sources.txt"
addresses=`cat $sourceFile | sort -R`

let counter=0

while true
do
    for address in $addresses; do
        counter=$(($counter+1))
        echo ""
        echo "# $counter: Target: $address 💥"
        echo ""
        curl -vk $address --output /dev/null --silent
    done
done

exit 0