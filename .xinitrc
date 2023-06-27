echo 96000 > /sys/class/backlight/intel_backlight/brightness
setxkbmap br
xset r rate 125 35
dwmblocks &
dunst &
picom --config /dev/null --backend glx --vsync &
nitrogen --restore
discord --start-minimized &
telegram-dekstop -startintray &
dwm
