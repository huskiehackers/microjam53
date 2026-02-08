if global.healthbar <=90 && global.healthbar>=70
{
	draw_sprite(five_health_spr,0,0,0)
}
if global.healthbar <=70 && global.healthbar>=52
{
	draw_sprite(four_health_spr,0,0,0)
}
if global.healthbar <=50 && global.healthbar>=40
{
	draw_sprite(three_health_spr,0,0,0)
}
if global.healthbar <=40 && global.healthbar>=20
{
	draw_sprite(two_health_spr,0,0,0)
}
if global.healthbar <=20 && global.healthbar>=0
{
	draw_sprite(one_health_spr,0,0,0)
}