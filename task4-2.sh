#!/bin/bash

# Specify the file name
filename="example.txt"

# Use sed to replace the word "guvi" with "learning" in lines
# that contain the word "welcome" starting from the 5th line until the end of the file
sed '5,/welcome/ {/welcome/!b}; s/guvi/learning/g' "$filename" > "$filename.tmp"

# Replace the original file with the modified file
mv "$filename.tmp" "$filename"

