#!/bin/bash

prefix="g16"  
ls_output=$(ls *MEP*.com)

# Loop through each line and add the prefix with a space
for line in $ls_output; do
    modified_line="$prefix $line"
    echo "$modified_line" >> run
done
chmod +x run
joe run
#./run
#rm run
