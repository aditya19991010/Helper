#!/bin/bash

# Define the base directory for the analysis
BASE_DIR="Project_Name"

# Define the folder structure
FOLDERS=(
    "FOLDER1"
    "FOLDER1/FOLDER_1.1"
    "Folder2"
)

# Create base directory
mkdir -p "$BASE_DIR"

# Create each subdirectory
for folder in "${FOLDERS[@]}"; do
    mkdir -p "$BASE_DIR/$folder"
done

echo "Folder structure created successfully in $BASE_DIR."