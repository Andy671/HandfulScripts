#!/bin/bash

[ -z "$1" ] && echo "Error. Argument is empty."
[ -z "$1" ] && exit 1

for d in $1/*/; do
    echo $d
    for filename in "$d"*.wav; do
        echo "Converting $filename"
        ffmpeg -i "$filename" -vn -ar 44100 -ac 2 -b:a 192k "${filename%.*}.mp3"
        echo "Removing $filename"
        rm -f "$filename"
    done
done
echo 'Conversion Done'

