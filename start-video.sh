#!/bin/bash
# Find all video files in removable media: https://stackoverflow.com/a/29445089
# Use --mime-type instead of --media-type, add sed to wrap filenames in quotes
VIDEOS=$(find "/media/$USER" -type f -print0 | xargs -0 file --mime-type | egrep 'image|video' | cut -f1 -d : | sed 's/.*/"&"/');
echo "Starting ${VIDEOS} ...";
echo ${VIDEOS} | xargs vlc --fullscreen --loop --no-video-title-show;
