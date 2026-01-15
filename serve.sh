#!/bin/bash
# Script to serve the MkDocs site locally

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "Virtual environment not found. Running setup..."
    ./setup.sh
fi

# Activate virtual environment
source venv/bin/activate

# Serve the site
echo "Starting MkDocs development server..."
echo "Site will be available at http://127.0.0.1:8000"
echo "Press Ctrl+C to stop the server"
echo ""

mkdocs serve
