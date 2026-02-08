if(!takeoff_ready){
	seconds_str = string(seconds);
	minutes_str = string(minutes);

	if(seconds < 10){
		seconds_str = "0" + seconds_str;	
	}

	draw_text(100,5, minutes_str + ":" + seconds_str);
}
else{
	draw_text(100,5, "0:00");
}