seconds_str = string(seconds);
minutes_str = string(minutes);

if(seconds < 10){
	seconds_str = "0" + seconds_str;	
}

draw_text(1130/2,0, minutes_str + ":" + seconds_str);