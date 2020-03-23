#!/bin/bash

#this script finds the <img> reference to the cs logo png file and replaces with ../images/cs_logo.png.  That way
#only one copy of cs_logo.png is needed.  Run from the vault/ directory

for i in *; do

echo "==========================="

a="CS Logo (no bg).png"
b="CS Logo"

cp "$i/$i.ipynb" tmp

sed "s?$a?$b?g" <tmp >"$i/$i.ipynb"


done









