#!/bin/bash
# Test script for create_para_method.sh

# Exit on any error
set -e

# Create a temporary directory and ensure it gets cleaned up
TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT

# Get absolute path to the script before changing directories
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/create_para_method.sh"

# Run the script in the temporary directory
cd "$TEMP_DIR"
bash "$SCRIPT_PATH" > /dev/null

# Verify the base directory exists
BASE_DIR="Filing Cabinet/PARA Method"

if [ ! -d "$BASE_DIR" ]; then
    echo "Error: Base directory '$BASE_DIR' was not created."
    exit 1
fi

# Define expected directories
EXPECTED_DIRS=(
    "$BASE_DIR/1. Projects/Example Project A"
    "$BASE_DIR/1. Projects/Example Project B"
    "$BASE_DIR/2. Areas/01 Personal/Finances"
    "$BASE_DIR/2. Areas/01 Personal/Health"
    "$BASE_DIR/2. Areas/02 Work/Admin"
    "$BASE_DIR/2. Areas/02 Work/Marketing"
    "$BASE_DIR/3. Resources/01 Topics/Productivity"
    "$BASE_DIR/3. Resources/01 Topics/Web Design"
    "$BASE_DIR/3. Resources/02 Assets/Templates"
    "$BASE_DIR/3. Resources/02 Assets/Stock Photos"
    "$BASE_DIR/4. Archive/Old Projects"
    "$BASE_DIR/4. Archive/Reference Material"
)

# Check that all expected directories exist
for dir in "${EXPECTED_DIRS[@]}"; do
    if [ ! -d "$dir" ]; then
        echo "Error: Directory '$dir' was not created."
        exit 1
    fi
done

echo "Test passed: All PARA method directories were created successfully."
exit 0
