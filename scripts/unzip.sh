#!/bin/bash

echo "Available ZIP files in current directory:"
select ZIPFILE in *.zip; do
    if [ -n "$ZIPFILE" ]; then
        echo "You selected: $ZIPFILE"
        
        # Create a folder name based on the zip filename (without .zip)
        DESTDIR="${ZIPFILE%.zip}"
        
        echo "Unzipping into folder: $DESTDIR/"
        mkdir -p "$DESTDIR"
        unzip "$ZIPFILE" -d "$DESTDIR"
        
        echo "✅ Done! Files unzipped to: $DESTDIR/"
        break
    else
        echo "❌ Invalid selection. Try again."
    fi
done
