#!/bin/bash
printf 'script started' | systemd-cat -t check-battery #write to log when script is called
BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` > 00:30:00 ]] ; then
        DISPLAY=:0 /usr/bin/notify-send -u "Low Battery" "$BATTINFO"
fi
