#!/bin/bash

#this script finds the <img> reference to the cs logo png file and replaces with ../images/cs_logo.png.  That way
#only one copy of cs_logo.png is needed.  Run from the vault/ directory

for i in *; do
x=`grep -e "CS Logo (no bg).png" "$i/$i.ipynb"`
# echo $x
# echo $i

# grep -e "CS Logo (no bg).png" "$i/$i.ipynb"

#y=`echo $x | awk -F'"' '{print $13}'`
y=`echo $x | awk -F'src=' '{print $2}'`
w=`echo $y | awk -F'"' '{print $2}'`
logo_fn=`echo $w | awk -F'\' '{print $1}'`

echo "==========================="

# echo $x
# echo $y
echo $y "-->" $logo_fn

sed -i.bak "s?$logo_fn?../images/cs_logo.png?g" "$i/$i.ipynb"
#echo $cmd

done





