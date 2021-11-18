# dwm bar
while true; do
	DATE=$(date +"%a %d %h %H:%M")
	VOL=$(amixer get Master | awk -F'[][]' 'END{ print $2 }')
	CPUUSE=$(top -bn 1 | awk '/^%Cpu/ {print int($2 + $4 + $6)"%"}')
	MEMUSE=$(free -h | awk '(NR==2){ print $3 }')
	TEMPCPU=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)
	DISKFREE=$(df -h | awk '{ if ($6 == "/") print $4 }')
	NETSTATE=$(cat /sys/class/net/wlo1/operstate)
	UPTIME=`uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//' | sed 's/  / /g'`
	xsetroot -name "  CPU: $CPUUSE |  TEMP: $TEMPCPU |  /: $DISKFREE |  MEM: $MEMUSE | 墳 VOL: $VOL |  NET: $NETSTATE | 祥 UPTIME: $UPTIME |  $DATE |  $(whoami) |   Gentoo Linux | dwm 6.2 "
	sleep 2
done &

# Set wallpaper
nitrogen --restore &

# Notifications
dunst &

# Load Xresources
xrdb -merge ~/.Xresources &

# Start compositor
#picom --backend glx --vsync &
#picom --config ~/.config/picom/picom.conf &
xcompmgr &

# Hide cursor
xbanish &

dwm
