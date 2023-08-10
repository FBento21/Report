#!/bin/bash

# Loop through all .txt files in the current folder
for file in *.tex; do
  echo "Processing file: $file"
  
  # Read the content of the file
  file_contents=$(cat "$file")
  
  # Using grep to find capital letter sequences with at least two letters
  capital_sequences=$(echo "$file_contents" | grep -o '[A-Z]\{2,\}')
  
  # Print the filename and the found capital sequences
  echo "File: $file"
  echo "Capital sequences found: $capital_sequences"
done
