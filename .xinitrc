echo 96000 > /sys/class/backlight/intel_backlight/brightness
setxkbmap br
xset r rate 200 30
dwmblocks &
dunst &
picom --config /dev/null --backend glx --vsync &
xbanish &
nitrogen --restore
discord --start-minimized &
telegram-dekstop -startintray &
dwm
