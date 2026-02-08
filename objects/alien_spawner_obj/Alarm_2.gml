MAX_ALIEN_SIZE = 288;

//create an alien object, and leave room for it to grow.
instance_create_layer(irandom_range(460,670),370, 
					  "Enemies",
					  fly_alien_obj);

//reset the alarm.
//alarm[1] = irandom_range(SPAWN_TIME_LOW, SPAWN_TIME_HIGH);
