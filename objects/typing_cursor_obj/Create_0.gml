
draw_spot_x = x;
draw_spot_y = y;


//create the queue
terminal_lines = ds_list_create();

line_h = 18;
input_y = y - 105;
ceiling_y = 40;


max_lines = floor((input_y - ceiling_y) / line_h);


/////////////////////COMMAND LIST

//gun
command_gun = "gun";

//ammo
command_ammo = "ammo";
global.ammo_box=0

cmd_history = ds_queue_create();

font_width = 1;
//oxygen
command_oxygen = "oxygen";







//if the terminal exists
if (instance_exists(terminal_obj))
{
	terminal = terminal_obj;	
}



x = terminal.x + 60;
y = terminal.y + 520;


keyboard_string = "";






