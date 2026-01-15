#!/bin/bash
# Setup script for Decentralized AI Course Website

set -e  # Exit on error

echo "Setting up local environment for MkDocs..."

# Check if python3-venv is needed
if ! python3 -m venv --help &>/dev/null; then
    echo "ERROR: python3-venv is not available."
    echo ""
    echo "Please install it using one of these methods:"
    echo ""
    echo "If you have sudo access:"
    echo "  sudo apt install python3.12-venv python3-pip"
    echo ""
    echo "If you don't have sudo access, contact your administrator to install:"
    echo "  python3.12-venv"
    echo "  python3-pip"
    echo ""
    exit 1
fi

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

echo ""
echo "✅ Setup complete!"
echo ""
echo "To activate the environment and run MkDocs:"
echo "  source venv/bin/activate"
echo "  mkdocs serve"
echo ""
echo "Or run the serve.sh script:"
echo "  ./serve.sh"
