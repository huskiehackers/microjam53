

//maximum characters per string
var MAX_CHARS = 15;

if (string_length(keyboard_string) > MAX_CHARS)
{
	keyboard_string = string_copy(keyboard_string, 1, MAX_CHARS);	
}



//when the player presses enter
if (keyboard_check_pressed(vk_enter) && terminal_obj.active == true)
{
	
	
	//print the last typed command onto the terminal
	terminal_print(">" + keyboard_string);
	

	
	// if player types medkit
	if  ( string_lower(keyboard_string) == command_medkit and medkit_cooldown==false)
	{
	have_medkit=true
	medkit_cooldown=true
	alarm[2] = 30*(game_get_speed(gamespeed_fps))
	show_debug_message(have_medkit)
	show_debug_message(medkit_cooldown)
	terminal_print("MEDKIT GRANTED - F TO USE");
	}

	//if the player typed the ammo command
	//string_lower casts the characters to lowercase to
	//remove case sensitivity
	if ( string_lower(keyboard_string) == command_ammo and global.ammo_box<=3)
	{
		global.ammo_box+=1
		show_debug_message(global.ammo_box)
		terminal_print("AMMUNITION GRANTED");
	}
	
	if(string_lower(keyboard_string) == command_lights){
	
		layer_background_sprite(layer_background_get_id("Background"), background_ship_spr);
		darkness_timer_obj.dark = false;
		darkness_timer_obj.minutes = irandom_range(0,1);
		darkness_timer_obj.seconds = irandom_range(0,59);
		darkness_timer_obj.decisec = irandom_range(0,9);
		darkness_timer_obj.alarm[0] = 6;
		terminal_print("LIGHTS RESTORED");
	
	}
	
	if(string_lower(keyboard_string) == command_takeoff && win_timer_obj.takeoff_ready == true){

		audio_play_sound(takeoff_countdown_sound,10,false);
		alarm[1] = 14 * 60;
		terminal_print("LAUNCH SEQUENCE INITATIED");
		terminal_print("PLEASE STAND BY");
	}
	
	
	if (string_lower(keyboard_string) == command_help)
	{
		terminal_print("List of commands:");
		terminal_print("HELP");
		terminal_print("AMMO");
		terminal_print("OXYGEN");
		terminal_print("LIGHTS");
		terminal_print("MEDKIT");
		terminal_print("LAUNCH");
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
			oxygen_meter_obj.alarm[0] = -1;
			terminal_print("OXYGEN REFILLED")
		}
		
		
	}
	
	
		// add the line to history (list)
	if (keyboard_string != "")
	{
	    //ds_list_add(terminal_lines, keyboard_string);
		//ds_list_add(terminal_lines_mini, keyboard_string);
	}

	// reset the input
	keyboard_string = "";

	// keep only what fits on screen (delete oldest)
	while (ds_list_size(terminal_lines) > max_lines)
	{
	    ds_list_delete(terminal_lines, 0);
	}
	
	
	
	// keep only what fits on screen (delete oldest)
	while (ds_list_size(terminal_lines_mini) > max_lines)
	{
	    ds_list_delete(terminal_lines_mini, 0);
	}




	
}