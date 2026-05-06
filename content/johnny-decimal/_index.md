---
title: "Johnny Decimal Filing System"
layout: "filing-system"
description: "A precise numbering system for organizing files by project and category."
---

## The Johnny Decimal Filing System

The Johnny Decimal system is a method of organizing digital files using a unique numbering scheme. It is designed to help you quickly find any file, no matter where it is stored.

### Key Benefits

- **Structure**: Enforces a clear and consistent organizational structure.
- **Scalability**: Can be adapted to fit any project, from small personal collections to large enterprise archives.
- **Efficiency**: Once you learn the system, you can find any file in seconds.

### Who Should Use This System?

This system is perfect for:
- **Project Managers & Admins**: Who need to manage multiple distinct areas of responsibility.
- **Developers & Researchers**: Who have deeply nested data but need quick access.
- **Teams**: To ensure everyone saves files in the exact same place.
- **Organized Minds**: People who love having a specific "place for everything."

### How It Works: A Practical Example

The system divides everything into 10 Areas, 10 Categories per Area, and then IDs for specific items.

**Structure:**
- `10-19 Finance` (Area)
    - `11 Tax` (Category)
        - `11.01 2023 Returns` (ID)
        - `11.02 2024 Returns` (ID)

**Example Scenario:**
You need to save your tax return for the year 2024.

1.  Identify the Area: **Finance** (10-19).
2.  Identify the Category: **Tax** (11).
3.  Identify (or create) the ID: **2024 Returns** (11.02).
4.  Navigate to `10-19 Finance/11 Tax/11.02 2024 Returns/`.
5.  Save the file as `2024_Tax_Return_Final.pdf`.

You never have to wonder "where did I put that tax file?" again—it's always in `11.02`.

## Download and Setup

You can download the setup scripts and a sample folder structure below.

{{< download_button file="downloads/johnny_decimal.zip" text="Download Scripts & Example System (.zip)" >}}

### How to Use

1. **Download** the zip file above.
2. **Extract** the contents to a folder on your computer.
3. **Run the script**:
   - **Windows**: Double-click the `create_johnny_decimal.bat` file.
   - **macOS / Linux**: Open a terminal, navigate to the extracted folder, make the script executable with `chmod +x create_johnny_decimal.sh`, and run it with `./create_johnny_decimal.sh`.
