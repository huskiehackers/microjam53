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
	audio_play_sound(flickering_lights_sound,10,false);
	dark = true;
}
if(minutes == 0 && seconds == 29 && decisec == 0){
	layer_background_sprite(layer_background_get_id("Background"), background_ship_spr);
	dark = false;
}
if(minutes == 0 && seconds == 28 && decisec == 0){
	layer_background_sprite(layer_background_get_id("Background"), background_ship_dark_spr);
	dark = true;
}
if(minutes == 0 && seconds == 27 && decisec == 5){
	layer_background_sprite(layer_background_get_id("Background"), background_ship_spr);
	dark = false;
}
//lights go out
if(minutes == 0 && seconds == 0 && decisec == 0){
	layer_background_sprite(layer_background_get_id("Background"), background_ship_dark_spr);
	dark = true;
}

alarm[0] = 6;