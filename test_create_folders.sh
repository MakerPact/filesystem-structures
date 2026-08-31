#!/bin/bash
# Test script for create_folders.sh

# Exit on any error
set -e

# Get absolute path to the script we want to test
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPT_TO_TEST="$SCRIPT_DIR/create_folders.sh"

# Create a temporary directory for isolated testing
TEMP_DIR=$(mktemp -d)

# Setup trap to ensure cleanup happens even if script fails
trap 'rm -rf "$TEMP_DIR"' EXIT

echo "Running tests in isolated environment: $TEMP_DIR"

# Navigate into the temporary directory
cd "$TEMP_DIR"

# Execute the script for the first time (happy path)
echo "Executing $SCRIPT_TO_TEST..."
if ! "$SCRIPT_TO_TEST"; then
  echo "Error: script execution failed."
  exit 1
fi

# Array of expected directories to check (as specified in the prompt)
EXPECTED_PATHS=(
  "Filing Cabinet/000_Inbox/009_TRASH"
  "Filing Cabinet/010_Projects/011_Website_Redesign"
  "Filing Cabinet/010_Projects/012_Vacation_Planning_2026"
)

# Verify expected directories were created
echo "Verifying created directory structure..."
MISSING=0
for dir in "${EXPECTED_PATHS[@]}"; do
  if [ ! -d "$dir" ]; then
    echo "FAILED: Directory '$dir' is missing."
    MISSING=1
  fi
done

if [ "$MISSING" -ne 0 ]; then
  echo "Error: One or more required directories were not created."
  exit 1
fi
echo "All expected directories were created successfully."

# Execute the script a second time (idempotency check)
echo "Testing idempotency (running script again on existing directories)..."
if ! "$SCRIPT_TO_TEST"; then
  echo "FAILED: Script failed on second run (when directories already exist)."
  exit 1
fi
echo "Idempotency test passed."

echo "All tests for create_folders.sh passed successfully."
exit 0
