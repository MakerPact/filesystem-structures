# The Ultimate Filing System

This project provides a simple, yet powerful, filing system for your personal or professional documents. It's based on a hierarchical folder structure and a consistent naming convention that will help you organize your digital life.

## How to Use This System

Before creating the folders, we highly recommend reading through the documentation to understand the philosophy behind the system. This will help you use it effectively from day one.

[**Read the Full Documentation and Filing Flowchart &rarr;**](./docs/index.html)

## Setting Up Your Filing Cabinet

To get started, you need to create the folder structure on your computer. Here are three easy ways to do it.

---

### Option 1: For Developers (Using Git)

If you have Git installed, this is the quickest and easiest way to get started.

1.  **Clone the Repository:** Open a terminal and run the following command. This will download the project into a new folder called `filing-system`.

    ```bash
    git clone https://github.com/your-username/filing-system.git
    ```

2.  **Navigate into the Directory:**

    ```bash
    cd filing-system
    ```

3.  **Run the Script:** This will create all the necessary folders in your current directory.

    ```bash
    ./create_folders.sh
    ```

---

### Option 2: Download a ZIP File (Easy)

This is a great option if you don't use Git.

1.  **Download the Code:** Click the green "Code" button at the top of the repository page, then click "Download ZIP".

    ![Download ZIP](https://i.imgur.com/34Jb28s.png)

2.  **Unzip the File:** Unzip the downloaded file. You'll have a folder named `filing-system-main`.

3.  **Open a Terminal:**
    *   **Windows:** Navigate into the `filing-system-main` folder, right-click, and select "Open in Terminal" or "PowerShell".
    *   **Mac/Linux:** Open your terminal application and use the `cd` command to navigate into the `filing-system-main` folder (e.g., `cd ~/Downloads/filing-system-main`).

4.  **Run the Script:** Now that you're in the correct folder, run the script:

    ```bash
    ./create_folders.sh
    ```

---

### Option 3: Copy and Paste the Commands (Quickest)

If you just want the folders and don't need any of the project files, you can copy and paste the commands directly into your terminal.

1.  **Create a Main Folder:** First, create the main folder where you want your filing system to live (e.g., `MyDocuments`).

2.  **Open a Terminal:** Open a terminal and navigate into your newly created folder.

3.  **Copy and Run the Commands:** Click the button below to copy all the folder creation commands, then paste them into your terminal and press Enter.

<details>
<summary>Click to view and copy all folder creation commands</summary>

```bash
mkdir -p "000_Inbox/009_TRASH"
mkdir -p "010_Projects/011_Website_Redesign"
mkdir -p "010_Projects/012_Vacation_Planning_2026"
mkdir -p "010_Projects/013_Home_Renovation"
mkdir -p "010_Projects/019_TRASH"
mkdir -p "020_Areas/021_Finances/Budget"
mkdir -p "020_Areas/021_Finances/Receipts"
mkdir -p "020_Areas/021_Finances/Taxes"
mkdir -p "020_Areas/022_Health_&_Fitness/Workout_Logs"
mkdir -p "020_Areas/022_Health_&_Fitness/Recipes"
mkdir -p "020_Areas/022_Health_&_Fitness/Medical_Records"
mkdir -p "020_Areas/023_Professional_Development/Courses"
mkdir -p "020_Areas/023_Professional_Development/Certifications"
mkdir -p "020_Areas/023_Professional_Development/Performance_Reviews"
mkdir -p "020_Areas/024_Household/Maintenance_Records"
mkdir -p "020_Areas/024_Household/Utilities"
mkdir -p "020_Areas/024_Household/Vehicle_Information"
mkdir -p "020_Areas/029_TRASH"
mkdir -p "030_Documents/031_Identification"
mkdir -p "030_Documents/032_Contracts"
mkdir -p "030_Documents/033_Warranties_&_Manuals"
mkdir -p "030_Documents/034_Educational_Transcripts"
mkdir -p "030_Documents/039_TRASH"
mkdir -p "040_Resources/041_Programming_Languages"
mkdir -p "040_Resources/042_Marketing_Strategies"
mkdir -p "040_Resources/043_Photography_Techniques"
mkdir -p "040_Resources/044_Interesting_Articles"
mkdir -p "040_Resources/049_TRASH"
mkdir -p "050_Media/051_Photos"
mkdir -p "050_Media/052_Videos"
mkdir -p "050_Media/053_Music"
mkdir -p "050_Media/059_TRASH"
mkdir -p "090_Archive/Archived_Projects"
mkdir -p "090_Archive/Old_Job_Search_Materials"
mkdir -p "090_Archive/099_TRASH"
```

</details>
