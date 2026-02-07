MAX_ALIEN_SIZE = 288;

instance_create_layer(irandom(room_width - MAX_ALIEN_SIZE),
								irandom(room_height - MAX_ALIEN_SIZE), 
								"Instances",
								alien_obj);

alarm[0] = irandom_range(60 * 3, 60 * 5);