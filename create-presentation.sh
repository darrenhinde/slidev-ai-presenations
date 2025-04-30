#!/bin/bash

# Script to quickly create a new Slidev presentation from template

# Check if name parameter was provided
if [ $# -eq 0 ]; then
    echo "Usage: ./create-presentation.sh <presentation-name>"
    exit 1
fi

PRESENTATION_NAME=$1
DIRECTORY_NAME="presentations/${PRESENTATION_NAME// /-}"
TEMPLATE="context-template.md"

# Create a new directory for the presentation
mkdir -p "$DIRECTORY_NAME"

# Copy the template to slides.md within the new directory
cp "$TEMPLATE" "$DIRECTORY_NAME/slides.md"

# Update the title in the new file
sed -i "" "s/My Context-Based Presentation/$PRESENTATION_NAME/g" "$DIRECTORY_NAME/slides.md"

# Create a basic package.json for this presentation
cat > "$DIRECTORY_NAME/package.json" << EOF
{
  "name": "${PRESENTATION_NAME// /-}",
  "type": "module",
  "private": true,
  "scripts": {
    "dev": "slidev --open",
    "build": "slidev build",
    "export:pdf": "slidev export --format pdf",
    "export:png": "slidev export --format png"
  }
}
EOF

echo "Created new presentation in: $DIRECTORY_NAME"
echo "You can start the presentation with: cd $DIRECTORY_NAME && pnpm slidev"
echo "You can export to PDF with: cd $DIRECTORY_NAME && pnpm slidev export" 