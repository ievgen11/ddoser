#!/bin/bash
sourceFile="./sources.txt"
addresses=`cat $sourceFile | sort -R`

let counter=0

while true
do
    for address in $addresses; do
        counter=$(($counter+1))
        echo "# ($counter) : $address"
        curl --max-time 0.1 --silent --output /dev/null  $address
        echo ""
    done
done

exit 0