#!/bin/bash
set -x

WEBSITE_DIR="/var/www/website"

#CURRENT_VERSION=$(readlink "$WEBSITE_DIR/current")

folder_path="/var/www/website/current"
line=$(ls -l "$folder_path" | grep ^l)
CURRENT_VERSION=$(basename "$line")

Current_Website="$WEBSITE_DIR/current/index.html"

case "$CURRENT_VERSION" in
    Vikas)
        # Remove the current symlink
        sudo rm "$WEBSITE_DIR/current"
        # Create a new symlink pointing to the Vikas directory
        sudo ln -s "$WEBSITE_DIR/Vikas" "$WEBSITE_DIR/current"
        # Copy the content of Vikas index.html to the current index.html
        sudo cat "$WEBSITE_DIR/Vikas/index.html" > "$Current_Website"
        ;;
    Arjun)
        # Remove the current symlink
        sudo rm "$WEBSITE_DIR/current"
        # Create a new symlink pointing to the Arjun directory
        sudo ln -s "$WEBSITE_DIR/Arjun" "$WEBSITE_DIR/current"
        # Copy the content of Arjun index.html to the current index.html
        sudo cat "$WEBSITE_DIR/Arjun/index.html" > "$Current_Website"
        ;;
esac

# Log the switch
echo "Content switched to: $CURRENT_VERSION" >> /var/log/content_rotation.log

# Reload Nginx to apply changes
sudo systemctl reload nginx

