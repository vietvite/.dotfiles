[[ -n `xrandr | grep " connected" | grep 'HDMI-1'` ]] && sh $HOME/.screenlayout/hdmi_only.sh

# Set wallpaper
# [[ -f ~/.fehbg ]] && bash ~/.fehbg

# export TERM=rxvt-256color
export TERM=termite
picom &
libinput-gestures-setup start
redshift-gtk &
dropbox &
