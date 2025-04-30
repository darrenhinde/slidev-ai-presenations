#!/bin/bash

# Script to run or export a presentation from the list of available presentations

# Function to list available presentations
list_presentations() {
  echo "Available presentations:"
  find presentations -maxdepth 1 -type d -not -path presentations | sort | while read dir; do
    echo "  - $(basename "$dir")"
  done
}

# Check arguments
if [ $# -lt 1 ]; then
  echo "Usage: ./run-presentation.sh [name] [action]"
  echo "  name: Name of the presentation (directory under presentations/)"
  echo "  action: (Optional) One of: dev (default), export-pdf, export-png"
  echo ""
  list_presentations
  exit 1
fi

PRESENTATION=$1
ACTION=${2:-dev}

# Check if presentation exists
if [ ! -d "presentations/$PRESENTATION" ]; then
  echo "Error: Presentation '$PRESENTATION' not found."
  list_presentations
  exit 1
fi

# Go to presentation directory
cd "presentations/$PRESENTATION" || exit 1

# Execute the requested action
case "$ACTION" in
  dev)
    echo "Starting presentation: $PRESENTATION"
    pnpm slidev
    ;;
  export-pdf)
    echo "Exporting presentation to PDF: $PRESENTATION"
    pnpm slidev export --format pdf
    ;;
  export-png)
    echo "Exporting presentation to PNG: $PRESENTATION"
    pnpm slidev export --format png
    ;;
  *)
    echo "Unknown action: $ACTION"
    echo "Available actions: dev, export-pdf, export-png"
    exit 1
    ;;
esac 