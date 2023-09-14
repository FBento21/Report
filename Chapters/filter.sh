#!/bin/bash

# Specify the input file containing labels
input_file="labels.txt"

# Specify the output file for unique labels
output_file="unique_labels.txt"

# Use 'sort' and 'uniq' to remove duplicates and save unique labels to the output file
sort "$input_file" | uniq > "$output_file"

echo "Unique labels have been saved to $output_file"
