#!/bin/bash
# This script creates a chronological folder structure for the current year.

YEAR=$(date +%Y)
BASE_DIR="Filing Cabinet/Chronological Filing System"

# Create the main year directory and all month subdirectories
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

for MONTH in "${MONTHS[@]}"; do
    mkdir -p "$BASE_DIR/$YEAR/$MONTH"
done

echo "Chronological folder structure for $YEAR created successfully in '$BASE_DIR'."