#!/bin/bash

# bash random.sh /path/to/music
# will open random album in iTunes (if the directory contains mp3s)

MUSIC=$(find $1 -type 'd' -print0 | xargs -0 ruby -e 'puts ARGV.shuffle.first')

if [[ -n $(find "$MUSIC" -name "*.mp3") ]]; then
  open -a iTunes "$MUSIC"
fi