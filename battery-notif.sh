#!/bin/bash

export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

BATTERY_PATH="/sys/class/power_supply/BAT0"

if [ ! -d "$BATTERY_PATH" ]; then
    echo "Battery information not found."
    exit 1
fi

# Get the battery level
BATTERY_LEVEL=$(cat "$BATTERY_PATH/capacity")
# Get the battery status (charging / discharging)
CHARGING_STATUS=$(cat "$BATTERY_PATH/status")

if [[ "$BATTERY_LEVEL" -lt 10 && "$CHARGING_STATUS" = "Discharging" ]]; then
    # Send notification using dunst
    notify-send "Low Battery" "Your battery level is below 10%!" -u critical
fi

