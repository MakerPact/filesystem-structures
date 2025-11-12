#!/bin/bash
# This script creates a chronological folder structure for the current year.

YEAR=$(date +%Y)

# Create the main year directory and all month subdirectories
mkdir -p "$YEAR/01_January" \
         "$YEAR/02_February" \
         "$YEAR/03_March" \
         "$YEAR/04_April" \
         "$YEAR/05_May" \
         "$YEAR/06_June" \
         "$YEAR/07_July" \
         "$YEAR/08_August" \
         "$YEAR/09_September" \
         "$YEAR/10_October" \
         "$YEAR/11_November" \
         "$YEAR/12_December"

echo "Chronological folder structure for $YEAR created successfully."