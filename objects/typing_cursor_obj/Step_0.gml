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
	if ( string_lower(keyboard_string) == command_ammo)
	{
		terminal_obj.x = 50;	
	}
	
	
	//if the player typed the oxygen command
	//string_lower casts the characters to lowercase to
	//remove case sensitivity
	if ( string_lower(keyboard_string) == command_oxygen)
	{
		
		//if the terminal oxygen meter exists
		if ( instance_exists(oxygen_meter_obj))
		{
			//reset the countdown on the oxygen
			oxygen_meter_obj.countdown = oxygen_meter_obj.base_count_down
		}
		
		
	}
	
	
	//reset the string to empty on enter
	keyboard_string = "";
	
}