//max size must be less than 5,
//otherwise it creates a new object and loops forever.
MAX_SIZE = 4.05;

if(image_xscale <= MAX_SIZE){
	image_xscale += 0.01 * alien_speed;
	image_yscale += 0.01 * alien_speed;
}
//have aliens move towards the line.
if(y < 540 && curr_state == alien_state.walking){
	y += .4 * alien_speed;	
}
// Aliens attacking
else
{
	curr_state = alien_state.attack;
	if (image_index == attack_impact)
	{
		show_debug_message("ATTACK");
		// add hit damage
	}
}

if(image_alpha < 1){
	image_alpha += .01;
}

if (keyboard_check_pressed(vk_space) and global.pistolammo >= 1 and place_meeting(x, y, reticle_obj))
{
	curr_state = alien_state.hit;
	alien_health -= 5;
}

if (alien_health <= 0)
{
	audio_play_sound(alien_death_sound,0,false);
	instance_destroy(self)
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