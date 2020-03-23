#!/bin/bash

#this script finds the <img> reference to the cs logo png file and replaces with ../images/cs_logo.png.  That way
#only one copy of cs_logo.png is needed.  Run from the vault/ directory

for i in *; do

echo "==========================="

# echo $x
# echo $y
echo $y "-->" $logo_fn

sed -i 's/CS Logo (no bg).png/CS Logo/g' "$i/$i.ipynb"

done





