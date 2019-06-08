#!/bin/bash
for d in drums/*/; do
    for filename in $d*.mp3; do
        echo "Converting $filename"
        afconvert -f caff -d ima4 $filename
        echo "Removing $filename"
        rm -f $filename
    done
done
echo 'Drums Done'

for d in synths/*/; do
    for filename in $d*.mp3; do
        echo "Converting $filename"
        afconvert -f caff -d ima4 $filename
        echo "Removing $filename"
        rm -f $filename
    done
done
echo 'Synths Done'