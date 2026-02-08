if global.healthbar <=90
{
	draw_sprite(five_health_spr,0,0,0)
	display_get_width()
	display_get_height()
}
if global.healthbar <=70
{
	draw_sprite(four_health_spr,0,0,0)
	display_get_width()
	display_get_height()
}
if global.healthbar <=50
{
	draw_sprite(three_health_spr,0,0,0)
	display_get_width()
	display_get_height()
}
if global.healthbar <=40
{
	draw_sprite(two_health_spr,0,0,0)
	display_get_width()
	display_get_height()
}
if global.healthbar <=20
{
	draw_sprite(one_health_spr,0,0,0)
	display_get_width()
	display_get_height()
}
	//if player uses a medkit
	if keyboard_check_pressed(ord("F"))
	{
		global.healthbar= 100
		show_debug_message(global.healthbar)
		have_medkit=false
	}