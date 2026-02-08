if(darkness_timer_obj.dark == true){
	//Draw Event
	shader_set(shdrBlackAndWhite);
	draw_sprite_ext(fly_alien_spr,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
	shader_reset();
}
else{
	draw_sprite_ext(fly_alien_spr,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}