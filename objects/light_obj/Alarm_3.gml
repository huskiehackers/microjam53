

randomise()

//call an alarm to turn the lights back on
alarm[4] = irandom_range(10, 100);


//change the background
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, background_ship_dark_spr);