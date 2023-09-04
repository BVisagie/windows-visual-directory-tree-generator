# Windows Visual Directory Tree Generator

## Description

The `Windows Visual Directory Tree Generator` is a Windows Batch Script (.bat) designed to create a visual representation of a directory tree structure. It scans the given directory and its subdirectories to list files and folders, skipping specified folders if needed.

### Features

- Count the total number of folders and files.
- Output the directory structure in a tree-like format.
- Exclude specific folders from the scan.
- Generate a text file (`visual_directory_structure.txt`) containing the directory tree structure and the summary.

## How to Use

1. **Download the Script**: Download the `Windows Visual Directory Tree Generator.bat` script and place it in any directory.

2. **Run the Script**: Double-click the .bat file to run it, or run it from the command prompt.

3. **Enter the Directory**: You will be prompted to enter the directory you would like to scan. Provide the absolute path of the directory.

   ```bash
   Enter the directory you would like to scan: C:\Users\YourUsername\Documents
   ```

4. **Enter Folders to Exclude**: Next, you will be asked to provide a comma-separated list of folder names to exclude from the scan (no spaces between commas and folder names).

   ```bash
   (Optional) Enter comma-separated folder names to exclude (no spaces): folder1,folder2
   ```

5. **Check the Output**: Once the script finishes running, it will create a file called `visual_directory_structure.txt` in the same directory where the script is located. This file contains the directory structure and summary details.

## Output Format

The output file will have the following sections:

1. **Header**: Information about the script and when the directory structure was generated.

   ```
   ==========================================================
   Windows Visual Directory Tree Generator
   ==========================================================
   Directory structure generated on Fri 09/04/2023 10:00:00.00
   Total number of folders: 10
   Total number of files: 50
   ==========================================================
   ```

2. **Directory Structure**: A tree-like structure representing the directory and subdirectories.

   ```
   ├── Documents
   │   ├── Work
   │   └── Personal
   ├── Photos
   │   ├── 2021
   │   └── 2022
   └── Videos
   ```

## Requirements

- Windows operating system
- Command Prompt

## Limitations

- The script doesn't handle file/folder names with special characters effectively.
- Limited to the performance and capabilities of a Windows Batch Script.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

* Bernard Visagie

## Acknowledgments

- 🛠️ Special thanks to ChatGPT for helping with the script.
