---
title: "Project-Based Filing System"
date: 2023-10-03
draft: false
---

# Project-Based Filing System

## **Philosophy**

### **Why Use It?**
The **Project-Based Filing System** organizes files around **specific tasks, goals, or initiatives**. This system is ideal for:
- **Task-oriented workflows** (e.g., product development, research, event planning).
- **Time-bound activities** (e.g., projects with deadlines, limited durations).
- **Collaborative work** where files are tightly coupled with a project’s lifecycle.

This system ensures that **all files related to a single project** are **easily accessible and managed together**, reducing the risk of misplaced documents.

### **Best For**
| **Use Case**               | **Example**                          | **Why?**                                  |
|----------------------------|---------------------------------------|------------------------------------------|
| Software Development       | Code repositories, design files       | Keep all project assets in one place.    |
| Research Projects          | Papers, datasets, notes                | Track progress and sources together.      |
| Event Planning             | Invitations, budgets, schedules        | Manage all event-related files.         |
| Home Renovation            | Contracts, permits, photos             | Centralize all project documentation.    |
| Writing a Book             | Chapters, research, outlines           | Organize creative and reference materials. |

### **When to Avoid It**
- If your workflow is **not project-focused** (e.g., general document storage).
- If projects are **long-term and evolving** (consider **Area-Based** or **Hybrid**).

---

## **Structure**

The Project-Based system uses a **flat or nested folder structure**, where each top-level folder represents a **single project**. Subfolders can be used for project phases, versions, or types of documents:

```
Project-Based/
  WebsiteRedesign/        # Project 1
    Design/               # Subcategory: Design files
      wireframes.pdf
      mockups/
    Development/          # Subcategory: Code
      src/
      docs/
    Meetings/             # Subcategory: Meeting notes
      2023-10-01_minutes.md
  Vacation2026/          # Project 2
    Itinerary/            # Subcategory: Plans
      flights.pdf
      hotels.pdf
    Photos/               # Subcategory: Media
      trip1/
      trip2/
  HomeRenovation/        # Project 3
    Contracts/            # Subcategory: Legal
    Permits/              # Subcategory: Government
    Photos/               # Subcategory: Before/After
```

### **Naming Conventions**
- **Project Names**: Use **descriptive, concise names** (e.g., `WebsiteRedesign`, not `Project1`).
- **Subfolders**: Use **plural nouns** (e.g., `Meetings/`, not `Meeting/`).
- **Avoid Special Characters**: Stick to alphanumeric names with underscores/hyphens (e.g., `My_Vacation_2026`).

---

## **How to Use**

### **Step 1: Generate the Structure**
Run the provided script to create the folder hierarchy for a new project:

```bash
./create_project_based.sh --project "WebsiteRedesign"
```

This will create a `Project-Based/WebsiteRedesign/` folder with common subcategories (e.g., `Design/`, `Development/`).

### **Step 2: Customize Project Templates**
Edit `create_project_based.sh` to add or modify subcategories:
```bash
# Example: Add a new subcategory for a research project
mkdir -p "Project-Based/ResearchProject/"
mkdir -p "Project-Based/ResearchProject/Datasets/"
mkdir -p "Project-Based/ResearchProject/Notes/"
mkdir -p "Project-Based/ResearchProject/Publications/"
```

### **Step 3: Organize Your Files**
1. Move all project-related files into the appropriate folder.
2. Use **consistent subfolder naming** across projects.

---

## **Pros and Cons**

| **Pros**                          | **Cons**                          |
|-----------------------------------|-----------------------------------|
| ✅ **Ideal for task-oriented workflows** | ❌ **Not scalable for many short-term projects** |
| ✅ **Keeps all project files in one place** | ❌ **Can become messy if projects overlap** |
| ✅ **Easy to archive completed projects** | ❌ **Requires discipline to maintain** |
| ✅ **Works well for collaborative work** | ❌ **Less flexible for non-project files** |

---

## **Customization**

### **Modify the Script**
Edit `create_project_based.sh` to:
- **Add new subcategories**: Append new `mkdir` commands for your project types.
- **Change root folder name**: Replace `Project-Based/` with `Tasks/` or similar.
- **Add project templates**: Create predefined structures for common project types (e.g., `Research/`, `Development/`).

### **Use Project Tags**
- **Tags**: Use tools like `exiftool` or `tagspell` to add metadata tags to files (e.g., `project:WebsiteRedesign`).
- **Symlinks**: Link files to multiple projects if they are relevant to multiple tasks.
  ```bash
  ln -s ~/Project-Based/WebsiteRedesign/Design/wireframes.pdf ~/QuickAccess/Design/
  ```

### **Automate with Scripts**
Use tools like `find` or `inotifywait` to automatically move files into project folders based on keywords or file types:
```bash
# Example: Move all PDFs with "website" in the name to the WebsiteRedesign project
find ~/Downloads -type f -name "*website*" -exec mv {} ~/Project-Based/WebsiteRedesign/Design/ \;
```

---

## **Alternatives**

| **System**               | **When to Use**                          | **Example**                          |
|--------------------------|---------------------------------------|--------------------------------------|
| **Area-Based**           | Topic-based organization.              | `Finances/`, `Health/`                 |
| **Chronological**        | Time-sensitive documents.            | `2023/10/05_Invoice.pdf`              |
| **Hybrid**               | Combine project-based and area-based.  | `Projects/WebsiteRedesign/Finances/`   |

---

## **Real-World Example: Software Development**

Suppose you are developing a new web application:

1. **Run the script**:
   ```bash
   ./create_project_based.sh --project "MyWebApp"
   ```

2. **Organize files**:
   ```
   Project-Based/
     MyWebApp/
       Design/
         wireframes.pdf
         mockups/
       Development/
         src/
           index.html
           style.css
         Docs/
           requirements.md
       Meetings/
         2023-10-01_minutes.md
   ```

3. **Search for design files**:
   ```bash
   find ~/Project-Based/MyWebApp -name "*design*"
   ```

---

## **Tools to Enhance This System**

1. **Project Management Tools**:
   - **Trello**, **Asana**, or **Notion** to track project milestones alongside file storage.
   - Sync file paths to your project boards for quick access.

2. **Version Control**:
   - Use **Git** to track changes in project files (e.g., code, documents).
   - Example `.gitignore` for project folders:
     ```gitignore
     # Ignore OS-specific files
     *.DS_Store
     Thumbs.db
     
     # Ignore temporary files
     *.tmp
     *.log
     ```

3. **Automated Backups**:
   - Sync project folders to **Dropbox**, **Google Drive**, or **Nextcloud** for backup and access across devices.
   - Example using `rsync`:
     ```bash
     rsync -av ~/Project-Based/ user@remote:/backups/Projects/
     ```

4. **Desktop Widgets**:
   - Use **Launchy**, **Alfred**, or **Spotlight** to quickly navigate to project folders.

---

## **Troubleshooting**

### **Issue: Too Many Projects**
**Solution**:
- **Archive completed projects**: Move old projects to an `Archive/` folder.
- **Use symlinks**: Link active projects to a `Current/` folder for quick access.

### **Issue: Files Are Hard to Find**
**Solution**:
- Use **symlinks** to create shortcuts to frequently accessed files.
- Implement a **search tool** like `fd` or `ripgrep`:
  ```bash
  fd "website" ~/Project-Based
  ```

### **Issue: Script Fails on Windows**
**Solution**: Use the `create_project_based.ps1` script:
```powershell
.\create_project_based.ps1 -Project "MyWebApp"
```

---

## **Further Reading**
- [Getting Things Done (GTD) Projects](https://gettingthingsdone.com/)
- [Agile Project Management](https://www.atlassian.com/agile)
- [Hugo Documentation for Project Pages](https://gohugo.io/content-management/front-matter/)