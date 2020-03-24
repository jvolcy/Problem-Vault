#!/bin/bash

#this script removes .bak, .json, .txt and .html files from the problem directories.
#run from /vault directory

for i in *; do
rm "$i/$i.ipynb.bak" "$i/$i.json" "$i/$i.txt" "$i"/*.html
done
