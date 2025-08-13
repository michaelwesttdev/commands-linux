#!/usr/bin/env bash
# ==================================================
# GIT COMMANDS CHEAT SHEET
# Save this file and run `bash git-commands.sh` to view
# ==================================================

echo "===================="
echo "📦 Git Commands Cheat Sheet"
echo "===================="

# --- CONFIGURATION ---
echo "
# Set global username
git config --global user.name 'Your Name'

# Set global email
git config --global user.email 'you@example.com'

# View all config
git config --list

# Set default editor
git config --global core.editor 'nano'
"

# --- REPOSITORY SETUP ---
echo "
# Initialize a new Git repository
git init

# Clone a repository (HTTPS)
git clone https://github.com/user/repo.git

# Clone a repository (SSH)
git clone git@github.com:user/repo.git
"

# --- REMOTES ---
echo "
# View remotes
git remote -v

# Add a remote
git remote add origin https://github.com/user/repo.git

# Change remote URL
git remote set-url origin git@github.com:user/repo.git

# Remove a remote
git remote remove origin
"

# --- BASIC WORKFLOW ---
echo "
# Check status
git status

# Add all changes
git add .

# Add specific file
git add filename.txt

# Commit changes
git commit -m 'Your commit message'

# Push changes to remote branch
git push origin main

# Pull latest changes
git pull origin main
"

# --- BRANCHING ---
echo "
# List branches
git branch

# Create new branch
git branch feature-branch

# Switch branch
git checkout feature-branch

# Create & switch branch
git checkout -b feature-branch

# Delete local branch
git branch -d branch-name

# Delete remote branch
git push origin --delete branch-name
"

# --- MERGING & REBASING ---
echo "
# Merge branch into current branch
git merge branch-name

# Rebase current branch onto another
git rebase main
"

# --- LOGS & HISTORY ---
echo "
# View commit history
git log

# Compact one-line log
git log --oneline --graph --all

# Show changes in a commit
git show commit-id
"

# --- UNDOING CHANGES ---
echo "
# Unstage a file
git reset filename.txt

# Reset last commit but keep changes
git reset --soft HEAD~1

# Reset last commit and discard changes
git reset --hard HEAD~1

# Checkout old commit/file
git checkout commit-id -- filename.txt
"

# --- STASHING ---
echo "
# Stash changes
git stash

# List stashes
git stash list

# Apply last stash
git stash apply

# Drop last stash
git stash drop
"

# --- TAGS ---
echo "
# Create tag
git tag v1.0.0

# Push tag to remote
git push origin v1.0.0

# List tags
git tag
"

# --- CLEANING ---
echo "
# Remove untracked files
git clean -f

# Remove untracked files & dirs
git clean -fd
"

echo "===================="
echo "✅ End of Git Commands List"
echo "===================="
