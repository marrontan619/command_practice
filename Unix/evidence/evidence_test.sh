#!/bin/sh

free | head -1 &&
while :
do
    date +"%F %T"
    free | tail -n +2
    sleep 1
    echo
done
