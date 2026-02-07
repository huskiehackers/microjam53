
event0_called = true;

while (lights_flickering && counter >0)
{
	
//change the background to dark mode

if ( counter == counter_base * (1/3) || counter == 0 )
{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, background_ship_dark_spr);
}
	


	
//change the background to light mode
else if (counter == counter_base || counter == counter_base * (2/3) )
{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, background_ship_dark_spr);
}
	
	
}
