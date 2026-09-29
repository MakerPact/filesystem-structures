#!/bin/bash
# Test script for create_johnny_decimal.sh

# Exit on any error
set -e

# Get absolute path to the script we want to test
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPT_TO_TEST="$SCRIPT_DIR/create_johnny_decimal.sh"

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

BASE_DIR="Filing Cabinet/Johnny Decimal Filing System"

# Array of expected directories to check
EXPECTED_PATHS=(
    "$BASE_DIR/00-09 INBOX"
    "$BASE_DIR/10-19 Personal/11 Finances/11.01 Banking"
    "$BASE_DIR/10-19 Personal/11 Finances/11.02 Taxes"
    "$BASE_DIR/10-19 Personal/12 Health/12.01 Medical Records"
    "$BASE_DIR/10-19 Personal/12 Health/12.02 Fitness"
    "$BASE_DIR/20-29 Work/21 Projects/21.01 Project A"
    "$BASE_DIR/20-29 Work/21 Projects/21.02 Project B"
    "$BASE_DIR/20-29 Work/22 Admin/22.01 Reports"
    "$BASE_DIR/20-29 Work/22 Admin/22.02 Presentations"
    "$BASE_DIR/30-39 Hobbies/31 Photography/31.01 Camera Gear"
    "$BASE_DIR/30-39 Hobbies/31 Photography/31.02 Photos"
    "$BASE_DIR/30-39 Hobbies/32 Music/32.01 Guitar Tabs"
    "$BASE_DIR/30-39 Hobbies/32 Music/32.02 Production"
    "$BASE_DIR/40-49 Archives"
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

echo "All tests for create_johnny_decimal.sh passed successfully."
exit 0
