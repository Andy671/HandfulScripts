#!/bin/bash

[ -z "$1" ] && echo "Error. Argument is empty."
[ -z "$1" ] && exit 1

for filename in $1/*.wav; do
    echo "Converting $filename"
    ffmpeg -i "$filename" -vn -ar 44100 -ac 2 -b:a 192k "${filename%.*}.mp3"
done
echo 'Conversion Done'

