#!/bin/bash

export DISPLAY=:0
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"

mosquitto_sub -h 192.168.1.170 -u "vicky" -P "thalia" -t "desktop/gaming/alerts" | while read -r payload; do
    # Trigger pop-up notification
    notify-send "Home Assistant" "$payload"
    # Trigger audio alert
    paplay ~/dinner.ogg
done
