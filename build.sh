#!/bin/bash
# Script to build the MkDocs site

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "Virtual environment not found. Running setup..."
    ./setup.sh
fi

# Activate virtual environment
source venv/bin/activate

# Build the site
echo "Building MkDocs site..."
mkdocs build

echo ""
echo "✅ Build complete! Site generated in the 'site/' directory"
