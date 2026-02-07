


/////////////////////COMMAND LIST

//gun
command_gun = "gun";

//ammo
command_ammo = "ammo";

cmd_history = ds_queue_create();

font_width = 1;
//oxygen
command_oxygen = "oxygen";







//if the terminal exists
if (instance_exists(terminal_obj))
{
	terminal = terminal_obj;	
}



x = terminal.x + 40;
y = terminal.y + 60;


keyboard_string = "";






