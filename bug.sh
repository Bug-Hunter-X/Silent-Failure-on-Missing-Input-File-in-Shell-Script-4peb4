#!/bin/bash

# This script attempts to process a file, but it has a subtle error.
# It does not check if the file exists before processing it.

file_to_process="my_file.txt"

# Attempt to process the file (this will fail if the file doesn't exist)
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

# The script will exit with an error if my_file.txt does not exist. 