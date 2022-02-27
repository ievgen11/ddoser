#!/bin/bash
sourceFile="/usr/local/bin/sources.txt"
addresses=`cat $sourceFile | sort -R`

let counter=0

while true
do
    for address in $addresses; do
        counter=$(($counter+1))
        echo ""
        echo ""
        echo "# No: $counter"
        echo "# Target: $address 🔫"
        curl --silent --output /dev/null  $address && echo "# Status: Alive! ✨" || echo "# Status: Down! 💥"
        echo ""
        echo ""
    done
done

exit 0