#!/bin/bash

prefix="transp-bg.sh"
ls_output=$(ls *.ini)

# Loop through each line and add the prefix with a space
for line in $ls_output; do
    modified_line="$prefix $line"
    echo "$modified_line" >> run_transp
done
chmod +x run_transp
./run_transp
rm run_transp