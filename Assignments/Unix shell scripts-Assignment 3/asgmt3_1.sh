#!/bin/bash
echo "Enter a filename (eg: example.sh) present in current directory"
read filename
old_filename=`basename $filename .sh`
new_filename="$old_filename.exe"
echo $new_filename
mv "$filename" "$new_filename"

