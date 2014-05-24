#!/bin/bash

for i in $@; do
    if [ -d $i ]; then
        cd $i
        makepkg -si
        cd ..
    else
        echo "No such directory: $i"
        exit 1
    fi
done

exit 0
