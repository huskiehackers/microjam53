
//set the font
draw_set_font(terminal_font);


//draws the text in all CAPS
draw_text(x, y, string_upper(keyboard_string));
draw_text_colour(x, y, string_upper(keyboard_string), c_lime, c_lime, c_lime, c_lime, 1)