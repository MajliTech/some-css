#!/bin/bash
mkdir -p min-css
for file in css/*.css; do
  filename=$(basename "$file" .css)
  minify "$file" > "min-css/$filename.min.css"
  echo "Minified '$file' to 'min-css/$filename.min.css'"
done
