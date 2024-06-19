#!/bin/bash

# Step 1: Move files
mkdir -p /tmp/allfiles
#mv /home/hello/byteai/posts/2024-06-16*.md /tmp/allfiles 2>/dev/null

# Check if any files were moved
if [ "$(ls -A /tmp/allfiles/*.md 2>/dev/null)" ]; then
    # Step 2: Loop through files and confirm
    for file in /tmp/allfiles/*.md; do
        echo "Do you want to move $file back to /home/hello/byteai/posts/? (y/n)"
        read -r answer
        if [ "$answer" = "y" ]; then
            mv "$file" /home/hello/byteai/posts/
            /bin/sh /home/hello/byteai/submit.sh
        fi
    done
else
    echo "No files to move from /home/hello/byteai/posts/*.md"
fi

echo "All files have been processed."

