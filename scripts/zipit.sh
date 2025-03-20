#!/bin/bash

echo "Available directories in current path:"
select DIR in */; do
    if [ -n "$DIR" ]; then
        ZIPNAME="${DIR%/}.zip"
        echo "Zipping '$DIR' into '$ZIPNAME'..."
        zip -r "$ZIPNAME" "$DIR"
        echo "✅ Done: $ZIPNAME created."
        break
    else
        echo "❌ Invalid selection. Try again."
    fi
done

