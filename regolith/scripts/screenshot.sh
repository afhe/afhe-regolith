#!/bin/bash

screenshot_file=/tmp/screenshot.png

function notify_failed {
    notify-send -a gnome-screenshot -u low "Screenshot failed."
}
# Take screenshot
gnome-screenshot -a -f "$screenshot_file" && xclip -selection clipboard -t image/png -i "$screenshot_file" || notify_failed
rm "$screenshot_file"