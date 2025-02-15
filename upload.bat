@echo off
echo Starting GitHub upload process...

:: Check if .git directory exists
if not exist .git (
    echo Initializing new git repository...
    git init
    git remote add origin https://github.com/far9ouch/spotifydown.git
    git branch -M main
)

:: Add all changes
git add .

:: Get commit message from user
set /p commit_message=Enter commit message: 

:: Commit changes
git commit -m "%commit_message%"

:: Push to main branch
git push -u origin main

echo Upload complete!
pause 