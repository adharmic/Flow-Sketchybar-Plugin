#!/bin/bash

# Fetch phase and time from the Flow application
PHASE=$(osascript -e "tell application \"Flow\" to getPhase")
TIME=$(osascript -e "tell application \"Flow\" to getTime")

# Set default icon
ICON="􁛅"

# Check the phase and adjust the icon if necessary
if [ "$PHASE" = "Break" ]; then
    ICON="􁛋"
fi

# Debugging output
echo "PHASE: $PHASE"
echo "ICON: $ICON"
echo "TIME: $TIME"

# Ensure the item exists before setting the icon
if sketchybar --query "$NAME" > /dev/null 2>&1; then
    echo "Item '$NAME' found. Setting icon..."
    # Set the icon for the SketchyBar item
    sketchybar --set "$NAME" \
     icon="$ICON" \
     label="$PHASE • $TIME"
else
    echo "Item '$NAME' not found"
fi

