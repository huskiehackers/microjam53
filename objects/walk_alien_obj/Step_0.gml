//max size must be less than 5,
//otherwise it creates a new object and loops forever.
MAX_SIZE = 4.05;

if(image_xscale <= MAX_SIZE && curr_state == alien_state.walking){
	image_xscale += 0.01 * alien_speed;
	image_yscale += 0.01 * alien_speed;
}
//have aliens move towards the line.
if(y < 540 && curr_state == alien_state.walking){
	y += .4 * alien_speed;	
}

// Aliens attacking
if (y >= 540 && curr_state != alien_state.hit && curr_state != alien_state.dying)
{
	curr_state = alien_state.attack;
	if (image_index == attack_impact)
	{
		// add hit damage
		global.healthbar -= 15;
	}
}

if(image_alpha < 1){
	image_alpha += .01;
}

if (keyboard_check_pressed(vk_space) and global.pistolammo >= 1 and place_meeting(x, y, reticle_obj) && curr_state != alien_state.dying)
{
	curr_state = alien_state.hit;
	alien_health -= 5;
	image_index = hit_start
}

if (alien_health <= 0 && curr_state != alien_state.dying)
{
	curr_state = alien_state.dying;
}

// Animation loop
if (curr_state == alien_state.walking)
{
	if (image_index < walk_start || image_index > walk_end)
	{
		image_index = walk_start;
	}
}
else if (curr_state == alien_state.attack)
{
	if (image_index < attack_start || image_index > attack_end)
	{
		image_index = attack_start;
	}
}
else if (curr_state == alien_state.hit)
{
	if (image_index < hit_start || image_index > hit_end)
	{
		image_index = hit_start;
	}
	
	if (image_index >= hit_end)
	{
		curr_state = alien_state.walking;
	}
}
else if (curr_state == alien_state.dying)
{
	if (image_index < dying_start || image_index > dying_end)
	{
		image_index = dying_start;
		audio_play_sound(alien_death_sound,0,false);
	}
	
	if (image_index >= dying_end - 1)
	{
		instance_destroy(self);
	}
}