# This script creates a directory structure for the Johnny Decimal filing system.
# It will create a main folder called "Johnny Decimal Filing System" inside "Filing Cabinet".

$baseDir = "Filing Cabinet\Johnny Decimal Filing System"

$folders = @(
    "00-09 INBOX",
    "10-19 Personal\11 Finances\11.01 Banking",
    "10-19 Personal\11 Finances\11.02 Taxes",
    "10-19 Personal\12 Health\12.01 Medical Records",
    "10-19 Personal\12 Health\12.02 Fitness",
    "20-29 Work\21 Projects\21.01 Project A",
    "20-29 Work\21 Projects\21.02 Project B",
    "20-29 Work\22 Admin\22.01 Reports",
    "20-29 Work\22 Admin\22.02 Presentations",
    "30-39 Hobbies\31 Photography\31.01 Camera Gear",
    "30-39 Hobbies\31 Photography\31.02 Photos",
    "30-39 Hobbies\32 Music\32.01 Guitar Tabs",
    "30-39 Hobbies\32 Music\32.02 Production",
    "40-49 Archives"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path "$baseDir\$folder" -Force
}

Write-Host "Johnny Decimal Filing System structure created successfully in '$baseDir'."
