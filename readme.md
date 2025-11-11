# The Ultimate Filing System

This project provides a simple, yet powerful, filing system for your personal or professional documents. It's based on a hierarchical folder structure and a consistent naming convention that will help you organize your digital life.

## How to Use This System

Before creating the folders, we highly recommend reading through the documentation to understand the philosophy behind the system. This will help you use it effectively from day one.

[**Read the Full Documentation and Filing Flowchart &rarr;**](./docs/index.html)

## How to Get Your Filing Cabinet

To get started, you need to create the folder structure on your computer. Here are four easy ways to do it.

---

### Option 1: The Easiest Way (Download ZIP)

If you have Git installed, this is the quickest and easiest way to get started.

1.  **Clone the Repository:** Open a terminal and run the following command. This will download the project into a new folder called `filing-system`.

    ```bash
    git clone https://github.com/The-Ultimate-Filing-System/filesystem-structures.git
    ```

2.  **Navigate into the Directory:**

    ```bash
    cd filing-system
    ```

3.  **Run the Script:** This will create all the necessary folders in your current directory.

1.  **Download the Code:** Click the green "Code" button at the top of the repository page, then click "Download ZIP".
2.  **Unzip the File:** Unzip the downloaded file. You'll have a folder likely named `filing-system-main`.
3.  **Open a Terminal:**
    *   **Mac/Linux:** Open your terminal application and use the `cd` command to navigate into the unzipped folder (e.g., `cd ~/Downloads/filing-system-main`).
    *   **Windows:** We recommend installing [Git for Windows](https://git-scm.com/download/win), which provides a tool called "Git Bash". Navigate into the unzipped folder, right-click, and select "Git Bash Here".
4.  **Run the Script:** In the terminal, type the following command and press Enter:
    ```bash
    ./create_folders.sh
    ```
5.  **Done!** A new folder named `Filing Cabinet` has been created inside the project folder. You can now move it to your Desktop, Documents, or anywhere you like.

---

### Option 2: The Quick Way (Copy & Paste)

1.  **Download the Code:** You can download the project as a ZIP file directly by clicking the link below:

    [**&darr; Download ZIP**](https://github.com/The-Ultimate-Filing-System/filesystem-structures/archive/refs/heads/main.zip)

    Alternatively, you can click the green "Code" button at the top of the repository page, then click "Download ZIP".

    ![Download ZIP](https://i.imgur.com/34Jb28s.png)

1.  **Open a Terminal:** Open a terminal on Mac/Linux, or "Git Bash" on Windows.
2.  **Navigate:** Go to the directory where you want to create your `Filing Cabinet` folder (e.g., `cd ~/Documents`).
3.  **Copy and Run the Command:** Click the button below to copy the folder creation command, then paste it into your terminal and press Enter.

<details>
<summary>Click to view and copy the command</summary>

```bash
mkdir -p "Filing Cabinet/000_Inbox/009_TRASH" "Filing Cabinet/010_Projects/011_Website_Redesign" "Filing Cabinet/010_Projects/012_Vacation_Planning_2026" "Filing Cabinet/010_Projects/013_Home_Renovation" "Filing Cabinet/010_Projects/019_TRASH" "Filing Cabinet/020_Areas/021_Finances/Budget" "Filing Cabinet/020_Areas/021_Finances/Receipts" "Filing Cabinet/020_Areas/021_Finances/Taxes" "Filing Cabinet/020_Areas/022_Health_&_Fitness/Workout_Logs" "Filing Cabinet/020_Areas/022_Health_&_Fitness/Recipes" "Filing Cabinet/020_Areas/022_Health_&_Fitness/Medical_Records" "Filing Cabinet/020_Areas/023_Professional_Development/Courses" "Filing Cabinet/020_Areas/023_Professional_Development/Certifications" "Filing Cabinet/020_Areas/023_Professional_Development/Performance_Reviews" "Filing Cabinet/020_Areas/024_Household/Maintenance_Records" "Filing Cabinet/020_Areas/024_Household/Utilities" "Filing Cabinet/020_Areas/024_Household/Vehicle_Information" "Filing Cabinet/020_Areas/029_TRASH" "Filing Cabinet/030_Documents/031_Identification" "Filing Cabinet/030_Documents/032_Contracts" "Filing Cabinet/030_Documents/033_Warranties_&_Manuals" "Filing Cabinet/030_Documents/034_Educational_Transcripts" "Filing Cabinet/030_Documents/039_TRASH" "Filing Cabinet/040_Resources/041_Programming_Languages" "Filing Cabinet/040_Resources/042_Marketing_Strategies" "Filing Cabinet/040_Resources/043_Photography_Techniques" "Filing Cabinet/040_Resources/044_Interesting_Articles" "Filing Cabinet/040_Resources/049_TRASH" "Filing Cabinet/050_Media/051_Photos" "Filing Cabinet/050_Media/052_Videos" "Filing Cabinet/050_Media/053_Music" "Filing Cabinet/050_Media/059_TRASH" "Filing Cabinet/090_Archive/Archived_Projects" "Filing Cabinet/090_Archive/Old_Job_Search_Materials" "Filing Cabinet/090_Archive/099_TRASH"
```

</details>

---

### Option 3: For Developers (Using Git)

If you have Git installed, you can clone this repository.

1.  **Clone the Repository:** Open a terminal and run the following command. This will download the project. Remember to replace `your-username` with your actual GitHub username if you've forked the repository.

    ```bash
    git clone https://github.com/your-username/filing-system.git
    ```

2.  **Navigate into the Directory:**

    ```bash
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/The-Ultimate-Filing-System/filesystem-structures/main/create_folders.sh)"
    ```
