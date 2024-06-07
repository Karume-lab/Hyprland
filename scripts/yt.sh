#!/bin/bash

# Check if a YouTube URL was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <youtube-url>"
    exit 1
fi

# Download video and English subtitles
yt-dlp -f 'bestvideo[height=1080]+bestaudio/best[height=1080]' $1

