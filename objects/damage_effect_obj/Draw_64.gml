if global.healthbar <=5 && global.healthbar>=4
{
	draw_sprite(five_health_spr,0,0,0)
}
if global.healthbar <=4 && global.healthbar>=3
{
	draw_sprite(four_health_spr,0,0,0)
}
if global.healthbar <=3 && global.healthbar>=2
{
	draw_sprite(three_health_spr,0,0,0)
}
if global.healthbar <=2 && global.healthbar>=1
{
	draw_sprite(two_health_spr,0,0,0)
}
if global.healthbar <=1 && global.healthbar>=0
{
	draw_sprite(one_health_spr,0,0,0)
}