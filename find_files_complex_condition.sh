#!/bin/bash

# This script finds and prints the content of all ASCII text files in the current directory
# that are exactly 1033 bytes in size, including handling file names with spaces.

# Step 1: Use `find` to search for all files in the current directory and subdirectories
# Step 2: Use `file` to determine the type of each file (text, binary, etc.)
# Step 3: Use `grep` to filter out only the files identified as "ASCII text"
# Step 4: Extract only the filenames using `cut` (everything before the colon `:` in the output of `file`)
# Step 5: For each filename, use `du` to get the file size in bytes
# Step 6: Use `awk` to filter for files that are exactly 1033 bytes
# Step 7: Use `cat` to print the contents of the matching files
# Each step is executed safely to handle files with spaces and special characters in their names.

# Loop through each file found by the command chain
find ./ -type f -exec file {} + | grep 'ASCII text' | cut -d: -f1 | while IFS= read -r file
do
  # Get the size of the file using `du` in bytes format (-b flag)
  du -b "$file" | 
  # Filter the output with `awk` to check if the file size is exactly 1033 bytes
  awk '$1 == 1033 {print $2}' | 
  # Use `xargs` to safely pass the filenames to `cat`, preserving spaces in filenames
  xargs -I{} cat "{}"
done

# Exit the script
exit 0
