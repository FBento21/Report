#!/bin/bash

# Specify the directory where your LaTeX files are located

# Find all LaTeX files in the specified directory (change the file extension if needed)
files=$(find -type f -name "*.tex")
output_file="labels.txt"

# Loop through each LaTeX file
for file in $files; do
    echo "Processing $file"
    
    # Use grep to find all lines containing \label{} in the LaTeX file
    labels=$(grep -o '\\label{[^}]*}' "$file")
    
    # Loop through each label and extract its content
    while IFS= read -r label; do
        # Remove the "\label{" prefix and "}" suffix to get the label content
        label_content="${label#*\{}"
        label_content="${label_content%\}}"
        
        # Print the label content along with the file name
        echo "$label_content" >> "$output_file"
    done <<< "$labels"
done
