decisec -= 1;

if(decisec == -1){
	seconds -= 1;
	decisec = 9;
}
if(seconds == -1){
	minutes -= 1;
	seconds = 59;
}
if(minutes == 0 && seconds == 0 && decisec == 0){
	game_end(0);
}

alarm[0] = 6;