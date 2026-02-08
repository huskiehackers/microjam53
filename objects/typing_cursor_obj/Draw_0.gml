
//set the font
draw_set_font(terminal_font);


//draws the text in all CAPS
if(keyboard_string != ""){
	draw_text_colour(x, y-55, string_upper(keyboard_string), c_lime, c_lime, c_lime, c_lime, 1)
}

draw_sprite(sprite_index,image_index,x + (font_width * (string_width(string_upper(keyboard_string))) -1),y);
//draws the text in all CAPS
//draw_text(x, y, string_upper(keyboard_string));
//draw_text_colour(x, y, string_upper(keyboard_string), c_lime, c_lime, c_lime, c_lime, 1)

var yy = input_y - line_h;
for (var i = ds_list_size(terminal_lines) - 1; i >= 0; i--)
{
    if (yy < ceiling_y) break;

    var s = ds_list_find_value(terminal_lines, i);
	var s_mini = ds_list_find_value(terminal_lines_mini, i);
	//draw text on the big terminal
    draw_text_colour(x, yy, string_upper(s), c_lime, c_lime, c_lime, c_lime, 1);
	
    yy -= line_h;
}



//draw mini
var yy_mini = input_y_mini - line_h_mini;
for (var i = ds_list_size(terminal_lines_mini) - 1; i >= 0; i--)
{
    if (yy_mini < ceiling_y_mini) break;

	var s_mini = ds_list_find_value(terminal_lines_mini, i);

	//draw the text on the little terminal
	draw_text_transformed_colour(920, yy_mini - 250, string_upper(s_mini), 0.3, 0.3,-0.9616555, c_lime, c_lime, c_lime, c_lime, 1 )
    yy_mini -= line_h_mini;
}


