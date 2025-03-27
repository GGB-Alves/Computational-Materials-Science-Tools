#!/bin/bash

prefix="povray"  
ls_output=$(ls *.ini)

# Loop through each line and add the prefix with a space
for line in $ls_output; do
    modified_line="$prefix $line"
    echo "$modified_line" >> run_pov
done
chmod +x run_pov
./run_pov
rm run_pov