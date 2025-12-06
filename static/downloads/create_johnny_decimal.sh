#!/bin/bash
# This script creates a directory structure for the Johnny Decimal filing system.
# It will create a main folder called "Johnny Decimal Filing System" inside "Filing Cabinet".

BASE_DIR="Filing Cabinet/Johnny Decimal Filing System"

mkdir -p "$BASE_DIR/00-09 INBOX" \
         "$BASE_DIR/10-19 Personal/11 Finances/11.01 Banking" \
         "$BASE_DIR/10-19 Personal/11 Finances/11.02 Taxes" \
         "$BASE_DIR/10-19 Personal/12 Health/12.01 Medical Records" \
         "$BASE_DIR/10-19 Personal/12 Health/12.02 Fitness" \
         "$BASE_DIR/20-29 Work/21 Projects/21.01 Project A" \
         "$BASE_DIR/20-29 Work/21 Projects/21.02 Project B" \
         "$BASE_DIR/20-29 Work/22 Admin/22.01 Reports" \
         "$BASE_DIR/20-29 Work/22 Admin/22.02 Presentations" \
         "$BASE_DIR/30-39 Hobbies/31 Photography/31.01 Camera Gear" \
         "$BASE_DIR/30-39 Hobbies/31 Photography/31.02 Photos" \
         "$BASE_DIR/30-39 Hobbies/32 Music/32.01 Guitar Tabs" \
         "$BASE_DIR/30-39 Hobbies/32 Music/32.02 Production" \
         "$BASE_DIR/40-49 Archives"

echo "Johnny Decimal Filing System structure created successfully in '$BASE_DIR'."