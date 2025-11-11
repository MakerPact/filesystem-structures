# The Ultimate Filing System

This project provides a simple, yet powerful, filing system for your personal or professional documents. It's based on a hierarchical folder structure and a consistent naming convention that will help you organize your digital life.

A full explanation of the system and a flowchart are included in the `docs` folder. We highly recommend reading through the documentation to understand the philosophy behind the system.

## How to Get Your Filing Cabinet

To get started, you need to create the folder structure on your computer. Below are the easiest ways to do this for your operating system.

---

### **Option 1: Download and Run a Script**

This is the recommended method. All the scripts and a copy of the documentation and flowchart are included in the ZIP file.

[**&darr; Download the ZIP File**](https://github.com/MakerPact/filesystem-structures/archive/refs/heads/main.zip)

#### **Windows Users**

1.  **Download and Unzip:** Download and unzip the file.
2.  **Run the Batch File:** Double-click on `create_folders.bat`.
3.  **Approve the Script:** A PowerShell window will open. If prompted, press 'R' to run the script.
4.  **Done!** A new folder named `Filing Cabinet` has been created. You can now move it to your Desktop, Documents, or anywhere you like.

#### **Mac & Linux Users**

1.  **Download and Unzip:** Download and unzip the file.
2.  **Open a Terminal:** Navigate to the unzipped folder.
3.  **Run the Script:** In the terminal, type the following command and press Enter:
    ```bash
    ./create_folders.sh
    ```
4.  **Done!** A new folder named `Filing Cabinet` has been created.

---

### **Option 2: The One-Liner (Mac & Linux)**

If you're comfortable with the terminal, you can use this single command to create the folders without downloading anything first.

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/MakerPact/filesystem-structures/main/create_folders.sh)"
```

---

### **Option 3: Copy & Paste the Commands (All Systems)**

You can also create the folders by copying and pasting the commands below into your terminal (Mac/Linux) or PowerShell (Windows).

<details>
<summary>Click to view and copy the command</summary>

```bash
mkdir -p "Filing Cabinet/000_Inbox/009_TRASH" "Filing Cabinet/010_Projects/011_Website_Redesign" "Filing Cabinet/010_Projects/012_Vacation_Planning_2026" "Filing Cabinet/010_Projects/013_Home_Renovation" "Filing Cabinet/010_Projects/019_TRASH" "Filing Cabinet/020_Areas/021_Finances/Budget" "Filing Cabinet/020_Areas/021_Finances/Receipts" "Filing Cabinet/020_Areas/021_Finances/Taxes" "Filing Cabinet/020_Areas/022_Health_&_Fitness/Workout_Logs" "Filing Cabinet/020_Areas/022_Health_&_Fitness/Recipes" "Filing Cabinet/020_Areas/022_Health_&_Fitness/Medical_Records" "Filing Cabinet/020_Areas/023_Professional_Development/Courses" "Filing Cabinet/020_Areas/023_Professional_Development/Certifications" "Filing Cabinet/020_Areas/023_Professional_Development/Performance_Reviews" "Filing Cabinet/020_Areas/024_Household/Maintenance_Records" "Filing Cabinet/020_Areas/024_Household/Utilities" "Filing Cabinet/020_Areas/024_Household/Vehicle_Information" "Filing Cabinet/020_Areas/029_TRASH" "Filing Cabinet/030_Documents/031_Identification" "Filing Cabinet/030_Documents/032_Contracts" "Filing Cabinet/030_Documents/033_Warranties_&_Manuals" "Filing Cabinet/030_Documents/034_Educational_Transcripts" "Filing Cabinet/030_Documents/039_TRASH" "Filing Cabinet/040_Resources/041_Programming_Languages" "Filing Cabinet/040_Resources/042_Marketing_Strategies" "Filing Cabinet/040_Resources/043_Photography_Techniques" "Filing Cabinet/040_Resources/044_Interesting_Articles" "Filing Cabinet/040_Resources/049_TRASH" "Filing Cabinet/050_Media/051_Photos" "Filing Cabinet/050_Media/052_Videos" "Filing Cabinet/050_Media/053_Music" "Filing Cabinet/050_Media/059_TRASH" "Filing Cabinet/090_Archive/Archived_Projects" "Filing Cabinet/090_Archive/Old_Job_Search_Materials" "Filing Cabinet/090_Archive/099_TRASH"
```

<div class="text-center mt-16">
        <a href="https://github.com/MakerPact/filesystem-structures" class="text-slate-400 hover:text-white">View on GitHub</a>
    </div>
</details>
