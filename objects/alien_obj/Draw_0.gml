if(darkness_timer_obj.dark == true){
	//Draw Event
	shader_set(shdrBlackAndWhite);
	draw_self();
	shader_reset();
}
else{
	draw_self();
}