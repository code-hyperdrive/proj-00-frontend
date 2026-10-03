#!/usr/bin/env bash
# Rename image files by adding 'ram_sharan_singh_' prefix (underscores for spaces)
# This script processes all images under the ./images directory (including subfolders)
# Supports common web image formats.
find "./images" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.svg" -o -iname "*.gif" \) | while read -r file; do
  dir=$(dirname "$file")
  base=$(basename "$file")
  # Skip if already prefixed
  if [[ $base == ram_sharan_singh_* ]]; then
    continue
  fi
  mv "$file" "$dir/ram_sharan_singh_$base"
  echo "Renamed $file -> $dir/ram_sharan_singh_$base"
done
