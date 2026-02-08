
draw_spot_x = x;
draw_spot_y = y;


//create the queue
terminal_lines = ds_list_create();
terminal_lines_mini = ds_list_create();

//values for large terminal
line_h = 45;
input_y = y - 105;
ceiling_y = 40;


//values for mini terminal
line_h_mini = 15;
input_y_mini = y - 105;
ceiling_y_mini = 450;


font_width = 1;


max_lines = floor((input_y - ceiling_y) / line_h);


/////////////////////COMMAND LIST

//gun
command_gun = "gun";

//ammo
command_ammo = "ammo";
global.ammo_box=0

//oxygen
command_oxygen = "oxygen";

command_lights = "lights";

command_takeoff = "takeoff";



//if the terminal exists
if (instance_exists(terminal_obj))
{
	terminal = terminal_obj;	
}





keyboard_string = "";






