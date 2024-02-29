#!/bin/bash

cp dunstrc $HOME/.config/dunst/

pkill dunst

notify-send -u critical "Critical Test message"
notify-send -u normal "Normal Test message"
notify-send -u low "Low Test message"