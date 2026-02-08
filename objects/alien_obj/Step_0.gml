//max size must be less than 5,
//otherwise it creates a new object and loops forever.
MAX_SIZE = 4.20;

if(image_xscale <= MAX_SIZE){
	image_xscale += 0.01 * alien_speed;
	image_yscale += 0.01 * alien_speed;
}
//have aliens move towards the line.
if(y < 550){
	y += .4 * alien_speed;	
}

if(image_alpha < 1){
	image_alpha += .01;
}

if (keyboard_check_pressed(vk_space) and global.pistolammo >= 1 and place_meeting(x, y, reticle_obj))
{
	alien_health -= 5
}

if (alien_health <= 0)
{
	instance_destroy(self)
}

