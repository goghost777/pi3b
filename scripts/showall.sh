#!/bin/bash

echo "=== Showing All Source Code in Current Directory ==="
echo

find . -type f | while read file; do
    echo "===== $file ====="
    cat "$file"
    echo -e "\n"
done
