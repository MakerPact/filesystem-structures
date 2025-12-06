#!/bin/bash
# This script creates a directory structure for the PARA method filing system.
# It will create the folders inside "Filing Cabinet/PARA Method".

BASE_DIR="Filing Cabinet/PARA Method"

mkdir -p "$BASE_DIR/1. Projects/Example Project A" \
         "$BASE_DIR/1. Projects/Example Project B" \
         "$BASE_DIR/2. Areas/01 Personal/Finances" \
         "$BASE_DIR/2. Areas/01 Personal/Health" \
         "$BASE_DIR/2. Areas/02 Work/Admin" \
         "$BASE_DIR/2. Areas/02 Work/Marketing" \
         "$BASE_DIR/3. Resources/01 Topics/Productivity" \
         "$BASE_DIR/3. Resources/01 Topics/Web Design" \
         "$BASE_DIR/3. Resources/02 Assets/Templates" \
         "$BASE_DIR/3. Resources/02 Assets/Stock Photos" \
         "$BASE_DIR/4. Archive/Old Projects" \
         "$BASE_DIR/4. Archive/Reference Material"

echo "PARA Method folder structure created successfully in '$BASE_DIR'."