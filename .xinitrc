xrandr --output HDMI-A-0 --primary
setxkbmap br
xset r rate 250 35
xsetroot -name " dwm "
#pgrep -x picom > /dev/null || picom --config /dev/null --backend xrender --vsync &
nitrogen --restore
pgrep -x dwmblocks > /dev/null || dwmblocks &
pgrep -x dunst > /dev/null || dunst &
pgrep -x xbanish > /dev/null || xbanish &
dwm
