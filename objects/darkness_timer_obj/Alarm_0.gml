decisec -= 1;

if(decisec == -1){
	seconds -= 1;
	decisec = 9;
}
if(seconds == -1){
	minutes -= 1;
	seconds = 59;
}

//flicker the lights
if(minutes == 0 && seconds == 30 && decisec == 0){
		layer_background_sprite(layer_background_get_id("Background"), background_ship_dark_spr);
		layer_shader("Enemies", shdrBlackAndWhite);
}
if(minutes == 0 && seconds == 29 && decisec == 0){
		layer_background_sprite(layer_background_get_id("Background"), background_ship_spr);
		shader_reset();
}
//lights go out
if(minutes == 0 && seconds == 0 && decisec == 0){
	layer_background_sprite(layer_background_get_id("Background"), background_ship_dark_spr);
		layer_shader("Enemies", shdrBlackAndWhite);
}

alarm[0] = 6;