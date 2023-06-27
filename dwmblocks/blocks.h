//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"Screen: ", "echo $(light -G)%", 10, 0},
  {"Vol: ", "amixer sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }'", 5, 0},
	{"Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g", 15, 0},
	{"", "date '+%b %d (%a) %I:%M%p'", 5, 0},
	{"", "echo 'dwm 6.4 '", 0, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
