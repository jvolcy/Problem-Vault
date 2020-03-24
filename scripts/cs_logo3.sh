#!/bin/bash

#This script changes the CS Logo alt text from "CS Logo (no bg).png" to "CS Logo".
#This change is applied to all notebooks.
#Run from the vault/ directory

for i in *; do

echo "==========================="

a="../images"
b="../../images"

cp "$i/$i.ipynb" tmp

sed "s?$a?$b?g" <tmp >"$i/$i.ipynb"


done









