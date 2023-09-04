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
   ├── apache-maven-3.9 
   │   ├── LICENSE 
   │   ├── NOTICE 
   │   ├── README.txt 
   │   ├── bin 
   │   │   ├── m2.conf 
   │   │   ├── mvn 
   │   │   ├── mvn.cmd 
   │   │   ├── mvnDebug 
   │   │   ├── mvnDebug.cmd 
   │   │   ├── mvnyjp 
   │   ├── boot 
   │   │   ├── plexus-classworlds-2.7.0.jar 
   │   │   ├── plexus-classworlds.license 
   │   ├── conf 
   │   │   ├── settings.xml 
   │   │   ├── toolchains.xml 
   │   │   ├── logging 
   │   │   │   ├── simplelogger.properties 
   │   ├── lib 
   │   │   ├── aopalliance-1.0.jar 
   │   │   ├── aopalliance.license 
   │   │   ├── commons-cli-1.5.0.jar 
   │   │   ├── commons-cli.license 
   │   │   ├── commons-codec-1.11.jar 
   │   │   ├── commons-codec.license 
   │   │   ├── commons-lang3-3.12.0.jar 
   │   │   ├── commons-lang3.license 
   │   │   ├── failureaccess-1.0.1.jar 
   │   │   ├── failureaccess.license 
   │   │   ├── guava-31.1-jre.jar 
   │   │   ├── guava.license 
   │   │   ├── guice-5.1.0.jar 
   │   │   ├── guice.license 
   │   │   ├── httpclient-4.5.14.jar 
   │   │   ├── httpclient.license 
   │   │   ├── httpcore-4.4.16.jar 
   │   │   ├── httpcore.license 
   │   │   ├── jansi-2.4.0.jar 
   │   │   ├── jansi.license 
   │   │   ├── javax.annotation-api-1.3.2.jar 
   │   │   ├── javax.annotation-api.license 
   │   │   ├── javax.inject-1.jar 
   │   │   ├── javax.inject.license 
   │   │   ├── jcl-over-slf4j-1.7.36.jar 
   │   │   ├── jcl-over-slf4j.license 
   │   │   ├── maven-artifact-3.9.3.jar 
   │   │   ├── maven-builder-support-3.9.3.jar 
   │   │   ├── maven-compat-3.9.3.jar 
   │   │   ├── maven-core-3.9.3.jar 
   │   │   ├── maven-embedder-3.9.3.jar 
   │   │   ├── maven-model-3.9.3.jar 
   │   │   ├── maven-model-builder-3.9.3.jar 
   │   │   ├── maven-plugin-api-3.9.3.jar 
   │   │   ├── maven-repository-metadata-3.9.3.jar 
   │   │   ├── maven-resolver-api-1.9.13.jar 
   │   │   ├── maven-resolver-connector-basic-1.9.13.jar 
   │   │   ├── maven-resolver-impl-1.9.13.jar 
   │   │   ├── maven-resolver-named-locks-1.9.13.jar 
   │   │   ├── maven-resolver-provider-3.9.3.jar 
   │   │   ├── maven-resolver-spi-1.9.13.jar 
   │   │   ├── maven-resolver-transport-file-1.9.13.jar 
   │   │   ├── maven-resolver-transport-http-1.9.13.jar 
   │   │   ├── maven-resolver-transport-wagon-1.9.13.jar 
   │   │   ├── maven-resolver-util-1.9.13.jar 
   │   │   ├── maven-settings-3.9.3.jar 
   │   │   ├── maven-settings-builder-3.9.3.jar 
   │   │   ├── maven-shared-utils-3.3.4.jar 
   │   │   ├── maven-slf4j-provider-3.9.3.jar 
   │   │   ├── org.eclipse.sisu.inject-0.3.5.jar 
   │   │   ├── org.eclipse.sisu.inject.license 
   │   │   ├── org.eclipse.sisu.plexus-0.3.5.jar 
   │   │   ├── org.eclipse.sisu.plexus.license 
   │   │   ├── plexus-cipher-2.0.jar 
   │   │   ├── plexus-cipher.license 
   │   │   ├── plexus-component-annotations-2.1.0.jar 
   │   │   ├── plexus-component-annotations.license 
   │   │   ├── plexus-interpolation-1.26.jar 
   │   │   ├── plexus-interpolation.license 
   │   │   ├── plexus-sec-dispatcher-2.0.jar 
   │   │   ├── plexus-sec-dispatcher.license 
   │   │   ├── plexus-utils-3.5.1.jar 
   │   │   ├── plexus-utils.license 
   │   │   ├── slf4j-api-1.7.36.jar 
   │   │   ├── slf4j-api.license 
   │   │   ├── wagon-file-3.5.3.jar 
   │   │   ├── wagon-http-3.5.3.jar 
   │   │   ├── wagon-http-shared-3.5.3.jar 
   │   │   ├── wagon-provider-api-3.5.3.jar 
   │   │   ├── ext 
   │   │   │   ├── README.txt 
   │   │   │   ├── hazelcast 
   │   │   │   │   ├── README.txt 
   │   │   │   ├── redisson 
   │   │   │   │   ├── README.txt 
   │   │   ├── jansi-native 
   │   │   │   ├── README.txt 
   │   │   │   ├── Windows 
   │   │   │   │   ├── x86 
   │   │   │   │   │   ├── jansi.dll 
   │   │   │   │   ├── x86_64 
   │   │   │   │   │   ├── jansi.dll 
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

- 🛠️ Special thanks to ChatGPT for helping with the script. :wink:
