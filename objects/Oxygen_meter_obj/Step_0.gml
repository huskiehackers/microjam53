countdown -=1
if (healthbar==0)
{
	room_restart()	
}
if countdown == 0
{ 
	
	oxygendamagetimer  += delta_time
}
if oxygendamagetimer == 5000000
{
	healthbar -=1
	oxygendamagetimer = 0
}
