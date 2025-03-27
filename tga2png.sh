#!/bin/bash
# This script converts all TGA files in the current directory to PNG

for file in *.tga; do
    # Check if the file exists
    if [ -f "$file" ]; then
        # Extract the file name without extension
        filename="${file%.*}"
        # Convert the TGA file to PNG
        convert "$file" "${filename}.png"
        echo "Converted $file to ${filename}.png"
    else
        echo "No TGA files found."
    fi
done
 