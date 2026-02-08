// Gun movement
x = start_x + reticle_obj.x * 0.1;
y = start_y + reticle_obj.y * 0.05;



if (global.shot_fired)
{
	curr_state = gun_state.shooting;
}

if (global.reload_event)
{
	curr_state = gun_state.reloading;
}

// Animation loop
if (curr_state == gun_state.idle)
{
	image_index = idle_frame;
}
else if (curr_state == gun_state.shooting)
{
	if ((image_index < shooting_start || image_index > shooting_end) || global.shot_fired)
	{
		global.shot_fired = false;
		image_index = shooting_start;
	}
	
	if (image_index >= shooting_end)
	{
		curr_state = gun_state.idle;
	}
}
else if (curr_state == gun_state.reloading)
{
	if (image_index < reloading_start || image_index > reloading_end)
	{
		image_index = reloading_start;
	}
	
	if (image_index >= reloading_end - 1)
	{
		global.reload_event = false;
		curr_state = gun_state.idle;
	}
}