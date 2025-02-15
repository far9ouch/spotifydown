#!/bin/bash

echo "Starting GitHub upload process..."

# Check if .git directory exists
if [ ! -d ".git" ]; then
    echo "Initializing new git repository..."
    git init
    git remote add origin https://github.com/far9ouch/spotifydown.git
    git branch -M main
fi

# Add all changes
git add .

# Get commit message from user
echo "Enter commit message:"
read commit_message

# Commit changes
git commit -m "$commit_message"

# Push to main branch
git push -u origin main

echo "Upload complete!"
read -p "Press enter to continue..." 