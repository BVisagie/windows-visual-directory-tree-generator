@echo off
setlocal enabledelayedexpansion

:: Initialize counter variables
set /a folderCount=-1  :: Initialize to -1 to avoid counting the root folder
set /a fileCount=0

:: Prompt for directory to scan
set /P "inputdir=Enter the directory you'd like to scan: "
if not exist "%inputdir%" (
    echo Directory does not exist.
    exit /b 1
)

:: Ask for folder names to exclude
set /P "excludefolders=Enter comma-separated folder names to exclude (no spaces): "
set "excludefolders=,%excludefolders%,"  :: Pad commas for later search

:: Initialize variables
set "tab=│   "
set "branch=├── "
set "outputfile=visual_directory_structure.txt"

:: Start processing
call :processFolder "%inputdir%" ""

:: Write header and counts to output file
(
echo ==========================================================
echo Windows Visual Directory Tree Generator
echo ==========================================================
echo Directory structure generated on %date%%time%
echo Total number of folders: %folderCount%
echo Total number of files: %fileCount%
echo ==========================================================
echo.
) > %outputfile%

:: Append processed tree to output file
type temp_output.txt >> %outputfile%
del temp_output.txt

exit /b 0

:processFolder
set "folder=%~1"
set "prefix=%~2"

:: Increment the folder counter
set /a folderCount+=1

:: Process the current folder
echo %prefix%%branch%%~n1%~x1 >> temp_output.txt

:: Update prefix for deeper levels
set "newprefix=%prefix%%tab%"

:: List and count files in the current directory
for %%F in ("%folder%\*.*") do (
    echo %newprefix%%branch%%%~nxF >> temp_output.txt
    set /a fileCount+=1
)

:: Recursive call for subfolders (including hidden folders)
for /f "delims=" %%a in ('dir /b /ad "%folder%" 2^>nul') do (
    set "shouldSkip="
    set "tempString=!excludefolders:%%a=!"
    if "!tempString!" neq "!excludefolders!" (
        set "shouldSkip=yes"
    )
    if not defined shouldSkip (
        call :processFolder "%folder%\%%a" "%newprefix%"
    )
)

exit /b 0
