#!/bin/bash

screenshot_file=/tmp/screenshot.png

function notify_failed {
    notify-send -a gnome-screenshot -u low "Screenshot failed."
}
# Take screenshot
/usr/bin/gnome-screenshot -a -f "$screenshot_file" && /usr/bin/xclip -selection clipboard -t image/png -i "$screenshot_file" || notify_failed