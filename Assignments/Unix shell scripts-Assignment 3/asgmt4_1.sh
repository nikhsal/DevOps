#!/bin/bash
echo "Number of files :"
find . -maxdepth 1 -type f | wc -l
echo "Number of directories :"
find . -maxdepth 1 -type d | wc -l
echo "Filenames"
find . -maxdepth 1 -type f
echo "Directory names"
find . -maxdepth 1 -type d