# This script creates a directory structure for the PARA method filing system.
# It will create the folders in the current directory.

New-Item -ItemType Directory -Path "1. Projects/Example Project A"
New-Item -ItemType Directory -Path "1. Projects/Example Project B"
New-Item -ItemType Directory -Path "2. Areas/01 Personal/Finances"
New-Item -ItemType Directory -Path "2. Areas/01 Personal/Health"
New-Item -ItemType Directory -Path "2. Areas/02 Work/Admin"
New-Item -ItemType Directory -Path "2. Areas/02 Work/Marketing"
New-Item -ItemType Directory -Path "3. Resources/01 Topics/Productivity"
New-Item -ItemType Directory -Path "3. Resources/01 Topics/Web Design"
New-Item -ItemType Directory -Path "3. Resources/02 Assets/Templates"
New-Item -ItemType Directory -Path "3. Resources/02 Assets/Stock Photos"
New-Item -ItemType Directory -Path "4. Archive/Old Projects"
New-Item -ItemType Directory -Path "4. Archive/Reference Material"

Write-Host "PARA Method folder structure created successfully."