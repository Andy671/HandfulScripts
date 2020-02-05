#!/bin/bash

[ -z "$1" ] && echo "Error. Argument is empty."
[ -z "$1" ] && exit 1

for filename in $1/*.mp3; do
    echo "Converting $filename"
    ffmpeg -i "$filename" -vn -ar 44100 -ac 2 -b:a 128k "${filename%.*}_compressed.mp3"
done

echo 'Conversion Done'

