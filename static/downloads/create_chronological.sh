#!/bin/bash
# This script creates a chronological folder structure for the current year.

YEAR=$(date +%Y)
BASE_DIR="Filing Cabinet/Chronological Filing System"

# Create the main year directory and all month subdirectories
mkdir -p "$BASE_DIR/$YEAR/01_January" \
         "$BASE_DIR/$YEAR/02_February" \
         "$BASE_DIR/$YEAR/03_March" \
         "$BASE_DIR/$YEAR/04_April" \
         "$BASE_DIR/$YEAR/05_May" \
         "$BASE_DIR/$YEAR/06_June" \
         "$BASE_DIR/$YEAR/07_July" \
         "$BASE_DIR/$YEAR/08_August" \
         "$BASE_DIR/$YEAR/09_September" \
         "$BASE_DIR/$YEAR/10_October" \
         "$BASE_DIR/$YEAR/11_November" \
         "$BASE_DIR/$YEAR/12_December"

echo "Chronological folder structure for $YEAR created successfully in '$BASE_DIR'."