#!/bin/bash

# Create 10 CSS files
for i in {1..10}; do
   sudo echo "body { background-color: #$(head /dev/urandom | tr -dc A-F0-9 | head -c 6); }" > "style$i.css"
done

# Create 10 JS files
for i in {1..10}; do
    sudo echo "console.log('This is script $i');" > "script$i.js"
done

sudo echo "10 CSS and 10 JS files have been created."
