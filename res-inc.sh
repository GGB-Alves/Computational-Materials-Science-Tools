#!/bin/bash

# Increasing the resolution
read -p "type how much greater you want the resolution: " res_factor
res_old=$(grep -A1 "Width" "$1.ini")

echo "$res_old" | awk -F '[0-9]+' '{  print $1 }' > res_name.txt
echo "$res_old" | awk -F '=' '{  print $2 }' > res_value.txt

awk -v mult="$res_factor" '{print $1 * mult }' res_value.txt > res_value_mod.txt
paste -d '' res_name.txt res_value_mod.txt > res_new.txt
res_new="res_new.txt"

#________MEP________

#separate the parts
pt1=$(grep -B14 "Output_to_File" "$1.ini")
pt2=$(grep -A7 "Antialias=" "$1.ini")

# Concatenate the content
{
  echo "$pt1"
  cat "$res_new" 
  echo "$pt2"
  echo "Output_Alpha=True" 
} > $1.ini

rm res_*.txt