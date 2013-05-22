#!/bin/bash

# Requires ImageMagick

if [ -z "$1" ]
then
  echo "Usage: resize.sh FOLDER-WITH-JPGS"
  exit
fi

echo Resizing pictures inside $1

for input in `find $1 -name "*.jpg"`
do
  output=${input%.jpg}.png
  convert $input -resize 10% $output
done
