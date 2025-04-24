#!/bin/bash
# Define the base directory for the analysis
PROJECT_NAME="BioinformaticsProject"
BASE_DIR=$(pwd)/$PROJECT_NAME

# Define the folder structure based on your requirements
FOLDERS=(
    "Raw_data"
    "Processed_data"
    "QC"
    "QC/raw"
    "QC/processed"
    "Analysis"
    "Result"
    "Script"
    "docs"
)

# Create base directory
mkdir -p "$BASE_DIR"

# Create each subdirectory
for folder in "${FOLDERS[@]}"; do
    mkdir -p "$BASE_DIR/$folder"
    echo "Created: $folder"
done

# Create README.md with project structure documentation
cat > "$BASE_DIR/README.md" << EOF
# $PROJECT_NAME

## Project Structure
- **Raw_data/**: Contains original unmodified data
- **Processed_data/**: Contains data after preprocessing steps
- **QC/**: Quality control results
  - **raw/**: QC for raw data
  - **processed/**: QC for processed data
- **Analysis/**: Analysis scripts and intermediate results
- **Result/**: Final analysis results and figures
- **Script/**: Reusable scripts and utilities
- **docs/**: Documentation files

## Project Description
[Add your project description here]

## Requirements
[Add your project requirements here]

## Usage
[Add usage instructions here]
EOF

echo "Folder structure created successfully in $BASE_DIR."
echo "README.md template has been created with basic documentation."
