#!/bin/sh

speed=$(sensors | grep -i fan | awk '{print $3}')

if [ "$speed" != "" ]; then
    output=$(printf "%4srpm" $speed)
else
    output="N/A rpm"
fi

echo "$output"
