#!/bin/bash

prefix="convert"
sufix=" -trim"  
ls_output=$(ls *.png)

# Loop through each line and add the prefix with a space
for line in $ls_output; do
    modified_line="$prefix $line $sufix $line"
    echo "$modified_line" >> run_trim
done
chmod +x run_trim
./run_trim
rm run_trim