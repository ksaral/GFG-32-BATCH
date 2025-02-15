#!/bin/bash

# Function to create a file
create_file() {
    read -p "Enter the filename to create: " filename
    touch "$filename"
    echo "File '$filename' created successfully!"
}

# Function to copy a file
copy_file() {
    read -p "Enter the source file: " src
    read -p "Enter the destination: " dest
    if [ -f "$src" ]; then
        cp "$src" "$dest"
        echo "File '$src' copied to '$dest' successfully!"
    else
        echo "Source file '$src' does not exist!"
    fi
}

# Function to move a file
move_file() {
    read -p "Enter the source file: " src
    read -p "Enter the destination: " dest
    if [ -f "$src" ]; then
        mv "$src" "$dest"
        echo "File '$src' moved to '$dest' successfully!"
    else
        echo "Source file '$src' does not exist!"
    fi
}

# Function to delete a file
delete_file() {
    read -p "Enter the filename to delete: " filename
    if [ -f "$filename" ]; then
        rm "$filename"
        echo "File '$filename' deleted successfully!"
    else
        echo "File '$filename' does not exist!"
    fi
}

# Function to list files
list_files() {
    ls -lah
}

# Display menu options
while true; do
    echo "Choose an option:"
    echo "1) Create a file"
    echo "2) Copy a file"
    echo "3) Move a file"
    echo "4) Delete a file"
    echo "5) List files"
    echo "6) Exit"
    read -p "Enter your choice (1-6): " choice

    case $choice in
        1) create_file ;;
        2) copy_file ;;
        3) move_file ;;
        4) delete_file ;;
        5) list_files ;;
        6) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice! Please enter a number between 1 and 6." ;;
    esac
done
