#!/bin/bash

function notify() {
    notify-send -a "$1" -u normal "$2"
}

gnome-screenshot -acf /tmp/test && cat /tmp/test | 
    xclip -i -selection clipboard -target image/png && 
    notify "screenshot" "Captured" || 
    notify "screenshot" "Failed"
