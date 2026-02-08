if(darkness_timer_obj.dark == true){
	//Draw Event
	shader_set(shdrBlackAndWhite);
	draw_alien();
	shader_reset();
}
else{
	draw_alien();
}


function draw_alien()
{
	if (curr_state == alien_state.walking)
	{
		if (image_index == 7)
		{
			image_index = 1;
		}
	}
	else if (curr_state == alien_state.attack)
	{
	}
	else if (curr_state == alien_state.hit)
	{
	}
	else if (curr_state == alien_state.dying)
	{
	}
}