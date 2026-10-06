#!/bin/bash
# Organize files into category folders by extension.
set -euo pipefail

DIR="${1:-.}"
if [ ! -d "$DIR" ]; then
    echo "Error: directory not found: $DIR"
    exit 1
fi

cd "$DIR"
mkdir -p images documents archives audio video code scripts

move_to() {
    local category="$1"
    shift
    for f in "$@"; do
        if [ -f "$f" ]; then
            mv "$f" "$category/" && echo "  $f -> $category/"
        fi
    done
}

echo "Organizing files in $(pwd)..."
move_to images    *.png *.jpg *.jpeg *.gif *.webp *.svg *.bmp 2>/dev/null
move_to documents *.pdf *.doc *.docx *.txt *.md *.odt *.rtf 2>/dev/null
move_to archives  *.zip *.tar *.gz *.bz2 *.xz *.7z *.rar 2>/dev/null
move_to audio     *.mp3 *.wav *.flac *.ogg *.m4a *.aac 2>/dev/null
move_to video     *.mp4 *.mkv *.avi *.mov *.webm *.flv 2>/dev/null
move_to code      *.py *.js *.ts *.go *.rs *.c *.h *.sh *.rb *.lua *.java 2>/dev/null
echo "Done."
