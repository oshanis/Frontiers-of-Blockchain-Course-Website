#!/bin/bash
# Script to build and deploy the MkDocs site to parent directory
# This deploys to: /academics/courses/spring26/csci4962/

set -e  # Exit on error

echo "Building and deploying MkDocs site..."
echo "Target directory: ../ (parent directory)"

# Get the absolute path of the script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_DIR="$(dirname "$SCRIPT_DIR")"

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "Virtual environment not found. Running setup..."
    ./setup.sh
fi

# Activate virtual environment
source venv/bin/activate

# Build the site
echo "Building site..."
mkdocs build

# Copy site contents to parent directory
echo "Deploying site contents to parent directory..."
echo "Source: $SCRIPT_DIR/site/"
echo "Destination: $PARENT_DIR/"

# Backup existing index.html in parent if it exists
if [ -f "$PARENT_DIR/index.html" ]; then
    echo "Backing up existing index.html in parent directory..."
    cp "$PARENT_DIR/index.html" "$PARENT_DIR/index.html.backup" 2>/dev/null || true
fi

# Copy site contents to parent directory
cp -r site/* "$PARENT_DIR/"
cp -r site/.htaccess "$PARENT_DIR/" 2>/dev/null || true

echo ""
echo "✅ Deployment complete!"
echo ""
echo "The website should now be accessible at:"
echo "https://cs.rpi.edu/academics/courses/spring26/csci4962/"
echo ""
echo "Note: Source files in DecentralizedAI-Course-Website/ are preserved."
echo "      Only the built site files have been copied to the parent directory."
