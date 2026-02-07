if (keyboard_check_pressed(vk_enter))
{
	
	
	//if the player typed the gun command
	//string_lower casts the characters to lowercase to
	//remove case sensitivity
	if ( string_lower(keyboard_string) == command_gun)
	{
		terminal_obj.x = -50;
	}
	
	
	
	//if the player typed the ammo command
	//string_lower casts the characters to lowercase to
	//remove case sensitivity
	if ( string_lower(keyboard_string) == command_ammo and global.ammo_box<=3)
	{
		global.ammo_box+=1
		show_debug_message(global.ammo_box)
	}
	
	
	
	//reset the string to empty on enter
	keyboard_string = "";
	
}