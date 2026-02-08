function terminal_print(_text){
	
	
	ds_list_add(terminal_lines, _text);
	ds_list_add(terminal_lines_mini, _text);
	
	
	//trim to visible lines
	while (ds_list_size(terminal_lines) > max_lines)
	{
		ds_list_delete(terminal_lines, 0);
		ds_list_delete(terminal_lines_mini, 0);
	}
	
}