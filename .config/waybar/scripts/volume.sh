#!/usr/bin/env bash

# Get current volume and mute state
vol=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

if [ "$mute" = "true" ]; then
    icon=" " # mute
elif [ "$vol" -eq 0 ]; then
    icon=" " # 0 volume
elif [ "$vol" -lt 50 ]; then
    icon=" " # low
else
    icon=" " # high
fi

echo "{\"text\": \"$icon $vol%\", \"tooltip\": \"Volume: $vol%\"}"
