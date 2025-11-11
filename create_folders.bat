@echo off
REM This batch file executes the PowerShell script to create the folder structure.

REM It temporarily bypasses the execution policy to allow the script to run.
powershell.exe -ExecutionPolicy Bypass -File "%~dp0\create_folders.ps1"

REM Pause to keep the window open so the user can see the result.
pause
