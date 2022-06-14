#!/bin/bash

[ -z "$1" ] && echo "Error. Arg1 InputFolder is empty."
[ -z "$1" ] && exit 1

for filename in $1/*.png; do
    echo "Converting $filename"
    pngquant 32 "$filename"
    rm -f "$filename"
done

echo 'Conversion Done'