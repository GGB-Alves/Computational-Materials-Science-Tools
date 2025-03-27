#!/bin/bash
pt1=$(grep -B19 "Verbose=false" "$1")
{
 echo "$pt1"
 echo "Output_Alpha=true"
} > $1
