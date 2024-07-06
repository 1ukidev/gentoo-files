//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" Screen: ", "echo $(light -G)%", 10, 0},
    {"Bat: ", "upower -i $(upower -e | grep battery) | grep -E 'percentage' | awk '{print $2}'", 10, 0},
    {"Vol: ", "echo $(pulsemixer --get-volume | cut -d ' ' -f 1)%", 5, 0},
    {"Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g", 10, 0},
	{"", "date '+%b %d (%a) %I:%M%p'", 5, 0},
	{"", "echo 'dwm '", 0, 0}
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
