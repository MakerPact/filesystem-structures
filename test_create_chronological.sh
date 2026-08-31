#!/bin/bash
# Test script for create_chronological.sh

# Resolve script dir before changing directories
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Set up a temporary directory for isolated execution
TEMP_DIR=$(mktemp -d)

# Set a trap to ensure cleanup on exit
trap "rm -rf '$TEMP_DIR'" EXIT

# Print the temp dir for debugging
echo "Running tests in temporary directory: $TEMP_DIR"

# Change into the temporary directory so script execution happens there
cd "$TEMP_DIR" || exit 1

# Execute the script to be tested
"$SCRIPT_DIR/create_chronological.sh"

YEAR=$(date +%Y)
BASE_DIR="Filing Cabinet/Chronological Filing System/$YEAR"

# Array of months to check
MONTHS=(
    "01_January"
    "02_February"
    "03_March"
    "04_April"
    "05_May"
    "06_June"
    "07_July"
    "08_August"
    "09_September"
    "10_October"
    "11_November"
    "12_December"
)

# Assert that all directories were created correctly
MISSING=0
for MONTH in "${MONTHS[@]}"; do
    if [ ! -d "$BASE_DIR/$MONTH" ]; then
        echo "FAIL: Expected directory not found: $BASE_DIR/$MONTH"
        MISSING=$((MISSING + 1))
    fi
done

if [ $MISSING -eq 0 ]; then
    echo "PASS: All expected directories were created successfully."
    exit 0
else
    echo "FAIL: $MISSING directories were missing."
    exit 1
fi
