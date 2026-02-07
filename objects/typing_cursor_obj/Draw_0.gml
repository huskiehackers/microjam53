
//set the font
draw_set_font(terminal_font);


//draws the text
if(keyboard_string != ""){
	draw_text_colour(x, y-50, keyboard_string, c_lime, c_lime, c_lime, c_lime, 1)
}

draw_sprite(sprite_index,image_index,x + (font_width * string_width(keyboard_string)),y);
