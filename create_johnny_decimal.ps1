# This script creates a directory structure for the Johnny Decimal filing system.
# It will create a main folder called "Johnny Decimal Filing System" in the current directory.

$baseDir = "Johnny Decimal Filing System"

New-Item -ItemType Directory -Path "$baseDir/00-09 INBOX"
New-Item -ItemType Directory -Path "$baseDir/10-19 Personal/11 Finances/11.01 Banking"
New-Item -ItemType Directory -Path "$baseDir/10-19 Personal/11 Finances/11.02 Taxes"
New-Item -ItemType Directory -Path "$baseDir/10-19 Personal/12 Health/12.01 Medical Records"
New-Item -ItemType Directory -Path "$baseDir/10-19 Personal/12 Health/12.02 Fitness"
New-Item -ItemType Directory -Path "$baseDir/20-29 Work/21 Projects/21.01 Project A"
New-Item -ItemType Directory -Path "$baseDir/20-29 Work/21 Projects/21.02 Project B"
New-Item -ItemType Directory -Path "$baseDir/20-29 Work/22 Admin/22.01 Reports"
New-Item -ItemType Directory -Path "$baseDir/20-29 Work/22 Admin/22.02 Presentations"
New-Item -ItemType Directory -Path "$baseDir/30-39 Hobbies/31 Photography/31.01 Camera Gear"
New-Item -ItemType Directory -Path "$baseDir/30-39 Hobbies/31 Photography/31.02 Photos"
New-Item -ItemType Directory -Path "$baseDir/30-39 Hobbies/32 Music/32.01 Guitar Tabs"
New-Item -ItemType Directory -Path "$baseDir/30-39 Hobbies/32 Music/32.02 Production"
New-Item -ItemType Directory -Path "$baseDir/40-49 Archives"

Write-Host "Johnny Decimal Filing System structure created successfully."