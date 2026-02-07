//max size must be less than 5,
//otherwise it creates a new object and loops forever.
MAX_SIZE = 4.5;

if(image_xscale != MAX_SIZE){
	image_xscale += 0.01 * alien_speed;
	image_yscale += 0.01 * alien_speed;

}
