
//when the player presses enter
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
	
	if(string_lower(keyboard_string) == command_lights){
	
		layer_background_sprite(layer_background_get_id("Background"), background_ship_spr);
		darkness_timer_obj.dark = false;
		darkness_timer_obj.minutes = irandom_range(0,1);
		darkness_timer_obj.seconds = irandom_range(0,59);
		darkness_timer_obj.decisec = irandom_range(0,9);
		darkness_timer_obj.alarm[0] = 6;
	
	}
	
	if(string_lower(keyboard_string) == command_takeoff && win_timer_obj.takeoff_ready == true){

		audio_play_sound(takeoff_countdown_sound,10,false);
		alarm[1] = 14 * 60;
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
	
	
		// add the line to history (list)
	if (keyboard_string != "")
	{
	    ds_list_add(terminal_lines, keyboard_string);
	}

	// reset the input
	keyboard_string = "";

	// keep only what fits on screen (delete oldest)
	while (ds_list_size(terminal_lines) > max_lines)
	{
	    ds_list_delete(terminal_lines, 0);
	}

	// optional debug
	if (ds_list_size(terminal_lines) > 0)
	{
	    show_debug_message(ds_list_find_value(terminal_lines, ds_list_size(terminal_lines) - 1));
	}


	
}