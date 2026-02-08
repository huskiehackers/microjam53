MAX_ALIEN_SIZE = 288;

//create an alien object, and leave room for it to grow.
instance_create_layer(irandom_range(460,670),420, 
					  "Enemies",
					  walk_alien_obj);

//reset the alarm.
alarm[0] = irandom_range(SPAWN_TIME_LOW, SPAWN_TIME_HIGH);
