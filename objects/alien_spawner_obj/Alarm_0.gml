MAX_ALIEN_SIZE = 288;


//create an alien object, and leave room for it to grow.
instance_create_layer(irandom(894 - MAX_ALIEN_SIZE),
					  irandom(room_height - MAX_ALIEN_SIZE), 
					  "Instances",
					  alien_obj);

//reset the alarm.
alarm[0] = irandom_range(SPAWN_LOW, SPAWN_HIGH);
