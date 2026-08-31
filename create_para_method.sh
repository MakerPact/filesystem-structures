#!/bin/bash
# This script creates a directory structure for the PARA method filing system.
# It will create the folders inside "Filing Cabinet/PARA Method".

BASE_DIR="Filing Cabinet/PARA Method"

FOLDERS=(
    "1. Projects/Example Project A"
    "1. Projects/Example Project B"
    "2. Areas/01 Personal/Finances"
    "2. Areas/01 Personal/Health"
    "2. Areas/02 Work/Admin"
    "2. Areas/02 Work/Marketing"
    "3. Resources/01 Topics/Productivity"
    "3. Resources/01 Topics/Web Design"
    "3. Resources/02 Assets/Templates"
    "3. Resources/02 Assets/Stock Photos"
    "4. Archive/Old Projects"
    "4. Archive/Reference Material"
)

for FOLDER in "${FOLDERS[@]}"; do
    mkdir -p "$BASE_DIR/$FOLDER"
done

echo "PARA Method folder structure created successfully in '$BASE_DIR'."