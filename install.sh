#!/bin/bash

# Define variables
REPO_URL="https://github.com/endalk200/tsm.git"
TEMP_DIR="~/tmp/tsm"
TARGET_DIR="$HOME/.config/tsm"

git clone "$REPO_URL" "$TEMP_DIR"

mkdir -p "$TARGET_DIR"
cd "$TEMP_DIR"
find . -name '.git' -prune -o -print | cpio -pdm "$TARGET_DIR"

# Remove the temporary directory
rm -rf "$TEMP_DIR"

echo "TSM has been installed to $TARGET_DIR"
echo "add the following into your .zsh file to source the script"
echo "source $HOME/.config/tsm/tsm.sh"
