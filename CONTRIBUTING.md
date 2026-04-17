# Contributing to Filesystem Structures

Thank you for contributing to **Filesystem Structures**! This project aims to provide automated, customizable, and well-documented filing systems for personal and professional use. Below are guidelines to ensure your contributions align with the project's goals and maintain high standards.

---

## **How to Contribute**

### **1. Reporting Issues**
- Use the [GitHub Issues](https://github.com/MakerPact/filesystem-structures/issues) tab to report bugs, suggest features, or request improvements.
- Include:
  - A clear title and description.
  - Steps to reproduce the issue (for bugs).
  - Screenshots or code snippets if applicable.

### **2. Suggesting Enhancements**
- If you have ideas for new filing system types, scripts, or improvements, open an **issue** or **pull request** with:
  - A detailed explanation of the enhancement.
  - Examples of how it would be used.
  - Mockups or sample code if possible.

### **3. Submitting Code Changes**
1. **Fork the repository** and clone your fork:
   ```bash
   git clone https://github.com/your-username/filesystem-structures.git
   cd filesystem-structures
   ```

2. **Create a new branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```
   - Use descriptive branch names (e.g., `feature/chronological-system`, `fix/error-handling`).

3. **Make your changes** and ensure:
   - Code follows the project's [coding standards](#coding-standards).
   - New scripts are tested and documented.
   - Documentation is updated (e.g., `README.md`, new Markdown files).

4. **Commit your changes** with meaningful messages:
   ```bash
   git add .
   git commit -m "feat: add chronological filing system documentation"
   git commit -m "fix: handle permission errors in create_folders.sh"
   ```
   - Use [conventional commit messages](https://www.conventionalcommits.org/):
     - `feat:` for new features.
     - `fix:` for bug fixes.
     - `docs:` for documentation changes.
     - `refactor:` for code improvements.

5. **Push to your fork** and open a **pull request** (PR):
   ```bash
   git push origin feature/your-feature-name
   ```
   - Link the PR to the relevant issue.
   - Describe the changes and their purpose.

---

## **Coding Standards**

### **General Rules**
1. **Consistency**: Follow the existing code style in the project.
2. **Readability**: Write clear, concise, and well-commented code.
3. **Cross-Platform Compatibility**: Ensure scripts work across Unix (Bash), Windows (PowerShell/Batch), and macOS.
4. **Error Handling**: Validate inputs and handle errors gracefully (e.g., permission issues, existing directories).

### **Script-Specific Rules**
#### **Bash Scripts (`.sh`)**
- Use `#!/bin/bash` shebang.
- Add a **description header** at the top:
  ```bash
  #!/bin/bash
  # Script: create_folders.sh
  # Purpose: Automates the creation of a filing system directory structure.
  # Usage: ./create_folders.sh [--dry-run]
  ```
- Use `set -e` to exit on errors.
- Avoid hardcoding paths; use variables or user prompts.

#### **PowerShell Scripts (`.ps1`)**
- Use `[CmdletBinding()]` for advanced functions.
- Add help comments:
  ```powershell
  <#
  .SYNOPSIS
    Creates a filing system directory structure.
  .DESCRIPTION
    Automates the creation of folders for organizing files.
  .EXAMPLE
    .\create_folders.ps1
  #>
  ```

#### **Batch Scripts (`.bat`)**
- Use `@echo off` to hide commands.
- Add a header comment:
  ```batch
  @echo off
  :: Script: create_folders.bat
  :: Purpose: Creates a filing system structure for Windows.
  ```

### **Python Scripts**
- If adding Python scripts (recommended for cross-platform compatibility), use:
  - `argparse` for command-line arguments.
  - `os` and `shutil` for file operations.
  - `logging` for error handling.

---

## **Adding New Filing System Documentation**

Each filing system should have its own Markdown file in the `content/` directory (e.g., `content/chronological.md`). Follow this template:

```markdown
---
title: "Chronological Filing System"
date: 2023-10-01
draft: false
---

# Chronological Filing System

## **Philosophy**
- **Why use it?**
  Ideal for time-sensitive documents (e.g., receipts, project timelines, medical records). Organizes files by date, making it easy to find items from a specific period.

- **Best for:**
  - Personal finance (receipts, invoices).
  - Project management (progress logs, deadlines).
  - Legal/medical documents (audit trails).

## **Structure**
```
YYYY/
  MM/
    DD_Description
```
- **Example:**
  `2023/10/05_Invoice_Q3.pdf`

## **How to Use**
1. Run the script to generate the structure:
   ```bash
   ./create_chronological.sh
   ```
2. Place files in the appropriate `YYYY/MM/DD_` folders.

## **Pros and Cons**
| **Pros**                          | **Cons**                          |
|-----------------------------------|-----------------------------------|
| Easy to find time-specific files. | Less intuitive for non-chronological data. |
| Works well for audit trails.      | Requires discipline to maintain. |

## **Customization**
- Modify `create_chronological.sh` to change the date format (e.g., `MM/YYYY/`).
- Add subfolders for categories (e.g., `2023/10/Receipts/`).

## **Alternatives**
- Use the **Area-Based** system if you prioritize categories over dates.
- Use the **Project-Based** system for task-oriented workflows.
```

---

## **Testing Your Changes**
1. **Manually test scripts** on different platforms (Unix/Windows/macOS).
2. **Validate documentation** by running the scripts and verifying the output.
3. **Add tests** (e.g., a `verify_structure.sh` script to check folder creation).

---

## **Code of Conduct**
Please follow the [Contributor Covenant](https://www.contributor-covenant.org/) when interacting with the community.

---

## **Questions?**
Open an issue or reach out to the maintainers!
