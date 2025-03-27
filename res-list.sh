#!/bin/bash

prefix="aumentar-resolucao.sh"
ls_output=$(ls *.ini)

# Loop through each line and add the prefix with a space
for line in $ls_output; do
    modified_line="$prefix $line"
    echo "$modified_line" >> run_aum_res
done
chmod +x run_aum_res
./run_aum_res
rm run_aum_res