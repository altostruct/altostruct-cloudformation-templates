CURRENT_DIR=$(dirname "$0")
STACKS_FOLDER=$CURRENT_DIR/../src

# Config for bash
set -e 
set -o pipefail


# Loop through files in the directory
for file_path in "$STACKS_FOLDER"/*; do
    if [ -f "$file_path" ]; then
        # Extract the numeric prefix from the file name
        file_name=$(basename "$file_path")
        numeric_prefix="${file_name%%_*}"
        file_suffix="${file_name#*_}"

        # Check if the filename contains ".g.yml"
        if [[ "$file_name" == *".g.yml"* ]]; then
            continue
            echo "Skipping file: $filename (contains .g.yml)"
        fi

        # Check if the numeric prefix is a valid number
        if [[ "$numeric_prefix" =~ ^[0-9]+$ ]]; then
            # Remove .yml extension from file_suffix if it exists
            file_suffix="${file_suffix%.yml}"
            file_name="${file_name%.yml}"

      
            # Deploy the file based on its numeric prefix
            echo "Deploying the file $file_name with the name: $file_suffix"

            # Add your deployment logic here, e.g., using AWS CLI or other tools
            $CURRENT_DIR/deploy-stack.sh $STACKS_FOLDER/$file_name $file_suffix

        else
            echo "Skipping $file_name (Invalid Numeric Prefix)"
        fi
    fi
done

