#!/bin/bash

#this script removes the cs logo file from the individual problem directories.
#the file is identified by its file size
#run from /vault directory

for i in *; do

#for j in "$i"/images/*; do
#echo $j
#done

fn=`ls -l "$i"/images|grep -e "72104" |cut -f 2 -d':' | cut -f 2 -d" "`
rm "$i"/images/"$fn"

done
