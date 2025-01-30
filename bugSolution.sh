#!/bin/bash

# This script improves on the original by checking if the file exists before processing it.

file_to_process="my_file.txt"

# Check if the file exists
if [ -f "$file_to_process" ]; then
  while IFS= read -r line; do
    echo "Processing line: $line"
  done < "$file_to_process"
else
  echo "Error: File '$file_to_process' not found."
  exit 1
fi