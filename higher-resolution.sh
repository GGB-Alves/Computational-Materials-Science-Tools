#!/bin/bash
grep -B14 "Output_to_File" $1 > pt1.txt
grep -A7 "Antialias=" $1 > pt2.txt
cat pt1.txt /home/gabri/tools/resolution  pt2.txt > $1
