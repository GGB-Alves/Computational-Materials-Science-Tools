#!/bin/bash

prefix="pdftoppm -r 300"  
sufix="-png"
ls_output=$(ls *.pdf)
ls_output2=$(ls *.pdf | sed 's/\.pdf$//')

# Loop through each line and add the prefix with a space
for line in $ls_output; do
    modified_line="$prefix $line"
    echo "$modified_line" >> pt1
done
for line in $ls_output2; do
    mod_line="$line $sufix"
    echo "$mod_line" >> pt2
done
paste pt1 pt2 > run_pdf2png
chmod +x run_pdf2png
joe run_pdf2png
./run_pdf2png
rm run_pdf2png pt1 pt2


