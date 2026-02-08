
//freeze sprite
if (image_index >= 43)
{
	image_index = 43;
	image_speed = 0;
}



//restart game
if ( keyboard_check(ord("F")))
{
	
	room_goto(Spaceship_room);
		
}