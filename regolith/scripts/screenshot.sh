#!/bin/bash

screenshot_file=/tmp/screenshot.png

function notify_failed() {
    notify-send -a "$1" -u low "$2"
}
# Take screenshot
gnome_errors=$(gnome-screenshot -acf "$screenshot_file") 
if [[ ${#gnome_errors} -gt 0 ]]; then
    notify_failed "gnome-screenshot" "$gnome_errors"
fi

if [[ -e "$screenshot_file" ]]; then
    cat "$screenshot_file" |  xclip -i -selection clipboard -target image/png || notify_failed "xclip" "Failed"
    rm "$screenshot_file"
fi 